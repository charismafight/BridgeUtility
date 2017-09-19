using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BridgeUtility.Entity
{
    [Serializable]
    public class Table
    {
        public TableCommonData TableData { get; set; }
        public string NPlayer { get; set; }
        public string EPlayer { get; set; }
        public string WPlayer { get; set; }
        public string SPlayer { get; set; }
        public string OpenOrNot { get; set; }
        public string Decl { get; set; }
        public string Cont { get; set; }
        public string Result { get; set; }
        public string NSPoints { get; set; }
        public string EWPoints { get; set; }
        public string Datum { get; set; }
        public string XImp { get; set; }
        public string HomeTeamName { get; set; }
        public string VisitingTeamName { get; set; }
        public string HomeRoundImp { get; set; }
        public string VisitingRoundImp { get; set; }
    }
}
