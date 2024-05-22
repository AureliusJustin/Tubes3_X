using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Text;

namespace Tubes3_X
{
    class Util
    {
        public static string FileToChar(string filePath)
        {
            Bitmap img = new Bitmap(filePath);
            // Bitmap blackAndWhite = ConvertToBlackAndWhite(img);
            int[,] bitMap = ConvertToBlackAndWhite(img);

            ConvertArrayToBitmap(bitMap);

            // string outputPath = "../../../Test/result.bmp";
            // blackAndWhite.Save(outputPath);
            int row = bitMap.GetLength(0);
            int col = bitMap.GetLength(1);
            
            StringBuilder charBuilder = new StringBuilder();

            for(int i=0; i<row; i++){
                int charValue = 0;
                for (int j = 0; j < col; j++)
                {
                    charValue = (charValue << 1) | bitMap[i, j]; // Shift and add the binary value
                    if ((j + 1) % 8 == 0) // If we have 8 bits, convert to character
                    {
                        if(charValue > 255)
                        {
                            Console.WriteLine(charValue);
                        }
                        charBuilder.Append(Convert.ToChar(charValue));
                        charValue = 0; // Reset charValue for the next 8 bits
                    }
                }
            }
            // Console.WriteLine(fileContent);
            // Console.WriteLine("AWIAIWJIAWJ");

            byte[] utf8Bytes = Encoding.UTF8.GetBytes(charBuilder.ToString());
            File.WriteAllText("../../../Test/result.txt", charBuilder.ToString());
            return Encoding.UTF8.GetString(utf8Bytes);
        }

        static int[,] ConvertToBlackAndWhite(Bitmap bitmap)
        {
            // Create a new bitmap with the same dimensions as the original
            int[,] blackAndWhiteBitmap = new int[bitmap.Height, bitmap.Width];
            Console.WriteLine(bitmap.Height);
            Console.WriteLine(bitmap.Width);


            // Loop through each pixel in the original bitmap
            for (int y = 0; y < bitmap.Height; y++)
            {
                for (int x = 0; x < bitmap.Width; x++)
                {
                    // Get the color of the pixel
                    Color color = bitmap.GetPixel(x, y);

                    // Calculate the brightness of the pixel using the luminosity method
                    int brightness = (int)(0.21 * color.R + 0.72 * color.G + 0.07 * color.B);

                    // Set the pixel in the black and white bitmap based on brightness
                    if (brightness >= 130) // Adjust threshold as needed
                    {
                        blackAndWhiteBitmap[y, x] = 0;
                    }
                    else
                    {
                        blackAndWhiteBitmap[y, x] = 1;
                    }
                }
            }

            return blackAndWhiteBitmap;
        }

        static void ConvertArrayToBitmap(int[,] array)
        {
            int row = array.GetLength(0);
            int col = array.GetLength(1);

            Bitmap bitmap = new Bitmap(col, row);

            for(int i=0; i<row; i++)
            {
                for(int j=0; j<col; j++)
                {
                    Color color = array[i, j] == 0 ? Color.White : Color.Black;
                    bitmap.SetPixel(j, i, color);
                }
            }

            bitmap.Save("../../../Test/test.bmp");
        }
    }
}