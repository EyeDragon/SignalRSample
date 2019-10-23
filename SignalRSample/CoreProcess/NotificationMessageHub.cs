using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SignalRSample.CoreProcess
{
    public class NotificationMessageHub : Hub
    {
        [HubMethodName("notifyMessages")]
        public static void NotifyMessage()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<NotificationMessageHub>();
            context.Clients.All.updateMessages();
        }
    }
}