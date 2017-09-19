using BridgeUtility.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility
{
    [Serializable]
    public class Poker
    {
        public string Spades { get; set; }
        public string Hearts { get; set; }
        public string Diamonds { get; set; }
        public string Clubs { get; set; }
    }
}
