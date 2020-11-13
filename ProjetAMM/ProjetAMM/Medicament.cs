using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    class Medicament
    {
        //Attributs privés
        private string med_depotlegal;
        private string med_nomcommercial;
        private string med_composition;
        private string med_effets;
        private string med_contreindic;
        private string med_amm;
        private List<WorkFlow> lesEtapes;

        //Constructeur
        public Medicament(string leDepotLegal, string leNomCommercial, string laComposition, string lesEffets, string leContreIndic, string leAmm, List<WorkFlow> lesEtapes)
        {
            this.med_depotlegal = leDepotLegal;
            this.med_nomcommercial = leNomCommercial;
            this.med_composition = laComposition;
            this.med_effets = lesEffets;
            this.med_contreindic = leContreIndic;
            this.med_amm = leAmm;
            this.lesEtapes = lesEtapes;
        }

        //Getteurs
        public string getMedDepotLegal() { return this.med_depotlegal; }
        public string getMedNomCommercial() { return this.med_nomcommercial; }
        public string getMedComposition() { return this.med_composition; }
        public string getMedEffets() { return this.med_effets; }
        public string getMedContreIndic() { return this.med_contreindic; }
        public string getMedAmm() { return this.med_amm; }
        public List<WorkFlow> getLesEtapes() { return this.lesEtapes; }

        //Setteurs
        public void setMedDepotLegal(string leDepotLegal) { this.med_depotlegal = leDepotLegal; }
        public void setMedNomCommercial(string leNomCommercial) { this.med_nomcommercial = leNomCommercial; }
        public void setMedComposition(string laComposition) { this.med_composition = laComposition; }
        public void setMedEffets(string lesEffets) { this.med_effets = lesEffets; }
        public void setMedContreIndic(string leContreIndic) { this.med_contreindic = leContreIndic; }
        public void setMedAmm(string leAmm) { this.med_amm = leAmm; }
        
        //Fonctions
        /* à compléter...
        public bool ajoutEtapes(WorkFlow leEtape)
        {
            int 
        }
        */

    }
}
