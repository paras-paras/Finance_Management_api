using FinanceManagementApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinanceManagementApi.Controllers
{
    public class ComplaintController : Controller
    {

        // GET: Member
        FinanceManagementAPIEntities finance = new FinanceManagementAPIEntities();

        public ActionResult viewComplaints()
        {
            return View(finance.ComplaintRecords.ToList());
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
        public ActionResult Create(ComplaintRecord complaintRecord)
        {
            if (!ModelState.IsValid)
                return View();
            finance.ComplaintRecords.Add(complaintRecord);
            finance.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return View();

        }

        // GET: Member/Edit/5
        public ActionResult Edit(int id)
        {

            var IdToEdit = (from m in finance.ComplaintRecords where m.ID == id select m).First();
            return View(IdToEdit);
        }

        // POST: Member/Edit/5
        [HttpPost]
        public ActionResult Edit(ComplaintRecord complaintRecord)
        {

            var orignalRecord = (from m in finance.ComplaintRecords where m.ID == complaintRecord.ID select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            finance.Entry(orignalRecord).CurrentValues.SetValues(complaintRecord);

            finance.SaveChanges();
            return RedirectToAction("viewComplaints");
        }

        // GET: Member/Delete/5
        public ActionResult Delete(ComplaintRecord complaintRecord)
        {
            var d = finance.ComplaintRecords.Where(x => x.ID == complaintRecord.ID).FirstOrDefault();
            finance.ComplaintRecords.Remove(d);
            finance.SaveChanges();
            return RedirectToAction("viewComplaints");
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
