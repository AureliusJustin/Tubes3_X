using Microsoft.Win32;
using System.Collections;
using System.Diagnostics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Text.RegularExpressions;
using System.Drawing;
using System.IO;
using System.Windows.Forms;


namespace Tubes3_X
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Database db = null;
        private string inputFilePath = "";
        private string inputAlgo = "";
        private Algorithm algo;


        public MainWindow()
        {
            try {
                // initialize UI
                InitializeComponent();

                

                // initialize Database
                this.db = new Database();
                db.init();

                // initialize algorithm
                this.algo = new Algorithm(this.db);

                

            } catch (Exception e) {
                Console.WriteLine(e);
            }
            
        }

        

        public void WindowExit(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Console.WriteLine("Exited program");
            this.db.closeConnection();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // search button clicked
            // this.inputFilePath = folder + "250__F_Right_ring_finger.BMP";
            // this.inputFilePath = "../../../Test/SOCOFing/Altered/Altered-Medium/" + "2__F_Left_index_finger_Obl.BMP";
            Label lnama = (Label)Nama;
            Label ltempatlahir = (Label)TempatLahir;
            Label ltanggallahir = (Label)TanggalLahir;
            Label lkelamin = (Label)Kelamin;
            Label lgoldar = (Label)Goldar;
            Label lalamat = (Label)Alamat;
            Label lagama = (Label)Agama;
            Label lstatus = (Label)Status;
            Label lpekerjaan = (Label)Pekerjaan;
            Label lkewarganegaraan = (Label)Kewarganegaraan;

            lnama.Content = "";
            ltempatlahir.Content = "";
            ltanggallahir.Content = "";
            lkelamin.Content = "";
            lgoldar.Content = "";
            lalamat.Content = "";
            lagama.Content = "";
            lstatus.Content = "";
            lpekerjaan.Content = "";
            lkewarganegaraan.Content = "";

            string result = this.algo.AlgoMain(this.inputFilePath, "BM");

            if(result != ""){
                string personName = db.getNameFromImagePath(result);
                string regexPattern = RegexCustom.ConvertStringToRegexPattern(personName);

                ArrayList listNamaAlay = db.getAllAlayName();
                string namaAlay = "";
                foreach (string x in listNamaAlay)
                {
                    if (Regex.IsMatch(x, regexPattern)) {
                        namaAlay = x;
                        break;
                    }
                }

                Biodata baru = db.getBiodataFromName(namaAlay);
                

                lnama.Content = baru.nama;
                ltempatlahir.Content = baru.tempatLahir;
                ltanggallahir.Content = baru.tanggalLahir;
                lkelamin.Content = baru.kelamin;
                lgoldar.Content = baru.goldar;
                lalamat.Content = baru.alamat;
                lagama.Content = baru.agama;
                lstatus.Content = baru.statusPerkawinan;
                lpekerjaan.Content = baru.pekerjaan;
                lkewarganegaraan.Content = baru.kewarganegaraan;








                /*      Label Kw = new Label();
                      Kw = (Label)this.FindControl("Kewarganegaraan" + i.ToString()) as Label;
                      Kw.Text = "wkwk";*/

                Console.WriteLine(baru.nama);
                Console.WriteLine(baru.nik);
                
                // CARA NAMPILIN PERSENTASE
                Console.WriteLine("Akurasi: " + (((float)(30 - this.algo.hammingDistanceScore)) / 30.0 * 100.0) + "%"); 
                Console.WriteLine("Hamming Distance: " + this.algo.hammingDistanceScore);
                string workingDirectory = Environment.CurrentDirectory;
                string projectDirectory  = Directory.GetParent(workingDirectory).Parent.Parent.FullName;
                CitraHasil.Source = new BitmapImage(new Uri(projectDirectory + "/" + result));
            }
        }
        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBoxItem selectedItem = (ComboBoxItem) ComboBox1.SelectedItem;
            

            if (selectedItem != null)
            {
                string selectedText = selectedItem.Content.ToString();

                // Use the selected item information
                this.inputAlgo = selectedText;
                MessageBox.Show(selectedText);
            }
        }
        private void Pilih_Citra(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog openFileDialog = new OpenFileDialog();
            bool? response = openFileDialog.ShowDialog();
            if (response == true)
            {
                string filepath = openFileDialog.FileName;
                MessageBox.Show(filepath);
                this.inputFilePath = filepath;
                CitraPilihan.Source = new BitmapImage(new Uri(openFileDialog.FileName));
            }
            Console.WriteLine("Awikwok");
        }
    }
}