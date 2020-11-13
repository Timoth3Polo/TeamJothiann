using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetAMM
{
    public static class BDD
    {
        /*
            public void ...()
            {
                //Vider la liste ou le dictionnaire pour permettre de la remplir de nouveau
                globale.lesClients.Clear();

                //objet SQLCommand pour définir la procédure stockée à utiliser
                Sql maRequete = new SqlCommand("..laprocedure..", globale.cnx);
                maRequete.CommandType = System.Data.CommandType.StoredProcedure;

                // exécuter la procedure stockée dans un curseur 
                SqlDataReader SqlExec = maRequete.ExecuteReader();

                //boucle de lecture des clients avec ajout dans la collection
                while (SqlExec.Read())
                {
                    int idClient = int.Parse(SqlExec["idClient"].ToString());
                    string nomClient = SqlExec["nomClient"].ToString();

                    client leClient = new client(idClient, nomClient);

                    globale.lesClients.Add(leClient);
                }
            }*/
    }
}
