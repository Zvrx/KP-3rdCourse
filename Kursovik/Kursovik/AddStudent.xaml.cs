using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для AddStudent.xaml
    /// </summary>
    public partial class AddStudent : Window
    {
        public string s;
        public int a;
        public string g;
        AppContext db;
        public AddStudent()
        {
            InitializeComponent();
            db = new AppContext();
        }
        private void GoBack_Click(object sender, RoutedEventArgs e)
        {
            StudentsList studentsList = new StudentsList();
            studentsList.Show();
            Close();
        }
        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            string studentName = Name.Text;
            int age = Convert.ToInt32(Age.Text);
            string gender = g;
            string diagnosis = Diagnosis.Text;
            string speciality = Spec.Text;
            string notes = Notes.Text;
            Student student = new Student(studentName, s, gender, age, speciality, a, diagnosis, notes);
            db.students.Add(student);
            db.SaveChanges();
            Clear();
            MessageBox.Show("Студент был успешно добавлен");
        }
        public void Clear()
        {
            Name.Clear();
            Age.Clear();
            Diagnosis.Clear();
            Spec.Clear();
            Notes.Clear();
        }
        private void GroupsList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox comboBox = (ComboBox)sender;
            string  selectedItem = (string)comboBox.SelectedItem;
            s = Convert.ToString(selectedItem.ToString());
        }
        private void CourseList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox comboBox = (ComboBox)sender;
            string selectedItem = (string)comboBox.SelectedItem;
            a = Convert.ToInt32(selectedItem.ToString());
        }
        private void AddGroup_Click(object sender, RoutedEventArgs e)
        {
            AddGroup obj = new AddGroup();
            obj.Show();
            Close();
        }
        private void AddCourse_Click(object sender, RoutedEventArgs e)
        {
            AddCourse obj = new AddCourse();
            obj.Show();
            Close();
        }
        private void GenderList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox comboBox = (ComboBox)sender;
            ComboBoxItem selectedItem = (ComboBoxItem)comboBox.SelectedItem;
            g = selectedItem.Content.ToString();
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SQLiteConnection conn = new SQLiteConnection($"Data Source = { Environment.CurrentDirectory}\\accounting.db");
            SQLiteCommand command = new SQLiteCommand("SELECT номер fROM Course", conn);
            conn.Open();
            DbDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CourseList.Items.Add((string)reader["номер"]);
            }
            conn.Close();
            GroupsLoad();
        }
        public void GroupsLoad()
        {
            SQLiteConnection conn = new SQLiteConnection($"Data Source = { Environment.CurrentDirectory}\\accounting.db");
            SQLiteCommand command = new SQLiteCommand("SELECT номер fROM 'Group'", conn);
            conn.Open();
            DbDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                GroupsList.Items.Add((string)reader["номер"]);
            }
            conn.Close();
        }
    }
}
