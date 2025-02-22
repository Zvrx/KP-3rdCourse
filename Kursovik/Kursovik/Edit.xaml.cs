﻿using System;
using System.Collections.Generic;
using System.Data;
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
    /// Логика взаимодействия для Edit.xaml
    /// </summary>
    public partial class Edit : Window
    {
        public string n;
        public Edit()
        {
            InitializeComponent();
        }
        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            string dataSource = "accounting.db";
            using (SQLiteConnection connection = new SQLiteConnection())
            {
                connection.ConnectionString = "Data Source=" + dataSource;
                connection.Open();
                using (SQLiteCommand command = new SQLiteCommand(connection))
                {
                    command.CommandText =
                        $@"UPDATE Students SET ФИО='{Name.Text}',Группа='{Group.Text}',Возвраст='{Age.Text}',Специальность='{Spec.Text}',Курс='{Course.Text}',Диагноз='{Diagnosis.Text}' WHERE ФИО = '{n}'; ";
                    command.ExecuteNonQuery();
                    if (command.ExecuteNonQuery() == 1)
                    {
                        MessageBox.Show("Информация обновлена");
                    }
                }
                StudentsList obj = new StudentsList();
                obj.Show();
                Close();
            }
        }
    }
}
