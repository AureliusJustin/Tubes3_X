using System.Collections;
using System.Data.Common;

namespace Tubes3_X
{
    class Algorithm
    {
        public int hammingDistanceScore = 31;
        public string closestImagePath = "";
        private Database db;
        public Algorithm(Database db)
        {
            this.db = db;
        }
        public string AlgoMain(string fileSrc, string algo)
        {
            // reset var
            this.hammingDistanceScore = 31;
            this.closestImagePath = "";

            // create PATTERN
            string[] s1 = Util.FileToChar(fileSrc);
            string pattern = Util.GetPattern(s1);

            Console.WriteLine(s1);
            Console.WriteLine(s1.Length);
            Console.WriteLine(pattern);

            // Setup TEXT
            ArrayList listImagePath = this.db.getAllImagePath();

            foreach(var img in listImagePath)
            {
                string fileTarget = "../../../" + img;
                string[] s2 = Util.FileToChar(fileTarget);

                // choose algo to use
                if(algo == "KMP"){
                    KMP k = new KMP();
                    string result = k.Handler(pattern, s2);

                    if(result != "") {
                        Console.WriteLine("Pattern FOUND");
                        Console.WriteLine(pattern);
                        Console.WriteLine(result);
                        this.hammingDistanceScore = 0;
                        return img.ToString();
                    } else {
                        if(k.minHammingScore < this.hammingDistanceScore)
                        {
                            this.hammingDistanceScore = k.minHammingScore;
                            this.closestImagePath = img.ToString();
                        }
                        Console.WriteLine("Pattern Not Found!");
                    }
                } else if(algo == "BM"){
                    BM b = new BM();
                    string result = b.Handler(pattern, s2);

                    if(result != "") {
                        Console.WriteLine("Pattern FOUND");
                        Console.WriteLine(pattern);
                        Console.WriteLine(result);
                        this.hammingDistanceScore = 0;
                        return img.ToString();
                    } else {
                        if(b.minHammingScore < this.hammingDistanceScore)
                        {
                            this.hammingDistanceScore = b.minHammingScore;
                            this.closestImagePath = img.ToString();
                        }
                        Console.WriteLine("Pattern Not Found!");
                    }
                }
            }

            Console.WriteLine("Result: " + this.closestImagePath);
            Console.WriteLine("Hamming Distance: " + this.hammingDistanceScore);
            return this.closestImagePath;
        }
    }
}