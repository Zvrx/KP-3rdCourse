using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kursovik
{
    internal class Student
    {
        public int id { get; set; }
        public string ФИО { get; set; }
        public string Группа { get; set; }
        public string Пол { get; set; }
        public int Возвраст { get; set; }
        public string Специальность { get; set; }
        public int Курс { get; set; }
        public string Диагноз { get; set; }
        public string Примечания { get; set; }
        public string Дата { get; set; }
        public Student() { }
        public Student(string nName,string nGroup,string nGender,int nAge,string nSpec,int nCourse,string nDiagnosis,string nNotes)
        {
            ФИО = nName;
            Группа = nGroup;
            Пол = nGender;
            Возвраст = nAge;
            Специальность = nSpec;
            Курс = nCourse;
            Диагноз = nDiagnosis;
            Примечания = nNotes;
            DateTime obj = DateTime.Now;
            DateTime dateOnly = obj.Date;
            Дата = dateOnly.ToShortDateString();
        }
    }
}
