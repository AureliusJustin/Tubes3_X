using System.Diagnostics;

namespace Tubes3_X
{   
    class KMP
    {
        public static int[] CreateTableLPS(string pattern)
        {
            int[] arr = new int[pattern.Length];
            int len = 0;
            arr[0] = 0;

            for(int i=1; i<pattern.Length; i++){
                if(pattern[len] == pattern[i]){
                    len++;
                    arr[i] = len;
                } else if(len != 0){
                    len = arr[len-1];
                }
            }
            
            return arr;
        }
        public static bool Search(string pattern, string text)
        {
            // find prefix
            int[] lps = CreateTableLPS(pattern);
            int m = pattern.Length;
            int n = text.Length;

            // main algorithm
            int i = 0; // for text
            int j = 0; // for pattern

            while((n-i) >= (m-j)){
                if(text[i] == pattern[j]){
                    i++;
                    j++;
                }

                if(j == m){
                    // FOUND
                    j = lps[j - 1];
                    return true;
                }
                // mis match
                else if(i < n && pattern[j] != text[i]){
                    if (j != 0){
                        j = lps[j -1];
                    } else {
                        i++;
                    }
                }
            }

            // not found
            return false;
        }
        public static bool Handler(string pattern, string[] text)
        {
            int row = text.Length;
            for(int i=0; i<row; i++){
                if(Search(pattern, text[i])){
                    return true;
                }
            }
            // not found
            return false;
        }
    }
}