using SignalRSample.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SignalRSample.CoreProcess
{
    public class NotificationMessageRepository
    {
        private readonly string myConnectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        private readonly string queryString = @"SELECT [Id] ,[Type] ,[MessageContent] FROM [dbo].[NotificationMessage]";

        public IEnumerable<NotificationMessage> GetAllMessages()
        {
            var messages = new List<NotificationMessage>();
            using (var connection = new SqlConnection(myConnectionString))
            {
                connection.Open();
                using (var cmd = new SqlCommand(queryString, connection))
                {
                    var dependency = new SqlDependency(cmd);
                    dependency.OnChange += Dependency_OnChange;
                    if (connection.State == System.Data.ConnectionState.Closed)
                    {
                        connection.Open();
                    }
                    var reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        messages.Add(new NotificationMessage()
                        {
                            Id = Convert.ToInt32(reader["Id"]),
                            Type = Convert.ToBoolean(reader["Type"]),
                            MessageContent = Convert.ToString(reader["MessageContent"])
                        });
                    }
                }
            }
            return messages;
        }

        private void Dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (e.Type == SqlNotificationType.Change)
            {
                NotificationMessageHub.NotifyMessage();
            }
        }
    }
}