using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility.Entity
{
    [Serializable]
    public class Team
    {
        public int TeamNumber { get; set; }
        public string TeamName { get; set; }
        public string TeamMembers { get; set; }
    }
}
