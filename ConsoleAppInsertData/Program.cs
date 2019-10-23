using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleAppInsertData
{
    class Program
    {
        static void Main(string[] args)
        {
            NotificationMessageRepository notificationMessage = new NotificationMessageRepository();
            while (true) {
                Console.Write("Input type: 0 (alert) / 1 (notification): ");
                bool type = Convert.ToInt32(Console.ReadLine()) == 1;
                Console.WriteLine();
                Console.Write("Input message: ");
                string message = Console.ReadLine();
                bool result = notificationMessage.InsertMessage(type, message);
                Console.WriteLine("Insert {0}", result ? "success" : "fail");
                Console.WriteLine("Continue (Y/N)?");
                bool yn = Console.ReadLine() == "y";
                if (!yn) {
                    break;
                }
            }
            Console.ReadLine();
        }
    }

    public class NotificationMessageRepository
    {
        private readonly string myConnectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        private readonly string queryString = @"INSERT INTO [dbo].[NotificationMessage] ([Type] ,[MessageContent]) VALUES (@type, @message)";

        public bool InsertMessage(bool type, string message)
        {
            bool result = false;
            using (var connection = new SqlConnection(myConnectionString)) {
                connection.Open();
                using (var cmd = new SqlCommand(queryString, connection)) {
                    if (connection.State == System.Data.ConnectionState.Closed) {
                        connection.Open();
                    }
                    cmd.Parameters.Add("@type", System.Data.SqlDbType.Bit).Value = type;
                    cmd.Parameters.Add("@message", System.Data.SqlDbType.NVarChar, 250).Value = message;
                    cmd.CommandType = System.Data.CommandType.Text;
                    result = cmd.ExecuteNonQuery() > 0;
                }
            }
            return result;
        }
    }
}
