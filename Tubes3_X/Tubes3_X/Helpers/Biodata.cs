namespace Tubes3_X
{
    public class Biodata
    {
        public string nik;
        public string nama;
        public string tempatLahir;
        public string tanggalLahir;
        public string kelamin;
        public string goldar;
        public string alamat;
        public string agama;
        public string statusPerkawinan;
        public string pekerjaan;
        public string kewarganegaraan;

        public Biodata(string nik, string nama, string tempatLahir, string tanggalLahir,
        string kelamin, string goldar, string alamat, string agama,
        string statusPerkawinan, string pekerjaan, string kewarganegaraan){
            this.nik = nik;
            this.nama = nama;
            this.tempatLahir = tempatLahir;
            this.tanggalLahir = tanggalLahir;
            this.kelamin = kelamin;
            this.goldar = goldar;
            this.alamat = alamat;
            this.agama = agama;
            this.statusPerkawinan = statusPerkawinan;
            this.pekerjaan = pekerjaan;
            this.kewarganegaraan = kewarganegaraan;
        }
    }
}