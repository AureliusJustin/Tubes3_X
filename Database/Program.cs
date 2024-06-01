// See https://aka.ms/new-console-template for more information

using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Security.Cryptography;

namespace Database
{

    public class DatabaseSetup
    {
        public static void Main(string[] args)
        {
            string inputFilePath = "../../../database/tubes3_stima24.sql";  // Path to your input SQL file
            string outputFilePath = "../../../database_output/output_encrypted.sql";  // Path to the output SQL file

            string fileContent = File.ReadAllText(inputFilePath);

            // Regular expression to match INSERT INTO statements
            string pattern = @"INSERT INTO (biodata|sidik_jari) \((.*?)\) VALUES \((.*?)\);";

            // Match the INSERT INTO statements
            var matches = Regex.Matches(fileContent, pattern, RegexOptions.IgnoreCase);

            foreach (Match match in matches)
            {
                string type = match.Groups[1].Value;
                string columns = match.Groups[2].Value;
                string values = match.Groups[3].Value;

                // Split the values and encrypt each value
                string[] valueArray = SplitValues(values);

                for (int i = 0; i < valueArray.Length; i++)
                {
                    if(valueArray[i] != "'Perempuan'" && valueArray[i] != "'Laki-Laki'")
                    {
                        valueArray[i] = "'" + AesEncryption.Encrypt(valueArray[i].Trim('\'')) + "'";
                    }
                }

                // Create new INSERT INTO statement with encrypted values
                string newValues = string.Join(", ", valueArray);
                string newInsertStatement = "";
                if(type == "biodata")
                {
                    newInsertStatement = $"INSERT INTO biodata ({columns}) VALUES ({newValues});";
                }
                else if(type == "sidik_jari")
                {
                    newInsertStatement = $"INSERT INTO sidik_jari ({columns}) VALUES ({newValues});";
                }

                // Replace the old statement with the new one
                fileContent = fileContent.Replace(match.Value, newInsertStatement);
            }

            // change the DDL
            fileContent = fileContent.Replace("`NIK` varchar(16) NOT NULL,", "`NIK` varchar(30) NOT NULL,");
            fileContent = fileContent.Replace("`tanggal_lahir` date DEFAULT NULL,", "`tanggal_lahir` varchar(50) DEFAULT NULL,");
            fileContent = fileContent.Replace("`golongan_darah` varchar(5) DEFAULT NULL,", "`golongan_darah` varchar(30) DEFAULT NULL,");
            fileContent = fileContent.Replace("`status_perkawinan` enum('Belum Menikah','Menikah','Cerai') DEFAULT NULL,", "`status_perkawinan` varchar(32) DEFAULT NULL,");

            // Write the modified content to the new SQL file
            File.WriteAllText(outputFilePath, fileContent);

            Console.WriteLine("Encrypted SQL insert statements created.");
        }

        static string[] SplitValues(string values)
        {
            var valueList = new List<string>();
            var sb = new StringBuilder();
            bool inString = false;

            foreach (char c in values)
            {
                if (c == '\'' && (sb.Length == 0 || sb[sb.Length - 1] != '\\'))
                {
                    inString = !inString;
                }

                if (c == ',' && !inString)
                {
                    valueList.Add(sb.ToString().Trim());
                    sb.Clear();
                }
                else
                {
                    sb.Append(c);
                }
            }

            if (sb.Length > 0)
            {
                valueList.Add(sb.ToString().Trim());
            }

            return valueList.ToArray();
        }
    }
}