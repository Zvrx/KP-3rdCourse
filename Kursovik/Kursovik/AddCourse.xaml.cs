using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для AddCourse.xaml
    /// </summary>
    public partial class AddCourse : Window
    {
        public SQLiteConnection sqlite_conn;
        public SQLiteCommand sqlite_cmd;
        public AddCourse()
        {
            InitializeComponent();
            sqlite_conn = new SQLiteConnection($"Data Source = {Environment.CurrentDirectory}\\accounting.db");
            sqlite_cmd = sqlite_conn.CreateCommand();
        }
        private void ReturnBtn_Click(object sender, RoutedEventArgs e)
        {
            AddStudent obj = new AddStudent();
            obj.Show();
            Close();
        }
        private void AddPatient_Click(object sender, RoutedEventArgs e)
        {
            sqlite_conn.Open();
            sqlite_cmd.CommandText = $"INSERT INTO Course (номер) VALUES ({Convert.ToInt32(num.Text)})";
            sqlite_cmd.ExecuteNonQuery();
            sqlite_conn.Close();
            MessageBox.Show("Курс был успешно добавлен");
        }
    }
}
