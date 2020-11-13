using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    class Famille
    {
        //Attributs privés
        private string fam_code;
        private string fam_libelle;
        private int fam_nb_medi_amm;

        //Constructeur
        public Famille(string leCode, string leLibelle, int leNbMediAmm)
        {
            this.fam_code = leCode;
            this.fam_libelle = leLibelle;
            this.fam_nb_medi_amm = leNbMediAmm;
        }

        //Getteurs
        public string getFamCode() { return this.fam_code; }
        public string getFamLibelle() { return this.fam_libelle; }
        public int getFamNbMediAmm() { return this.fam_nb_medi_amm; }

        //Setteurs
        public void setFamCode(string leCode) { this.fam_code = leCode; }
        public void setFamLibelle(string leLibelle) { this.fam_libelle = leLibelle; }
        public void setFamNbMediAmm(int leNbMediAmm) { this.fam_nb_medi_amm = leNbMediAmm; }
    }
}
