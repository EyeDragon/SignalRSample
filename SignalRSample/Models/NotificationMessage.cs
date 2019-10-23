using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace SignalRSample.Models
{
    public class NotificationMessage
    {
        [DisplayName("Id")]
        public int Id { get; set; }
        [DisplayName("Type of message")]
        public bool Type { get; set; }
        [DisplayName("Message")]
        public string MessageContent { get; set; }
    }
}