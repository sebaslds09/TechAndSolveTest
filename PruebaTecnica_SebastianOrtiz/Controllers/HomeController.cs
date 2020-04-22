using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PruebaTecnica_SebastianOrtiz.Utils;

namespace PruebaTecnica_SebastianOrtiz.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public FileResult ProcessData(string Identification, HttpPostedFileBase FileBase, int Case)
        {
            //Save uploaded file
            string mainPath = Server.MapPath("~/Files");
            if (FileBase != null && FileBase.ContentLength > 0)
            {
                var suportedTypes = new[] { "txt" };
                var fileExt = Path.GetExtension(FileBase.FileName).Substring(1);

                if(!suportedTypes.Contains(fileExt))
                {
                    ModelState.AddModelError("file", "Invalid type. Only the following types (txt) are supported.");
                    return null;
                }

                FileBase.SaveAs(Path.Combine(mainPath, "dataIn.txt"));
            }

            //Open file, verify data  and convert them into a list
            IList<int> DataList = FileHelper.OpenFile(Path.Combine(mainPath, "dataIn.txt"));
            int WorkingDays;
            IList<int> ElementsQty;
            IList<int> ElementsWeight;
            IList<int> result;

            if (DataList.Count < 3)
            {
                //Can write a log file
                ModelState.AddModelError("file", "Invalid data file. Check data.");
                return null;
            }

            //Split data into the different types: Working days, Elements quantity and Elements weights
            ListSplitter.Split(DataList, out WorkingDays, out ElementsQty, out ElementsWeight);

            if(WorkingDays == 0 || ElementsQty.Count == 0 || ElementsWeight.Count == 0)
            {
                ModelState.AddModelError("data", "Invalid quantity data in file");
                return null;
            }

            //Process data
            if(WorkingDays == ElementsQty.Count)
            {
                result = ActivityProcess.Execute(WorkingDays, ElementsQty, ElementsWeight, Case);
                if (result.Count != WorkingDays)
                {
                    return null;
                }

                if (FileHelper.CreateFile(result, Path.Combine(mainPath, "result.txt")) == FileHelper.State.Fail)
                {
                    return null;
                }

                //Save to database
                DataBaseHelper.SaveTrace(Identification, Case, DataList, result);

                string fileName = Path.Combine(mainPath, "result.txt");
                string contentType = "application/octet-stream";

                return new FilePathResult(fileName, contentType);
            }

            return null;
        }


    }
}   