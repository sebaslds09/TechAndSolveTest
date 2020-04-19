using PruebaTecnica_SebastianOrtiz.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
        public FileResult ProcessData(string Identification, HttpPostedFileBase File)
        {
            string mainPath = Server.MapPath("~/") + "Files\\";
            if (File != null && File.ContentLength > 0)
            {
                var suportedTypes = new[] { "txt" };
                var fileExt = System.IO.Path.GetExtension(File.FileName).Substring(1);

                if(!suportedTypes.Contains(fileExt))
                {
                    ModelState.AddModelError("file", "Invalid type. Only the following types (txt) are supported.");
                    return null;
                }

                var uploadedFile = Path.GetFileName(File.FileName);
                File.SaveAs(Path.Combine(mainPath, uploadedFile));
            }

            //TODO -- Add execstamp to databse


            string fileName = Server.MapPath("~/") + @"Files\result.txt";
            string contentType = "application/octet-stream";
            
            return new FilePathResult(fileName, contentType);
        }


    }
}   