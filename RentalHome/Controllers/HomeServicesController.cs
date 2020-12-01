using RentalHome.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHome.Controllers
{
    public class HomeServicesController : Controller
    {
        // GET: Employee
        RentalHomeEntities instance = new RentalHomeEntities();

        public ActionResult ViewAllServices()
        {
            return View(instance.ServiceDetails.ToList());
        }

        // GET: Employee/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Employee/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employee/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "ID")]ServiceDetail service)
        {
            //following the concept of crud to register new employee
            if (!ModelState.IsValid)
                return View();
            instance.ServiceDetails.Add(service);
            instance.SaveChanges();
            return RedirectToAction("ViewAllServices");
        }



        // GET: Employee/Edit/5
        public ActionResult Edit(int id)
        {
            var E_ID = (from m in instance.ServiceDetails where m.id == id select m).First();
            return View(E_ID);
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(ServiceDetail service)
        {

            var orignalRecord = (from m in instance.ServiceDetails where m.id == service.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(service);

            instance.SaveChanges();
            return RedirectToAction("ViewAllServices");

        }

        // GET: Employee/Delete/5
        public ActionResult Delete(ServiceDetail service)
        {

            var d = instance.ServiceDetails.Where(x => x.id == service.id).FirstOrDefault();
            instance.ServiceDetails.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("ViewAllServices");

        }


        // POST: HomeServices/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
