namespace Tubes3_X
{
    class HammingDistance
    {
        public static int HammingDistance(string s1, string s2)
        {
            // Cek apakah panjang string sama.
            if (s1.Length != s2.Length)
            {
                throw new ArgumentException("Panjang String harus sama!");
            }

            // Hitung distance
            int dist = 0;
            for (int i = 0; i < s1.Length; i++)
            {
                // Jika Character pada index ke-i pada kedua string berbeda, maka tambah dist (distance).
                if (s1[i] != s2[i])
                {
                    dist++;
                }
            }

            return dist;
        }
    }
}