using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    class Decision
    {
        //Attributs privés
        private int dcs_id;
        private string dcs_libelle;

        //Constructeur
        public Decision (int leId, string leLibelle)
        {
            this.dcs_id = leId;
            this.dcs_libelle = leLibelle;
        }

        //Getteurs
        public int getDcsId() { return this.dcs_id; }
        public string getDcsLibelle() { return this.dcs_libelle; }

        //Setteurs
        public void setDcsId(int leId) { this.dcs_id = leId; }
        public void setDcsLibelle(string leLibelle) { this.dcs_libelle = leLibelle; }
    }
}
