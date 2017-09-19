using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace BridgeUtility
{
    public class ReplaceTool
    {
        private static string OutputStr = @"../../Generator.xslt";
        public static void ReplaceTag()
        {
            #region 初始化Dic

            Dictionary<string, string> DicToReplace = new Dictionary<string, string>
            {
                {"Section1", "<xsl:value-of select=\"Round/RoundNo\"></xsl:value-of>"},
                {"Team1", "<xsl:value-of select=\"Round/Boards/BoardInfo/Table/Table/HomeTeamName\"/>"},
                {"Team2", "<xsl:value-of select=\"Round/Boards/BoardInfo/Table/Table/VisitingTeamName\"/>"},
                {
                    "1:2","<xsl:value-of select=\"Round/Boards/BoardInfo/Table/Table/HomeRoundImp\"/>:<xsl:value-of select=\"Round/Boards/BoardInfo/Table/Table/VisitingRoundImp\"/>"
                },
                //循环中
                {"Board 1", "Board <xsl:value-of select=\"BoardNumber\"/>"},
                            //N
                {"♠ 73", "♠ <xsl:value-of select=\"N/Spades\"/>"},
                {"♥ T93", "♥ <xsl:value-of select=\"N/Hearts\"/>"},
                {"♦ AQJT8", "♦ <xsl:value-of select=\"N/Diamonds\"/>"},
                {"♣ K87", "♣ <xsl:value-of select=\"N/Clubs\"/>"},
                            //E
                {"♠ AT984", "♠ <xsl:value-of select=\"E/Spades\"/>"},
                {"♥ A4", "♥ <xsl:value-of select=\"E/Hearts\"/>"},
                {"♦ K3", "♦ <xsl:value-of select=\"E/Diamonds\"/>"},
                {"♣ JT65", "♣ <xsl:value-of select=\"E/Clubs\"/>"},
                            //S
                {"♠ J2", "♠ <xsl:value-of select=\"S/Spades\"/>"},
                {"♥ K65", "♥ <xsl:value-of select=\"S/Hearts\"/>"},
                {"♦ 7654", "♦ <xsl:value-of select=\"S/Diamonds\"/>"},
                {"♣ Q932", "♣ <xsl:value-of select=\"S/Clubs\"/>"},
                            //W
                {"♠ KQ65", "♠ <xsl:value-of select=\"W/Spades\"/>"},
                {"♥ QJ872", "♥ <xsl:value-of select=\"W/Hearts\"/>"},
                {"♦ 92", "♦ <xsl:value-of select=\"W/Diamonds\"/>"},
                {"♣ A4", "♣ <xsl:value-of select=\"W/Clubs\"/>"},
                {"T1W", "<xsl:value-of select=\"Table/Table[1]/WPlayer\"/>"},
                {"T1E", "<xsl:value-of select=\"Table/Table[1]/EPlayer\"/>"},
                {"T1N", "<xsl:value-of select=\"Table/Table[1]/NPlayer\"/>"},
                {"T1S", "<xsl:value-of select=\"Table/Table[1]/SPlayer\"/>"},

                {"T2W", "<xsl:value-of select=\"Table/Table[2]/WPlayer\"/>"},
                {"T2E", "<xsl:value-of select=\"Table/Table[2]/EPlayer\"/>"},
                {"T2N", "<xsl:value-of select=\"Table/Table[2]/NPlayer\"/>"},
                {"T2S", "<xsl:value-of select=\"Table/Table[2]/SPlayer\"/>"},
            };





            #endregion
            var stream = new FileStream(@"‪../../../../../../../Generator.xslt", FileMode.Open);
            var reader = new StreamReader(stream);
            var txt = reader.ReadToEnd();

            //replace
            foreach (var item in DicToReplace)
            {
                txt = txt.Replace(item.Key, item.Value);
            }

            var writer = new StreamWriter(OutputStr);
            writer.Write(txt);
            writer.Close();
        }
    }
}
