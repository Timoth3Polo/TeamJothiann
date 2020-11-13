using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ProjetAMM
{
    class Globale
    {
        public static Dictionary<string,Famille> lesFamilles;
        public static Dictionary<string, Medicament> lesMedicaments;
        public static List<Etape> lesEtapes;
        public static List<Decision> lesDecisions;
        public static SqlConnection cnx;
    }
}
