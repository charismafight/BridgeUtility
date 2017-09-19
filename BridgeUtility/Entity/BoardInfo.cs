using BridgeUtility.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility
{
    [Serializable]
    public class BoardInfo
    {
        //Poker belongs to board and the table can be muiltiple
        public Poker N { get; set; }
        public Poker E { get; set; }
        public Poker S { get; set; }
        public Poker W { get; set; }

        public int BoardNumber { get; set; }
        public string Dlr { get; set; }
        public string Vul { get; set; }
        public List<Table> Table { get; set; }
        public string Datum { get; set; }

        //增加队中东南西北分别是谁的数据
        public string Nplayer { get; set; }
        public string Wplayer { get; set; }
        public string Eplayer { get; set; }
        public string Splayer { get; set; }


        public BoardInfo()
        {
            Table = new List<Table>();
            N = new Poker();
            E = new Poker();
            W = new Poker();
            S = new Poker();
        }
    }
}
