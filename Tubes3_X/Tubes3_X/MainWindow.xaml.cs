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

namespace Tubes3_X
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            try {
                InitializeComponent();
            } catch (Exception e) {
                Console.WriteLine(e);
            }
            Trace.WriteLine("text");
            string folder = "../../../Test/SOCOFing/SOCOFing/Real/";
            string fileSrc = folder + "1__M_Left_index_finger.bmp";
            Algorithm.AlgoMain(fileSrc, "KMP");

            Database db = new Database();
            db.init();
            db.getAllName();
            db.closeConnection();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // Massage.
        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}