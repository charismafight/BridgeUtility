using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility.Entity
{
    [Serializable]
    public class Round
    {
        private string _roundNo;
        public string RoundNo
        {
            get { return "Round " + _roundNo; }
            set { _roundNo = value; }
        }

        public string RoundName { get; set; }
        public List<BoardInfo> Boards { get; set; }

        public Round()
        {
            Boards = new List<BoardInfo>();
        }
    }
}
