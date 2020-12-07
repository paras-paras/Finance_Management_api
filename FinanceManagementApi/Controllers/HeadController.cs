using FinanceManagementApi.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinanceManagementApi.Controllers
{
    public class HeadController : Controller
    {
        // GET: Head
        BackendClass backendClass = new BackendClass();

        public ActionResult HeadLogin()
        {
            return View();
        }
        public ActionResult tryAgain()
        {
            return View();
        }
        public ActionResult welcome()
        {
            return View();
        }

        [HttpPost]
        public ActionResult head_logincheck(Head_class Login)
        {
            //generate the query to check the user name or passwod
            String qry = "select * from Head_Login where Head_Name='" + Login.head_Name + "' and Head_Password='" + Login.head_Password + "'";
            DataTable tbl = new DataTable();

            int x =backendClass.Head_LoginCheck(qry);
            if (x > 0)
            {
                return View("welcome");
            }
            else
            {
                return View("tryAgain");
            }


        }


    }
}