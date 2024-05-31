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

namespace Tubes3_X
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Database db = null;
        private string folder = "../../../Test/SOCOFing/Real/";
        private string inputFilePath = "";
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
            this.inputFilePath = folder + "250__F_Right_ring_finger.BMP";
            // this.inputFilePath = "../../../Test/SOCOFing/Altered/Altered-Medium/" + "2__F_Left_index_finger_Obl.BMP";
            string result = this.algo.AlgoMain(inputFilePath, "BM");

            if(result != ""){
                string personName = db.getNameFromImagePath(result);
                string regexPattern = RegexCustom.ConvertStringToRegexPattern(personName);

                ArrayList listNamaAlay = db.getAllAlayName();

                foreach (string namaAlay in listNamaAlay)
                {
                    if (Regex.IsMatch(namaAlay, regexPattern)) {
                        Biodata baru = db.getBiodataFromName(namaAlay);
                        break;
                    }
                }
            }
        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
            object selectedItem = ComboBox1.SelectedItem;

            if (selectedItem != null)
            {
                string? selectedText = selectedItem.ToString();

                // Use the selected item information
                MessageBox.Show(selectedText);
            }
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


        }

        private void Pilih_Citra(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog openFileDialog = new OpenFileDialog();
            bool? response = openFileDialog.ShowDialog();
            if (response == true)
            {
                string filepath = openFileDialog.FileName;
                MessageBox.Show(filepath);
                CitraPilihan.Source = new BitmapImage(new Uri(openFileDialog.FileName));

            }
            Console.WriteLine("Awikwok");
        }
    }
}