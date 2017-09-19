using BridgeUtility.Entity;
using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Serialization;
using System.Xml.Xsl;
using BridgeUtility.Properties;
using Table = BridgeUtility.Entity.Table;

namespace BridgeUtility
{
    public partial class Form1 : Form
    {
        public const string BoardUrl = "http://www.zgqpw.com.cn/Tour/Board.aspx?tourid=6175&sectionID=2fe5785d-1615-4b29-bff4-12ebd38f9e0c&round=1&stanza=0&board=2";

        public const string TopPrefix = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">";

        private string alertMsg = "正在读取数据：{0}/{1} 节，{2}/{3} 副";
        private int sectionNo = 0;
        private int sectionCount = 0;
        private int boardNo = 0;
        private int boardCount = 0;
        private string team;
        private List<string> teamMembers;
        private List<Team> allTeams;
        string inputXmlPath = @"RoundTest.xml";
        string genXslt = @"Generator.xslt";
        string outPutName = @"Output.doc";

        public Form1()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            Control.CheckForIllegalCrossThreadCalls = false;
            allTeams = Utility.GetAllTeamName();
            BindTeam();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            (sender as Button).Enabled = false;
            //get team info
            if (string.IsNullOrWhiteSpace(comboBox1.SelectedItem.ToString()))
            {
                MessageBox.Show("请先选择队伍");
                return;
            }
            team = comboBox1.Text;
            //team = comboBox1.SelectedText;
            //team = "China Orange";

            teamMembers = textBox3.Text.Split(',').ToList();

            //new thread
            var thread = new Thread(new ThreadStart(StartWork));
            thread.Start();
        }

        private void StartWork()
        {
            //LoadBoardResults("");

            #region to be recover

            Log("校验地址");
            //validate
            if (string.IsNullOrWhiteSpace(textBox2.Text)
                || !Regex.IsMatch(textBox2.Text, @"(http://)?([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?")
                || !Uri.IsWellFormedUriString(textBox2.Text, UriKind.RelativeOrAbsolute)
                || !IsUrlValid(textBox2.Text))
            {
                MessageBox.Show(Resources.Form1_StartWork_地址非法);
                return;
            }
            Log("地址校验通过");

            var roundPageData = GetPageData(textBox2.Text);
            //get results url
            var urls = GetUrl(roundPageData);

            var rounds = urls.FindAll(p => p.Key.Contains("RoundResult.aspx?section="));
            Log("获取到总共" + rounds.Count + "节比赛数据");
            sectionCount = rounds.Count;
            SetCount();

            var roundList = new List<Round>();
            for (int i = 0; i < rounds.Count; i++)
            {
                sectionNo = i + 1;
                boardNo = 0;
                SetCount();
                var round = LoadRoundResults(rounds[i].Key);
                if (round != null)
                {
                    roundList.Add(round);
                }
            }

            if (roundList.Any())
            {
                var data = Utility.Serializer(typeof(List<Round>), roundList);
                File.WriteAllText(inputXmlPath, data);
                Log("数据读取成功，开始生成word.....");
                GenWord();
            }



            button1.Enabled = true;

            #endregion
        }

        private static bool IsUrlValid(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(new Uri(url));
            ServicePointManager.Expect100Continue = false;
            ((HttpWebResponse)request.GetResponse()).Close();
            var isExist = true;

            return isExist;
        }

        private static string GetPageData(string url)
        {
            var wc = new WebClient();
            var data = wc.DownloadData(url);
            return Encoding.UTF8.GetString(data);
        }

        ///<summary>   
        ///清除 获取到的 html 源码里面的所有标记   
        ///</summary>   
        ///<param name="html">html 源码</param>   
        ///<returns>已经去除后的字符串</returns>   
        public static string RemoveHtml(string html)
        {
            //删除脚本   
            html = Regex.Replace(html, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
            return html;
        }

        /// <summary>
        /// 正则表达式获取html超链接及对应链接里面的内容
        /// </summary>
        /// <param name="content">html 源代码</param>
        /// <returns></returns>
        public static List<KeyValuePair<string, string>> GetUrl(string content)
        {
            var kvp = new List<KeyValuePair<string, string>>();
            string pattern = @"(?is)<a[^>]*?href=(['""]?)(?<url>[^'""\s>]+)\1[^>]*>(?<text>(?:(?!</?a\b).)*)</a>";
            MatchCollection mc = Regex.Matches(content, pattern);
            foreach (Match m in mc)
            {
                if (m.Success)
                {
                    //加入集合数组
                    //hrefList.Add(m.Groups["href"].Value);
                    //nameList.Add(m.Groups["name"].Value);
                    kvp.Add(new KeyValuePair<string, string>(m.Groups["url"].Value, m.Groups["text"].Value));
                }
            }
            return kvp;
        }

        /// <summary>
        /// GetRoundPageData
        /// </summary>
        /// <param name="url">roundurl</param>
        /// <returns>roundno</returns>
        private Round LoadRoundResults(string url)
        {
            var round = new Round();
            url = GetFullUrl(url);
            var roundData = GetPageData(url);
            var hDoc = new HtmlAgilityPack.HtmlDocument();
            hDoc.LoadHtml(roundData);
            round.RoundNo = hDoc.DocumentNode.SelectSingleNode("//span[@id='lRound']").InnerText;
            //if xxxx judge the player
            var teamDivs = hDoc.DocumentNode.SelectNodes("//div[@class='td_first_half' or @class='td_latter_half']");
            var sectionName = hDoc.DocumentNode.SelectSingleNode("//span[@id='lSectionName']").InnerText;
            if (teamDivs == null || !teamDivs.Any() || !teamDivs.Any(p => p.InnerText.Contains(team)))
            {
                Log(sectionName + round.RoundNo + "未找到所需队伍信息，跳过");
                return null;
            }
            else
            {
                var a = teamDivs.First(p => p.InnerText.Contains(team));
                Log(sectionName + "找到目标队伍：" + a.InnerText.Replace("\r", "").Replace("\n", "").Trim() + "，进入并根据队员抓取表单信息");
            }
            var urls = GetUrl(roundData);
            var boardUrls = urls.FindAll(p => p.Key.Contains("Board.aspx?"));
            //load board
            boardCount = boardUrls.Count;
            SetCount();
            for (int i = 0; i < boardUrls.Count; i++)
            {
                boardNo = i + 1;
                SetCount();
                round.Boards.Add(LoadBoardResults(boardUrls[i].Key));
            }

            return round;
        }

        private BoardInfo LoadBoardResults(string url)
        {
            url = GetFullUrl(url);
            var boardData = GetPageData(url);
            //get data we need
            boardData = boardData.Replace(TopPrefix, "");
            var hDoc = new HtmlAgilityPack.HtmlDocument();
            hDoc.LoadHtml(boardData);
            //valid if someone we need in this page
            //if (!IsTheBoardWeNeed(hDoc))
            //{
            //    return null;
            //}
            var boardNo = hDoc.DocumentNode.SelectNodes("//span[@id='lBoardNo']");
            //N
            var lNs = hDoc.DocumentNode.SelectNodes("//span[@id='lNs']");
            var lNh = hDoc.DocumentNode.SelectNodes("//span[@id='lNh']");
            var lNd = hDoc.DocumentNode.SelectNodes("//span[@id='lNd']");
            var lNc = hDoc.DocumentNode.SelectNodes("//span[@id='lNc']");
            //W
            var lWs = hDoc.DocumentNode.SelectNodes("//span[@id='lWs']");
            var lWh = hDoc.DocumentNode.SelectNodes("//span[@id='lWh']");
            var lWd = hDoc.DocumentNode.SelectNodes("//span[@id='lWd']");
            var lWc = hDoc.DocumentNode.SelectNodes("//span[@id='lWc']");
            //S
            var lSs = hDoc.DocumentNode.SelectNodes("//span[@id='lSs']");
            var lSh = hDoc.DocumentNode.SelectNodes("//span[@id='lSh']");
            var lSd = hDoc.DocumentNode.SelectNodes("//span[@id='lSd']");
            var lSc = hDoc.DocumentNode.SelectNodes("//span[@id='lSc']");
            //E
            var lEs = hDoc.DocumentNode.SelectNodes("//span[@id='lEs']");
            var lEh = hDoc.DocumentNode.SelectNodes("//span[@id='lEh']");
            var lEd = hDoc.DocumentNode.SelectNodes("//span[@id='lEd']");
            var lEc = hDoc.DocumentNode.SelectNodes("//span[@id='lEc']");
            //dlr
            var dlr = hDoc.DocumentNode.SelectNodes("//span[@id='lDealer']");
            //vul
            var vul = hDoc.DocumentNode.SelectNodes("//span[@id='lVulnerable']");
            var bi = new BoardInfo();
            bi.BoardNumber = int.Parse(boardNo.Single().InnerText);
            bi.Datum = hDoc.DocumentNode.SelectSingleNode("//span[@id='lDatum']").InnerHtml;

            bi.N.Spades = lNs.Single().InnerText;
            bi.N.Hearts = lNh.Single().InnerText;
            bi.N.Diamonds = lNd.Single().InnerText;
            bi.N.Clubs = lNc.Single().InnerText;
            bi.W.Spades = lWs.Single().InnerText;
            bi.W.Hearts = lWh.Single().InnerText;
            bi.W.Diamonds = lWd.Single().InnerText;
            bi.W.Clubs = lWc.Single().InnerText;
            bi.S.Spades = lSs.Single().InnerText;
            bi.S.Hearts = lSh.Single().InnerText;
            bi.S.Diamonds = lSd.Single().InnerText;
            bi.S.Clubs = lSc.Single().InnerText;
            bi.E.Spades = lEs.Single().InnerText;
            bi.E.Hearts = lEh.Single().InnerText;
            bi.E.Diamonds = lEd.Single().InnerText;
            bi.E.Clubs = lEc.Single().InnerText;
            bi.Dlr = dlr.Single().InnerText;
            bi.Vul = vul.Single().InnerText;

            //set poker
            var rowNodes = hDoc.DocumentNode.SelectNodes("//table[@class='resultTable']/tr");
            TableCommonData data = new TableCommonData();
            for (int i = 0; i < rowNodes.Count; i++)
            {
                if (i == 0 || !teamMembers.Any(p => rowNodes[i].InnerText.Contains(p)))
                {
                    continue;
                }
                var isOdd = i % 2 == 1;
                if (isOdd)
                {
                    data = new TableCommonData();
                }
                bi.Table.Add(GetTableFromRowNode(rowNodes[i], isOdd, data));
                //get the team result

            }

            //cir the tables and find out guys in our team
            //bi must has two tables?
            if (bi.Table.Count==2)
            {
                bi.Nplayer = bi.Table.Single(p => teamMembers.Contains(p.NPlayer)).NPlayer;
                bi.Wplayer = bi.Table.Single(p => teamMembers.Contains(p.WPlayer)).WPlayer;
                bi.Eplayer = bi.Table.Single(p => teamMembers.Contains(p.EPlayer)).EPlayer;
                bi.Splayer = bi.Table.Single(p => teamMembers.Contains(p.SPlayer)).SPlayer;
            }

            return bi;
        }

        private bool IsTheBoardWeNeed(HtmlAgilityPack.HtmlDocument hDoc)
        {
            var htmlContent = hDoc.DocumentNode.InnerText.Trim();
            if (teamMembers.Any(p => htmlContent.Contains(p)))
            {
                return true;
            }
            return false;
        }

        private static Table GetTableFromRowNode(HtmlNode node, bool isOdd, TableCommonData data)
        {
            //deal with the \r\n
            node.InnerHtml = node.InnerHtml.Replace("\r", "").Replace("\n", "").Trim();
            var t = new Table();
            var firstNode = node.FirstChild;
            //if its a odd no then get the table info
            if (isOdd)
            {
                data.TableUrl = GetFullUrl(firstNode.SelectSingleNode("//a").GetAttributeValue("href", ""));
                data.TableNo = firstNode.SelectSingleNode("//a").InnerHtml;
                firstNode.Remove();
                //this two fucking data is columspan=2 fuck!
                data.HomeImp = node.SelectNodes("td")[12].InnerText.Trim();
                data.VisitingImp = node.SelectNodes("td")[13].InnerText.Trim();
                node.SelectNodes("td")[12].Remove();
                //when removed 12th then the 13th becomes the 12th
                node.SelectNodes("td")[12].Remove();

                //奇数和偶数的人位置不同
                t.NPlayer =
    node.SelectNodes("td")[0].SelectSingleNode("table")
        .SelectSingleNode("tr")
        .SelectSingleNode("td")
        .NextSibling.InnerText.Trim();
                t.SPlayer = node.SelectNodes("td")[1].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
                t.EPlayer = node.SelectNodes("td")[2].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
                t.WPlayer = node.SelectNodes("td")[3].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
            }
            else
            {
                t.NPlayer =
    node.SelectNodes("td")[2].SelectSingleNode("table")
        .SelectSingleNode("tr")
        .SelectSingleNode("td")
        .NextSibling.InnerText.Trim();
                t.SPlayer = node.SelectNodes("td")[3].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
                t.EPlayer = node.SelectNodes("td")[0].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
                t.WPlayer = node.SelectNodes("td")[1].SelectSingleNode("table")
                        .SelectSingleNode("tr")
                        .SelectSingleNode("td")
                        .NextSibling.InnerText.Trim();
            }
            t.TableData = data;
            t.OpenOrNot = node.SelectNodes("td")[4].InnerText.Trim();
            t.Decl = node.SelectNodes("td")[5].InnerText.Trim();
            t.Cont = node.SelectNodes("td")[6].InnerText.Trim();
            t.Result = node.SelectNodes("td")[7].InnerText.Trim();
            t.NSPoints = node.SelectNodes("td")[8].InnerText.Trim();
            t.EWPoints = node.SelectNodes("td")[9].InnerText.Trim();
            t.Datum = node.SelectNodes("td")[10].InnerText.Trim();
            t.XImp = node.SelectNodes("td")[11].InnerText.Trim();
            //主客队名称要到Table的链接中取
            var teamData = GetHtmlDocFromUrl(t.TableData.TableUrl);
            t.HomeTeamName = teamData.DocumentNode.SelectSingleNode("//span[@id='lHomeTeamName']").InnerText;
            t.VisitingTeamName = teamData.DocumentNode.SelectSingleNode("//span[@id='lVisitTeamName']").InnerText;
            t.HomeRoundImp = teamData.DocumentNode.SelectSingleNode("//span[@id='lHomeIMPs']").InnerText;
            t.VisitingRoundImp = teamData.DocumentNode.SelectSingleNode("//span[@id='lVisitIMPs']").InnerText;
            return t;
        }

        private static HtmlAgilityPack.HtmlDocument GetHtmlDocFromUrl(string url)
        {
            var hDoc = new HtmlAgilityPack.HtmlDocument();
            var data = GetPageData(url);
            data = data.Replace(TopPrefix, "");
            hDoc.LoadHtml(data);
            return hDoc;
        }

        private static string GetFullUrl(string url)
        {
            if (!url.StartsWith("Http", true, CultureInfo.CurrentCulture))
            {
                url = "http://www.ccba.org.cn/Tour/" + url;
            }
            return url;
        }

        private void Log(string str)
        {
            if (string.IsNullOrWhiteSpace(textBox1.Text))
            {
                textBox1.Text = str;
            }
            else
            {
                textBox1.Text += "\r\n" + str;
            }
            this.textBox1.SelectionStart = this.textBox1.Text.Length;
            this.textBox1.ScrollToCaret();
        }

        private void SetCount()
        {
            label1.Text = string.Format(alertMsg, sectionNo, sectionCount, boardNo, boardCount);
        }

        private void GenWord()
        {
            //backup xslt path for the wierd io exception 

            if (!File.Exists(genXslt))
            {
                genXslt = "D:\\Generator.xslt";
            }

            if (!File.Exists(genXslt))
            {
                MessageBox.Show("找不到Generator.xslt样式表，请从程序目录中找到对应文件复制到D盘根目录后重试");
                return;
            }

            var xslTxt = File.ReadAllBytes(genXslt);
            var txt = File.ReadAllBytes(inputXmlPath);
            var xsl = new XslCompiledTransform();
            var xmlReader = XmlReader.Create(new MemoryStream(txt));
            var xslReader = XmlReader.Create(new MemoryStream(xslTxt));
            xsl.Load(xslReader);
            var writer = XmlWriter.Create(outPutName);
            xsl.Transform(xmlReader, writer);
            writer.Close();
            //替换部分字符串
            var outputTxt = File.ReadAllText(outPutName).Replace("<?xml version=\"1.0\" encoding=\"UTF - 8\" standalone=\"yes\"?>", "<?xml version=\"1.0\" encoding=\"UTF - 8\" standalone=\"yes\"?><?mso-application progid=\"Word.Document\"?>")
                .Replace("&amp;spades;", "♠")
                .Replace("&amp;clubs;", "♣")
                .Replace("&amp;diams;", "♦")
                .Replace("&amp;hearts;", "♥");
            File.WriteAllText(outPutName, outputTxt);
            Log("生成成功");
            System.Diagnostics.Process.Start("explorer.exe", "/select," + Environment.CurrentDirectory + "\\" + outPutName);

        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (!CheckCBChecked())
            {
                MessageBox.Show("请选择队伍");
                return;
            }
            TeamForm tf = new TeamForm();
            tf.Closed += OnTfOnClosed;
            tf.Show();
            this.Enabled = false;
        }

        private void OnTfOnClosed(object s, EventArgs ee)
        {
            this.Enabled = true;
            //拿到增加的Team并重新加载
            var teamForm = s as TeamForm;
            if (teamForm.DialogResult==DialogResult.Cancel)
            {
                return;
            }
            if (teamForm?.MyTeam != null)
            {
                if (teamForm.MyTeam.TeamNumber == 0)
                {
                    teamForm.MyTeam.TeamNumber = allTeams.Max(p => p.TeamNumber) + 1;
                    allTeams.Add(teamForm.MyTeam);
                }
                else
                {
                    var toRemove = allTeams.SingleOrDefault(p => p.TeamNumber == teamForm.MyTeam.TeamNumber);
                    allTeams.Remove(toRemove);
                    allTeams.Add(teamForm.MyTeam);
                }
            }
            Utility.SaveTeam(allTeams);
            BindTeam();
        }

        private void BindTeam()
        {
            comboBox1.DataSource = null;
            comboBox1.DataSource = allTeams;
            comboBox1.DisplayMember = "TeamName";
            comboBox1.ValueMember = "TeamNumber";
            comboBox1.Refresh();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var t = comboBox1.SelectedItem as Team;
            if (t != null)
            {
                textBox3.Text = t.TeamMembers.Replace("，", ",");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (!CheckCBChecked())
            {
                MessageBox.Show("请选择队伍");
                return;
            }
            TeamForm tf = new TeamForm();
            tf.MyTeam = comboBox1.SelectedItem as Team;
            tf.Closed += OnTfOnClosed;
            tf.Show();
        }

        private bool CheckCBChecked()
        {
            return comboBox1.SelectedIndex > -1;
        }
    }
}
