using RentalHome.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHome.Controllers
{
    public class AdminLoginController : Controller
    {
        // GET: AdminLogin
        public ActionResult AdminLogin()
        {
            return View();
        }



        [HttpPost]
        public ActionResult verifyCheck(Login login)
        {
            //Pass the data to store the record into the table 

            DataTable tbl = new DataTable();
            SQLConnection conn = new SQLConnection();
            tbl = conn.EnterLogin("select * from LoginDetails where LoginName='" + login.LoginName + "'and LoginPassword='" + login.LoginPassword + "'");

            if (tbl.Rows.Count > 0)
            {
                return View("Valid");
            }
            else
            {
                return View("inValid");
            }
        }

        // GET: AdminLogin
        public ActionResult Valid()
        {
            return View();
        }

        // GET: AdminLogin
        public ActionResult inValid()
        {
            return View();
        }




    }
}