using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SQLite;
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
    /// <summary>
    /// Логика взаимодействия для AddGroup.xaml
    /// </summary>
    public partial class AddGroup : Window
    {
        public SQLiteConnection sqlite_conn;
        public SQLiteCommand sqlite_cmd;
        public AddGroup()
        {
            sqlite_conn = new SQLiteConnection($"Data Source = {Environment.CurrentDirectory}\\accounting.db");
            sqlite_cmd = sqlite_conn.CreateCommand();
            InitializeComponent();
        }
        private void AddGroup_Click(object sender, RoutedEventArgs e)
        {
            sqlite_conn.Open();
            sqlite_cmd.CommandText = $"INSERT INTO 'Group' (номер,специальность) VALUES ('{TextBoxNum.Text}','{TextBoxSpec.Text}')";
            sqlite_cmd.ExecuteNonQuery();
            sqlite_conn.Close();
            MessageBox.Show("Группа была успешно добавлена");
            Window_Loaded(null, null);
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string baseName = "accounting.db";
            DataSet dataSet = new DataSet();
            string sql = @"SELECT * FROM 'Group'";
            SQLiteFactory factory = (SQLiteFactory)DbProviderFactories.GetFactory("System.Data.SQLite");
            using (SQLiteConnection connection = (SQLiteConnection)factory.CreateConnection())
            {
                connection.ConnectionString = "Data Source = " + baseName;
                connection.Open();
                using (SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter(sql, connection))
                {
                    dataAdapter.Fill(dataSet);
                    StudentssGrid.ItemsSource = dataSet.Tables[0].DefaultView;
                }
                connection.Close();
            }
        }
        private void GoBack_Click(object sender, RoutedEventArgs e)
        {
            AddStudent obj = new AddStudent();
            obj.Show();
            Close();
        }
        private void DeleteStudent_Click(object sender, RoutedEventArgs e)
        {
            DataRowView dataRow = (DataRowView)StudentssGrid.SelectedItem;
            string i = Convert.ToString(dataRow.Row.ItemArray[0]);
            string a = Convert.ToString(dataRow.Row.ItemArray[1]);
            DataRowView row = (DataRowView)StudentssGrid.SelectedItem;
            row.Row.Delete();
            sqlite_conn.Open();
            sqlite_cmd.CommandText = $"DELETE FROM 'Group' WHERE номер = {i} AND специальность = {a}";
            sqlite_cmd.ExecuteNonQuery();
            sqlite_conn.Close();
            MessageBox.Show("Группа была успешно удалена");
            Window_Loaded(null, null);
        }
    }
}
