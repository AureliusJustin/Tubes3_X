using System;
using System.Collections.Generic;

namespace Tubes3_X
{
    class BM
    {
        private int[] BuildLastOccurrenceTable(string pattern)
        {
            int[] last = new int[256]; 
            for (int i = 0; i < 256; i++)
            {
                last[i] = -1; 
            }
            for (int i = 0; i < pattern.Length; i++)
            {
                last[(int)pattern[i]] = i; 
            }
            return last;
        }

        public List<int> Search(string[] text, string pattern)
        {
            List<int> result = new List<int>();
            int[] last = BuildLastOccurrenceTable(pattern);
            int n = text.Length;
            int m = pattern.Length;
            int s = 0; 

            while (s <= (n - m))
            {
                int j = m - 1;

                while (j >= 0 && pattern[j] == text[s + j])
                {
                    j--;
                }

                if (j < 0)
                {
                    result.Add(s);
                    s += (s + m < n) ? m - last[text[s + m]] : 1;
                }
                else
                {
                    s += Math.Max(1, j - last[text[s + j]]);
                }
            }

            return result;
        }

        public void Handler(string pattern, string[] text)
        {

            List<int> matches = Search(text, pattern);

            Console.WriteLine("Pattern found at positions : " + string.Join(", ", matches));
        }
    }
}
