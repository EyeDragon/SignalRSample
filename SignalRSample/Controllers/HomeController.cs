using SignalRSample.CoreProcess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SignalRSample.Controllers
{
    public class HomeController : Controller
    {
        private NotificationMessageRepository notificationMessage = new NotificationMessageRepository();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult GetMessages()
        {
            var result = notificationMessage.GetAllMessages();
            return PartialView("_MessagesList", result);
        }
    }
}