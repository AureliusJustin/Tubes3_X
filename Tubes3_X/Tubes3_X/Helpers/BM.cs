using System;
using System.Collections.Generic;

namespace Tubes3_X
{
    class BM
    {
        public static int[] BuildLast(string pattern)
        {
            int[] last = new int[256]; 
            for (int i = 0; i < 256; i++)
                last[i] = -1; 

            for (int i = 0; i < pattern.Length; i++)
                last[(int)pattern[i]] = i;

            return last;
        }

        public static int BMSearch(string text, string pattern)
        {
            int n = text.Length;
            int m = pattern.Length;

            int[] last = BuildLast(pattern);

            int i = m - 1; 
            int j = m - 1; 

            do
            {
                if (pattern[j] == text[i])
                {
                    if (j == 0)
                        return i; 
                    else
                    {
                        i--;
                        j--;
                    }
                }
                else
                {
                    int lo = last[text[i]]; 
                    i = i + m - Math.Min(j, 1 + lo);
                    j = m - 1;
                }
            } while (i <= n - 1);

            return -1; 
        }

        public static bool Handler(string pattern, string[] text)
        {
            int row = text.Length;
            for (int i = 0; i < row; i++)
            {
                if (BMSearch(text[i], pattern) != -1)
                {
                    return true; 
                }
            }
            return false; 
        }
    }
}
