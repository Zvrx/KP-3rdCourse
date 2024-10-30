using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Kursovik
{
    public partial class Otchet : Window
    {
        public Otchet()
        {
            InitializeComponent();
        }
        private void CreateBtn_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show($"Отчет был создан по слеждующему пути {Environment.CurrentDirectory}//export.doc");
            SourseGrid.SelectAllCells();
            SourseGrid.ClipboardCopyMode = DataGridClipboardCopyMode.IncludeHeader;
            ApplicationCommands.Copy.Execute(null, SourseGrid);
            SourseGrid.UnselectAllCells();
            var result = (string)Clipboard.GetData(DataFormats.Text);
            dynamic wordApp = null;
            try
            {
                var sw = new StreamWriter("export.doc");
                sw.WriteLine(result);
                sw.Close();
                //var proc = Process.Start("export.doc");
                Type wordType = Type.GetTypeFromProgID("Word.Application");
                wordApp = Activator.CreateInstance(wordType);
                wordApp.Documents.Add(System.AppDomain.CurrentDomain.BaseDirectory + "export.doc");
                wordApp.ActiveDocument.Range.ConvertToTable(1, SourseGrid.Items.Count, SourseGrid.Columns.Count);
            }
            catch (Exception ex)
            {
                if (wordApp != null)
                {
                    wordApp.Quit();
                }
            }
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SourseGrid.Visibility = Visibility.Hidden;
        }
        private void ChoiseTable_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ChoiseTable.SelectedIndex == 0)
            {
                RefreshTable("Дата","Students");
            }
            else
            {
                RefreshTable("Выписан","Archieve");
            }
        }
        private void RefreshTable(string param,string dataTable)
        {
            string baseName = "accounting.db";
            DataSet dataSet = new DataSet();
            string sql = $"SELECT * FROM {dataTable}";
            SQLiteFactory factory = (SQLiteFactory)DbProviderFactories.GetFactory("System.Data.SQLite");
            using (SQLiteConnection connection = (SQLiteConnection)factory.CreateConnection())
            {
                connection.ConnectionString = "Data Source = " + baseName;
                connection.Open();
                using (SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter(sql, connection))
                {
                    dataAdapter.Fill(dataSet);
                    SourseGrid.ItemsSource = dataSet.Tables[0].DefaultView;
                }
                connection.Close();
            }
        }
    }
}
