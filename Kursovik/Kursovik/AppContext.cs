﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace Kursovik
{
    internal class AppContext:DbContext
    {
        public DbSet<Student> students { get; set; }
        public AppContext():base("DefaultConnection")
        { }
    }
}
