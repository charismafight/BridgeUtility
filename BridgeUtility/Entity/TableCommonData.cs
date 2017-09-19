using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility.Entity
{
    [Serializable]
    public class TableCommonData
    {
        public string TableUrl { get; set; }
        public string TableNo { get; set; }
        public string HomeImp { get; set; }
        public string VisitingImp { get; set; }
    }
}
