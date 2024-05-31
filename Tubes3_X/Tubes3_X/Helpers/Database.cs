using System;
using System.Collections;
using MySqlConnector;

namespace Tubes3_X
{
    class Database
    {
        private MySqlConnection conn;

        public Database()
        {
            this.conn = new MySqlConnection();
            conn.ConnectionString = ("Server=localhost;port=1234;user id=root; password=pass; database=userdata");
        }
        public void init()
        {
            try
            {
                conn.Open();
                Console.WriteLine("Database Connected");
            } catch (Exception e)
            { 
                Console.WriteLine(e);
            }
            
        }
        public void closeConnection()
        {
            this.conn.Close();
        }

        public ArrayList getAllName()
        {
            ArrayList listNama = new ArrayList();
            
            string sql = "SELECT nama FROM biodata";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read()){
                string temp = reader.GetString(0);
                listNama.Add(temp);
            }

            return listNama;
        }
    }
}