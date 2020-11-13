using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjetAMM
{
    public partial class frm_accueil : Form
    {
        public frm_accueil()
        {
            InitializeComponent();
        }

        private void frm_accueil_Load(object sender, EventArgs e)
        {
            //Connexion à la BDD
            Globale.cnx = new System.Data.SqlClient.SqlConnection();
            Globale.cnx.ConnectionString = "Data Source=HPG6-26\\SQLEXPRESS;Initial Catalog=NOM BDD;Integrated Security=True;MultipleActiveResultSets=True";
            Globale.cnx.Open();

            //Initialisation du dictionnaire les familles
            Globale.lesFamilles = new Dictionary<string, Famille>();

            //Initialisation du dictionnaire les médicaments
            Globale.lesMedicaments = new Dictionary<string, Medicament>();

            //Initialisation de la liste des étapes
            Globale.lesEtapes = new List<Etape>();

            //Initialisation de la liste des décisions
            Globale.lesDecisions = new List<Decision>();
        }
    }
}
