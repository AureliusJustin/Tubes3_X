using System;
using System.Collections.Generic;

namespace Tubes3_X
{
    class BM
    {
        private int[] last;
        public int minHammingScore = 31;
        public int[] BuildLast(string pattern)
        {
            int[] last = new int[256]; 
            for (int i = 0; i < 256; i++)
                last[i] = -1; 

            for (int i = 0; i < pattern.Length; i++)
                last[(int)pattern[i]] = i;

            return last;
        }

        public bool BMSearch(string text, string pattern)
        {
            int n = text.Length; // text
            int m = pattern.Length; // pattern

            int i = m - 1;  // text
            int j = m - 1;  // pattern
            
            if (i > n-1)
            {
                return false;
            }

            do
            {
                if (pattern[j] == text[i])
                {
                    if (j == 0)
                        return true; 
                    else // looking glass 
                    {
                        i--;
                        j--;
                    }
                }
                else // character jump
                {
                    int tempScore = HammingDistance.Calculate(pattern.Substring(0, j+1), text.Substring(i-j, j+1));
                    if(tempScore < this.minHammingScore)
                    {
                        this.minHammingScore = tempScore;
                    }
                    int lo = last[text[i]]; 
                    i = i + m - Math.Min(j, 1 + lo);
                    j = m - 1;
                }
            } while (i <= n - 1);

            return false; 
        }

        public string Handler(string pattern, string[] text)
        {
            int row = text.Length;
            this.last = BuildLast(pattern);
            
            for (int i = 0; i < row; i++)
            {
                if (BMSearch(text[i], pattern))
                {
                    this.minHammingScore = 0;
                    return text[i]; 
                }
            }
            return ""; 
        }
    }
}
