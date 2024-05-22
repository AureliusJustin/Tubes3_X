namespace Tubes3_X
{
    class BM
    {
        public static int Handler(string pattern, string text)
        {
            int m = pattern.Length;
    int n = text.Length;

    int[] badChar = new int[256];
    BadCharHeuristic(pattern, m, ref badChar);

    int s = 0;
    while (s <= (n - m))
    {
        int j = m - 1;

        while (j >= 0 && pattern[j] == text[s + j])
            j--;

        if (j < 0)
        {
            return s; // Match found at index s
        }
        else
        {
            s += Math.Max(1, j - badChar[(int)text[s + j]]);
        }
    }
    return -1; // No match found
}

private static void BadCharHeuristic(string str, int size, ref int[] badChar)
{
    for (int i = 0; i < 256; i++)
        badChar[i] = -1;

    for (int i = 0; i < size; i++)
        badChar[(int)str[i]] = i;
}
        }
    }
}