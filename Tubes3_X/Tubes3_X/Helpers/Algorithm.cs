namespace Tubes3_X
{
    class Algorithm
    {
        public static void AlgoMain(string fileSrc, string algo)
        {
            // create string for matching
            string[] s1 = Util.FileToChar(fileSrc);

            Console.WriteLine(s1);
            Console.WriteLine(s1.Length);

            string folder = "../../../Test/SOCOFing/SOCOFing/Real/";
            string fileTarget = folder + "3__M_Left_index_finger.bmp";

            string[] s2 = Util.FileToChar(fileTarget);

            string pattern = Util.GetPattern(s1);

            Console.WriteLine(pattern);

            // choose algo to use
            if(algo == "KMP"){
                KMP k = new KMP();

            } else if(algo == "BM"){
                BM b = new BM();

            }
        }
    }
}