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
                temp = AesEncryption.Decrypt(temp);
                listNama.Add(temp);
            }

            reader.Close();

            return listNama;
        }

        public string getNameFromImagePath(string imagePath)
        {
            ArrayList listNama = new ArrayList();

            string sql = "SELECT nama FROM sidik_jari WHERE berkas_citra = \"" + AesEncryption.Encrypt(imagePath) + "\"";
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            string temp = reader.GetString(0);
            temp = AesEncryption.Decrypt(temp);

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
                temp = AesEncryption.Decrypt(temp);
                listImagePath.Add(temp);
            }

            reader.Close();

            return listImagePath;
        }

        public Biodata getBiodataFromName(string name)
        {
            string sql = "SELECT * FROM biodata WHERE nama = \"" + AesEncryption.Encrypt(name) + "\"";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            
            reader.Read();
            
            string nik = reader["NIK"].ToString();
            nik = AesEncryption.Decrypt(nik);
            string nama = reader["nama"].ToString();
            nama = AesEncryption.Decrypt(nama);
            string tempatLahir = reader["tempat_lahir"].ToString();
            tempatLahir = AesEncryption.Decrypt(tempatLahir);
            string tanggalLahir = reader["tanggal_lahir"].ToString();
            tanggalLahir = AesEncryption.Decrypt(tanggalLahir);
            string jenisKelamin = reader["jenis_kelamin"].ToString();
            string golDar = reader["golongan_darah"].ToString();
            golDar = AesEncryption.Decrypt(golDar);
            string alamat = reader["alamat"].ToString();
            alamat = AesEncryption.Decrypt(alamat);
            string agama = reader["agama"].ToString();
            agama = AesEncryption.Decrypt(agama);
            string statusKawin = reader["status_perkawinan"].ToString();
            statusKawin = AesEncryption.Decrypt(statusKawin);
            string pekerjaan = reader["pekerjaan"].ToString();
            pekerjaan = AesEncryption.Decrypt(pekerjaan);
            string kewarganegaraan = reader["kewarganegaraan"].ToString();
            kewarganegaraan = AesEncryption.Decrypt(kewarganegaraan);

            reader.Close();

            return new Biodata(nik, nama, tempatLahir, tanggalLahir, jenisKelamin,
            golDar, alamat, agama, statusKawin, pekerjaan, kewarganegaraan);
        }
    }
}