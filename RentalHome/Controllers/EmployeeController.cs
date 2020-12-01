using RentalHome.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentalHome.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        RentalHomeEntities instance = new RentalHomeEntities();

        public ActionResult ViewAllEmployee()
        {
            return View(instance.EmployeeDetails.ToList());
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
        public ActionResult Create([Bind(Exclude = "ID")]EmployeeDetail employee)
        {
            //following the concept of crud to register new employee
            if (!ModelState.IsValid)
                return View();
            instance.EmployeeDetails.Add(employee);
            instance.SaveChanges();
            return RedirectToAction("ViewAllEmployee");



        }



        // GET: Employee/Edit/5
        public ActionResult Edit(int id)
        {
            var E_ID = (from m in instance.EmployeeDetails where m.ID == id select m).First();
            return View(E_ID);
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(EmployeeDetail employeeID)
        {

            var orignalRecord = (from m in instance.EmployeeDetails where m.ID == employeeID.ID select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(employeeID);

            instance.SaveChanges();
            return RedirectToAction("ViewAllEmployee");

        }

        // GET: Employee/Delete/5
        public ActionResult Delete(EmployeeDetail employeeID)
        {

            var d = instance.EmployeeDetails.Where(x => x.ID == employeeID.ID).FirstOrDefault();
            instance.EmployeeDetails.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("ViewAllEmployee");

        }

        // POST: Employee/Delete/5
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
