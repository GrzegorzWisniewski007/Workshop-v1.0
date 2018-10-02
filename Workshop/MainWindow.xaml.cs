using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Workshop.Models;

namespace Workshop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string _strConnection = "Filename=test1.litedb4; Mode=Exclusive;";

        public MainWindow()
        {
            InitializeComponent();
            var users = Read();
            UsersDataGrid.ItemsSource = users;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            string codeProd = "prod1";

            Create();
            //Read();
            //Delete();
        }

        private void button_Update(object sender, RoutedEventArgs e)
        {
            Users user = ((FrameworkElement)sender).DataContext as Users;
        }

        private void button_Delete(object sender, RoutedEventArgs e)
        {
            Users user = ((FrameworkElement)sender).DataContext as Users;
        }

        private void Create()
        {
            using(var db = new LiteDB.LiteDatabase(_strConnection))
            {
                var users = db.GetCollection<Users>("users"); // Get collection

                var user1 = new Users
                {
                    Id = Guid.NewGuid(),
                    FirstName = "Janek",
                    LastName = "Kowalski",
                    Email = "jan.kowalski@microsoft.com",
                };

                // insert user into db
                users.Insert(user1);
            }
        }

        private List<Users> Read()
        {
            using (var db = new LiteDB.LiteDatabase(_strConnection))
            {
                var users = db.GetCollection<Users>("users");
                users.EnsureIndex(x => x.Id);

                int count = users.Count();
                 var result = users.FindAll().ToList();
                //LINQ
                return result;
            }
        }

        private void Delete()
        {
            using(var db = new LiteDB.LiteDatabase(_strConnection))
            {
                var users = db.GetCollection<Users>("users");
                users.Delete(x => x.Id != null);
            }
        }
    }
}
