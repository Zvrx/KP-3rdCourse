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
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MessageBox = System.Windows.MessageBox;

namespace Kursovik
{
    /// <summary>
    /// Логика взаимодействия для StudentsList.xaml
    /// </summary>
    public partial class StudentsList : Window
    {
        public string i;
        AppContext DB = new AppContext();
        public StudentsList()
        {
            InitializeComponent();
        }
        private void GoBackLabel_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Menu menu = new Menu();
            menu.Show();
            Close();
        }
        private void AddStudent_Click(object sender, RoutedEventArgs e)
        {
            AddStudent student = new AddStudent();
            student.Show();
            Close();
        }
        public void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string baseName = "accounting.db";
            DataSet dataSet = new DataSet();
            string sql = @"SELECT * FROM Students";
            SQLiteFactory factory = (SQLiteFactory)DbProviderFactories.GetFactory("System.Data.SQLite");
            using (SQLiteConnection connection = (SQLiteConnection)factory.CreateConnection())
            {
                connection.ConnectionString = "Data Source = " + baseName;
                connection.Open();
                using (SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter(sql, connection))
                {
                    dataAdapter.Fill(dataSet);
                    StudentssGrid.ItemsSource = dataSet.Tables[0].DefaultView;
                    StudentssGrid.Columns[9].Visibility = Visibility.Hidden;
                }
                connection.Close();
            }
        }
        private void DeleteStudent_Click(object sender, RoutedEventArgs e)
        {
            if(!Check())
            {
                MessageBox.Show("Не выбрана запись!");
            }
            else
            {
                Transport(sender, e);
            }
        }
        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            Window_Loaded(sender, e);
        }
        private void ArchieveButton_Click(object sender, RoutedEventArgs e)
        {
            StudentsArchieve archieve = new StudentsArchieve();
            archieve.Show();
            Close();
        }
        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string param = TextBoxName.Text;
            string value = "ФИО";
            SearchFunc(value, param);
        }
        private void SearchByGroupBtn_Click(object sender, RoutedEventArgs e)
        {
            string param = TextBoxGroup.Text;
            string value = "Группа";
            SearchFunc(value, param);
        }
        private void SearchByCourseBtn_Click(object sender, RoutedEventArgs e)
        {
            string param = TextBoxCourse.Text;
            string value = "Курс";
            SearchFunc(value, param);
        } 
        public void SearchFunc(string Value,string param)
        {
            if(!SeasrchCheck(param))
            {
                MessageBox.Show("Нужно заполнить поле");
            }
            else
            {
                try
                {
                    string baseName = "accounting.db";
                    DataSet dataSet = new DataSet();
                    string sql = $@"SELECT*FROM Students WHERE {Value}='{param}'";
                    SQLiteFactory factory = (SQLiteFactory)DbProviderFactories.GetFactory("System.Data.SQLite");
                    using (SQLiteConnection connection = (SQLiteConnection)factory.CreateConnection())
                    {
                        connection.ConnectionString = "Data Source = " + baseName;
                        connection.Open();
                        using (SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter(sql, connection))
                        {
                            dataAdapter.Fill(dataSet);
                            DataTable at = new DataTable("Students");
                            dataAdapter.Fill(at);
                            if(at.Rows.Count < 1)
                            {
                                MessageBox.Show("Ничего не найденно");
                            }
                            StudentssGrid.ItemsSource = at.DefaultView;
                        }
                        connection.Close();
                    }
                    Clear();
                }
                catch(Exception e)
                {
                    MessageBox.Show(e.Message);
                    Clear();
                }
                
            }
        }
        public bool Check()
        {
            return StudentssGrid.SelectedItems.Count >= 1;
        }
        public bool SeasrchCheck(string param)
        {
            return param.Length != 0;
        }
        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            if (!Check())
            {
                MessageBox.Show("Не выбрана запись!");
            }
            else
            {
                DataRowView dataRow = (DataRowView)StudentssGrid.SelectedItem;
                i = Convert.ToString(dataRow.Row.ItemArray[0]);
                Edit obj = new Edit();
                obj.Spec.Text = Convert.ToString(dataRow.Row.ItemArray[4]);
                obj.Name.Text = Convert.ToString(dataRow.Row.ItemArray[0]);
                obj.Group.Text = Convert.ToString(dataRow.Row.ItemArray[1]);
                obj.Diagnosis.Text = Convert.ToString(dataRow.Row.ItemArray[6]);
                obj.Course.Text = Convert.ToString(dataRow.Row.ItemArray[5]);
                obj.Age.Text = Convert.ToString(dataRow.Row.ItemArray[3]);
                obj.Show();
                obj.n = Convert.ToString(dataRow.Row.ItemArray[0]);
                Close();
            }
        }
        public void Clear()
        {
            TextBoxName.Clear();
            TextBoxGroup.Clear();
            TextBoxCourse.Clear();
        }
        public void Transport(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Переместить запись в архив?", " ", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                DataRowView dataRow = (DataRowView)StudentssGrid.SelectedItem;
                string sur = Convert.ToString(dataRow.Row.ItemArray[0]);
                string Gender = Convert.ToString(dataRow.Row.ItemArray[1]);
                string Group = Convert.ToString(dataRow.Row.ItemArray[2]);
                string spec = Convert.ToString(dataRow.Row.ItemArray[4]);
                string age = Convert.ToString(dataRow.Row.ItemArray[3]);
                string course = Convert.ToString(dataRow.Row.ItemArray[5]);
                string diagnosis = Convert.ToString(dataRow.Row.ItemArray[6]);
                string notes = Convert.ToString(dataRow.Row.ItemArray[7]);
                SQLiteConnection sqlite_conn = new SQLiteConnection("Data Source=accounting.db;Version=3;New=False;Compress=True;");
                sqlite_conn.Open();
                SQLiteCommand sqlite_cmd = sqlite_conn.CreateCommand();
                DateTime obj = DateTime.Now;
                DateTime dateOnly = obj.Date;
                string date = dateOnly.ToShortDateString();
                sqlite_cmd.CommandText =
                $@"INSERT INTO archieve
                (
                    ФИО,
                    Группа,
                    Пол,
                    Возвраст,
                    Специальность,
                    Курс,
                    Диагноз,
                    Примечания,
                    Выписан
                )
                VALUES
                ('{sur}', '{Gender}', '{Group}',{age},'{spec}',{course},'{diagnosis}','{notes}','{date}')";
                sqlite_cmd.ExecuteNonQuery();
                sqlite_conn.Close();
                Delete();
            }
            else if (result == MessageBoxResult.No)
            {
                Delete();
            }
        }
        public void Delete()
        {
            DataRowView dataRow = (DataRowView)StudentssGrid.SelectedItem;
            string a = Convert.ToString(dataRow.Row.ItemArray[0]);
            DataRowView row = (DataRowView)StudentssGrid.SelectedItem;
            row.Row.Delete();
            SQLiteConnection conn = new SQLiteConnection("Data Source=accounting.db");
            conn.Open();
            SQLiteCommand cmd = conn.CreateCommand();
            string sql_delete = $"DELETE FROM Students WHERE ФИО = '{a}'";
            cmd.CommandText = sql_delete;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SQLiteException ex)
            {
                MessageBox.Show(ex.Message);
            }
            conn.Close();
            Window_Loaded(null, null);
        }
    }
}
