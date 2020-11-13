using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    class Etape
    {
        //Attributs privés
        private int etp_num;
        private string etp_libelle;

        //Constructeur
        public Etape(int leNum, string leLibelle)
        {
            this.etp_num = leNum;
            this.etp_libelle = leLibelle;
        }

        //Getteurs
        public int getEtpNum() { return this.etp_num; }
        public string getEtpLibelle() { return this.etp_libelle; }

        //Setteurs
        public void setEtpNum(int leNum) { this.etp_num = leNum; }
        public void setEtpLibelle(string leLibelle) { this.etp_libelle = leLibelle; }
    }

    class EtapeNormee : Etape
    {
        //Attributs privés
        private string etp_norme;
        private DateTime etp_date_norme;

        //Constructeur
        public EtapeNormee(int leNum, string leLibelle, string laNorme, DateTime laDateNorme) : base(leNum, leLibelle)
        {
            this.etp_norme = laNorme;
            this.etp_date_norme = laDateNorme;
        }

        //Getteurs
        public string getEtpNorme() { return this.etp_norme; }
        public DateTime getEtpDateNorme() { return this.etp_date_norme; }

        //Setteurs
        public void setEtpNorme(string laNorme) { this.etp_norme = laNorme; }
        public void setEtpDateNorme(DateTime laDateNorme) { this.etp_date_norme = laDateNorme; }
    }
}
