using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BridgeUtility.Entity;

namespace BridgeUtility
{
    public partial class TeamForm : Form
    {
        public Team MyTeam;
        public TeamForm()
        {
            InitializeComponent();

            if (MyTeam == null)
            {
                MyTeam = new Team();
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            textBox1.Text = MyTeam.TeamName;
            textBox3.Text = MyTeam.TeamMembers;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(textBox1.Text) || string.IsNullOrWhiteSpace(textBox3.Text))
            {
                MessageBox.Show("请输入一个队名及其队员名字");
                return;
            }
            MyTeam.TeamName = textBox1.Text;
            MyTeam.TeamMembers = textBox3.Text;
            MessageBox.Show("操作成功");
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}
