using FinanceManagementApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinanceManagementApi.Controllers
{
    public class HomeController : Controller
    {
        // GET: Member
        FinanceManagementAPIEntities finance = new FinanceManagementAPIEntities();

        public ActionResult viewfeedback()
        {
            

            return View(finance.Feedbacks.ToList());
        }

        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Title = "Home Page";

            return View();
        }


        public ActionResult Contact()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult GoodLuck()
        {
            ViewBag.Title = "Home Page";

            return View();
        }


        // GET: Member/Delete/5
        public ActionResult Delete(Feedback feedback)
        {
            var d = finance.Feedbacks.Where(x => x.id == feedback.id).FirstOrDefault();
            finance.Feedbacks.Remove(d);
            finance.SaveChanges();
            return RedirectToAction("viewfeedback");
        }

        [HttpPost]
        public ActionResult UserMessage(ContactClass contact)
        {
            //generate the query to check the user name or passwod
            String qry = "insert into Feedback(Name,Email,Contact,Message) values('" + contact.user_Name + "','" + contact.user_Email+ "','" + contact.user_Contact + "','" + contact.user_Message + "')";

            BackendClass connection = new BackendClass();
             connection.contactTest(qry);
            return View("GoodLuck");
            


        }




    }
}
