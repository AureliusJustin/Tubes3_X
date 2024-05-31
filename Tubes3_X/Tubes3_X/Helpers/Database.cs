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
            Console.WriteLine("Database closed");
            this.conn.Close();
        }

        public ArrayList getAllAlayName()
        {
            ArrayList listNama = new ArrayList();
            
            string sql = "SELECT nama FROM biodata";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read()){
                string temp = reader.GetString(0);
                listNama.Add(temp);
            }

            reader.Close();

            return listNama;
        }

        public string getNameFromImagePath(string imagePath)
        {
            ArrayList listNama = new ArrayList();

            string sql = "SELECT nama FROM sidik_jari WHERE berkas_citra = \"" + imagePath + "\"";
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            string temp = reader.GetString(0);

            reader.Close();

            return temp;
        }
        public ArrayList getAllImagePath()
        {
            ArrayList listImagePath = new ArrayList();

            string sql = "SELECT berkas_citra FROM sidik_jari";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read()){
                string temp = reader.GetString(0);
                listImagePath.Add(temp);
            }

            reader.Close();

            return listImagePath;
        }

        public Biodata getBiodataFromName(string name)
        {
            string sql = "SELECT * FROM biodata WHERE nama = \"" + name + "\"";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            
            reader.Read();
            
            string nik = reader["NIK"].ToString();
            string nama = reader["nama"].ToString();
            string tempatLahir = reader["tempat_lahir"].ToString();
            string tanggalLahir = reader["tanggal_lahir"].ToString();
            string jenisKelamin = reader["jenis_kelamin"].ToString();
            string golDar = reader["golongan_darah"].ToString();
            string alamat = reader["alamat"].ToString();
            string agama = reader["agama"].ToString();
            string statusKawin = reader["status_perkawinan"].ToString();
            string pekerjaan = reader["pekerjaan"].ToString();
            string kewarganegaraan = reader["kewarganegaraan"].ToString();

            reader.Close();

            return new Biodata(nik, nama, tempatLahir, tanggalLahir, jenisKelamin,
            golDar, alamat, agama, statusKawin, pekerjaan, kewarganegaraan);
        }
    }
}