using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    class WorkFlow
    {
        //Attributs privés
        private DateTime wfk_dateDecision;
        private int wfk_etpNum;
        private int wfk_dcs_id;

        //Constructeur
        public WorkFlow(DateTime laDateDecision, int leNumEtape, int leIdDecision)
        {
            this.wfk_dateDecision = laDateDecision;
            this.wfk_etpNum = leNumEtape;
            this.wfk_dcs_id = leIdDecision;
        }

        //Getteurs
        public DateTime getWfkDateDecision() { return this.wfk_dateDecision; }
        public int getWfkEtpNum() { return this.wfk_etpNum; }
        public int getWfkDcsId() { return this.wfk_dcs_id; }

        //Setteurs
        public void setWfkDateDecision(DateTime laDateDecision) { this.wfk_dateDecision = laDateDecision; }
        public void setWfkEtpNum(int leNumEtape) { this.wfk_etpNum = leNumEtape; }
        public void setDcsId(int leIdDecision) { this.wfk_dcs_id = leIdDecision; }
    }
}
