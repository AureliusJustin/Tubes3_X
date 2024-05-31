namespace Tubes3_X
{
    public class RegexCustom
    {
        public static string ConvertStringToRegexPattern(string input)
        {
            // Inisialisasi Pattern kosong.
            string pattern = "";

            // Buat regex untuk tiap char pada input
            foreach (char c in input)
            {
                // Ambil versi Huruf kapital dan Huruf kecil dari char tersebut
                char upperChar = char.ToUpper(c);
                char lowerChar = char.ToLower(c);
                
                // Buat pattern untuk tiap char;
                string charPattern = $"[{upperChar}{lowerChar}";

                // Tambah angka untuk char yang memiliki angka alay yang ekuivalen
                switch (lowerChar)
                {
                    case 'a':
                        charPattern += "4";
                        break;
                    case 'e':
                        charPattern += "3";
                        break;
                    case 'g':
                        charPattern += "6";
                        break;
                    case 's':
                        charPattern += "5";
                        break;
                    case 'i':
                        charPattern += "1";
                        break;
                    case 'o':
                        charPattern += "0";
                        break;
                }

                charPattern += "]?";
                pattern += charPattern;
            }
            
            // Return regex pattern untuk input
            return $"^{pattern}$";
        }
    }
}