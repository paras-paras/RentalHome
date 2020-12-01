using RentalHome.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHome.Controllers
{
    public class HomeController : Controller
    {
        RentalHomeEntities instance = new RentalHomeEntities();

        public ActionResult ViewAllContact()
        {
            return View(instance.ContactDetails.ToList());
        }
        // GET: Employee/Delete/5
        public ActionResult Delete(ContactDetail cont)
        {

            var d = instance.ContactDetails.Where(x => x.id == cont.id).FirstOrDefault();
            instance.ContactDetails.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("ViewAllContact");

        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        public ActionResult Gallery()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        public ActionResult Services()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }


        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public ActionResult PassQuery(Contact contact)
        {
            //Pass the data to store the record into the table 

            SQLConnection conn = new SQLConnection();
            conn.sendMessage("insert into ContactDetails(Name,Contact,Email,Message) values('" + contact.Name + "','"+contact.Phone+"','" + contact.Email + "','" + contact.Message + "')");
            return View("thanks");


        }
        public ActionResult thanks()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


    }
}