using FinanceManagementApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinanceManagementApi.Controllers
{
    public class ServicesController : Controller
    {

        // GET: Member
        FinanceManagementAPIEntities finance = new FinanceManagementAPIEntities();

        public ActionResult viewServices()
        {
            return View(finance.ServiceRecords.ToList());
        }


        public ActionResult userServices()
        {
            return View(finance.ServiceRecords.ToList());
        }


        // GET: Member/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Member/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Member/Create
        [HttpPost]
        public ActionResult Create(ServiceRecord serviceRecord)
        {
            if (!ModelState.IsValid)
                return View();
            finance.ServiceRecords.Add(serviceRecord);
            finance.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return RedirectToAction("viewServices");

        }

        // GET: Member/Edit/5
        public ActionResult Edit(int id)
        {

            var IdToEdit = (from m in finance.ServiceRecords where m.ID == id select m).First();
            return View(IdToEdit);
        }

        // POST: Member/Edit/5
        [HttpPost]
        public ActionResult Edit(ServiceRecord serviceRecord)
        {

            var orignalRecord = (from m in finance.ServiceRecords where m.ID == serviceRecord.ID select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            finance.Entry(orignalRecord).CurrentValues.SetValues(serviceRecord);

            finance.SaveChanges();
            return RedirectToAction("viewServices");
        }

        // GET: Member/Delete/5
        public ActionResult Delete(StaffMemberRecord staffMember)
        {
            var d = finance.StaffMemberRecords.Where(x => x.ID == staffMember.ID).FirstOrDefault();
            finance.StaffMemberRecords.Remove(d);
            finance.SaveChanges();
            return RedirectToAction("RegisteredStaffMember");
        }

        // POST: Member/Delete/5
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
