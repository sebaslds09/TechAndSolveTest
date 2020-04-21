using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using PruebaTecnica_SebastianOrtiz;
using PruebaTecnica_SebastianOrtiz.Controllers;

namespace PruebaTecnica_SebastianOrtiz.Tests.Controllers
{
    [TestClass]
    public class HomeControllerTest
    {
        [TestMethod]
        public void Index()
        {
            // Arrange
            HomeController controller = new HomeController();

            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }


        [TestMethod]
        public void ProcessData()
        {
            var controller = new HomeController();

            var postedFile = new Mock<HttpPostedFileBase>();
            var httpContextMock = new Mock<HttpContextBase>();
            var serverMock = new Mock<HttpServerUtilityBase>();
            serverMock.Setup(x => x.MapPath("~/Files")).Returns(@"C:\Users\USER\source\repos\PruebaTecnica_SebastianOrtiz\TechAndSolveTest\PruebaTecnica_SebastianOrtiz\Files");
            httpContextMock.Setup(x => x.Server).Returns(serverMock.Object);
            controller.ControllerContext = new ControllerContext(httpContextMock.Object, new RouteData(), controller);

            using (var fileStream = new FileStream(@"D:\Descargas\lazy_loading_example_input.txt", FileMode.Open))
            {
                postedFile.Setup(pf => pf.InputStream).Returns(fileStream);
                postedFile.Setup(pf => pf.FileName).Returns("lazy_loading_example_input.txt");
                postedFile.Setup(pf => pf.ContentLength).Returns((int)fileStream.Length);

                var result = (FilePathResult)controller.ProcessData("123456", postedFile.Object, 1);

                using (var resultStream = new StreamReader(File.Open(result.FileName, FileMode.Open)))
                {
                    using (var realStream = new StreamReader(File.Open(@"D:\Descargas\lazy_loading_example_output.txt", FileMode.Open)))
                    {
                        Assert.AreEqual(realStream.ReadToEnd().Trim(), resultStream.ReadToEnd().Trim());
                    }
                }
            }
        }
    }
}
