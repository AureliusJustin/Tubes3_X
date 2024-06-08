using System;
using System.Collections;
using System.Runtime.Intrinsics.Arm;
using MySqlConnector;
using System.Text;

namespace Tubes3_X
{
    class Database
    {
        private AesEncryption a;
        private MySqlConnection conn;
        public Database()
        {
            byte[] key = Encoding.ASCII.GetBytes("2 chinese 2 java");
            byte[] iv = Encoding.ASCII.GetBytes("asisten irk ****");
            this.a = new AesEncryption(key, iv);

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
                temp = a.DecryptString(System.Convert.FromBase64String(temp));
                listNama.Add(temp);
            }

            reader.Close();

            return listNama;
        }

        public string getNameFromImagePath(string imagePath)
        {
            ArrayList listNama = new ArrayList();

            string sql = "SELECT nama FROM sidik_jari WHERE berkas_citra = \"" + System.Convert.ToBase64String(a.Encrypt(Encoding.ASCII.GetBytes(imagePath))) + "\"";
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            string temp = "";
            while(reader.Read()){
                temp = reader.GetString(0);
                temp = a.DecryptString(System.Convert.FromBase64String(temp));
            }


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
                temp = a.DecryptString(System.Convert.FromBase64String(temp));
                listImagePath.Add(temp);
            }

            reader.Close();

            return listImagePath;
        }

        public Biodata getBiodataFromName(string name)
        {
            string sql = "SELECT * FROM biodata WHERE nama = \"" + System.Convert.ToBase64String(a.Encrypt(Encoding.ASCII.GetBytes(name))) + "\"";
            
            MySqlCommand cmd = new MySqlCommand(sql, this.conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            
            reader.Read();
            
            string nik = reader["NIK"].ToString();
            nik = a.DecryptString(System.Convert.FromBase64String(nik));

            string nama = reader["nama"].ToString();
            nama = a.DecryptString(System.Convert.FromBase64String(nama));

            string tempatLahir = reader["tempat_lahir"].ToString();
            tempatLahir = a.DecryptString(System.Convert.FromBase64String(tempatLahir));

            string tanggalLahir = reader["tanggal_lahir"].ToString();
            tanggalLahir = a.DecryptString(System.Convert.FromBase64String(tanggalLahir));

            string jenisKelamin = reader["jenis_kelamin"].ToString();
            jenisKelamin = a.DecryptString(System.Convert.FromBase64String(jenisKelamin));

            string golDar = reader["golongan_darah"].ToString();
            golDar = a.DecryptString(System.Convert.FromBase64String(golDar));

            string alamat = reader["alamat"].ToString();
            alamat = a.DecryptString(System.Convert.FromBase64String(alamat));
            
            string agama = reader["agama"].ToString();
            agama = a.DecryptString(System.Convert.FromBase64String(agama));

            string statusKawin = reader["status_perkawinan"].ToString();
            statusKawin = a.DecryptString(System.Convert.FromBase64String(statusKawin));

            string pekerjaan = reader["pekerjaan"].ToString();
            pekerjaan = a.DecryptString(System.Convert.FromBase64String(pekerjaan));

            string kewarganegaraan = reader["kewarganegaraan"].ToString();
            kewarganegaraan = a.DecryptString(System.Convert.FromBase64String(kewarganegaraan));

            reader.Close();

            return new Biodata(nik, nama, tempatLahir, tanggalLahir, jenisKelamin,
            golDar, alamat, agama, statusKawin, pekerjaan, kewarganegaraan);
        }
    }
}