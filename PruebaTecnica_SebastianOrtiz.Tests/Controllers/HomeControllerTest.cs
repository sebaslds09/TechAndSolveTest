using System.IO;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
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
        public void ProcessData_Case1()
        {
            var controller = new HomeController();

            var postedFile = new Mock<HttpPostedFileBase>();
            var httpContextMock = new Mock<HttpContextBase>();
            var serverMock = new Mock<HttpServerUtilityBase>();

            serverMock.Setup(srv => srv.MapPath("~/Files")).Returns(Properties.Settings.Default.server_dir);
            httpContextMock.Setup(ctx => ctx.Server).Returns(serverMock.Object);

            controller.ControllerContext = new ControllerContext(httpContextMock.Object, new RouteData(), controller);

            using (var fileStream = new FileStream(Path.Combine(Properties.Settings.Default.files_dir,"lazy_loading_example_input.txt"), FileMode.Open))
            {
                postedFile.Setup(pf => pf.InputStream).Returns(fileStream);
                postedFile.Setup(pf => pf.FileName).Returns("lazy_loading_example_input.txt");
                postedFile.Setup(pf => pf.ContentLength).Returns((int)fileStream.Length);
                postedFile.Setup(pf => pf.ContentType).Returns("text/plain");
                postedFile.Setup(pf => pf.SaveAs(It.IsAny<string>())).Callback((string path) => {
                    using (var dataOutWriter = new FileStream(path, FileMode.Create))
                    {
                        fileStream.CopyTo(dataOutWriter);
                    }
                });


                var result = (FilePathResult)controller.ProcessData("123456", postedFile.Object, 1);
                

                using (var resultStream = new StreamReader(File.Open(result.FileName, FileMode.Open)))
                {
                    using (var realStream = new StreamReader(File.Open(Path.Combine(Properties.Settings.Default.files_dir, "lazy_loading_example_output_case1.txt"), FileMode.Open)))
                    {
                        Assert.AreEqual(realStream.ReadToEnd().Trim(), resultStream.ReadToEnd().Trim());
                    }
                }
            }
        }

        [TestMethod]
        public void ProcessData_Case2()
        {
            var controller = new HomeController();

            var postedFile = new Mock<HttpPostedFileBase>();
            var httpContextMock = new Mock<HttpContextBase>();
            var serverMock = new Mock<HttpServerUtilityBase>();

            serverMock.Setup(srv => srv.MapPath("~/Files")).Returns(Properties.Settings.Default.server_dir);
            httpContextMock.Setup(ctx => ctx.Server).Returns(serverMock.Object);

            controller.ControllerContext = new ControllerContext(httpContextMock.Object, new RouteData(), controller);

            using (var fileStream = new FileStream(Path.Combine(Properties.Settings.Default.files_dir, "lazy_loading_example_input.txt"), FileMode.Open))
            {
                postedFile.Setup(pf => pf.InputStream).Returns(fileStream);
                postedFile.Setup(pf => pf.FileName).Returns("lazy_loading_example_input.txt");
                postedFile.Setup(pf => pf.ContentLength).Returns((int)fileStream.Length);
                postedFile.Setup(pf => pf.ContentType).Returns("text/plain");
                postedFile.Setup(pf => pf.SaveAs(It.IsAny<string>())).Callback((string path) => {
                    using (var dataOutWriter = new FileStream(path, FileMode.Create))
                    {
                        fileStream.CopyTo(dataOutWriter);
                    }
                });


                var result = (FilePathResult)controller.ProcessData("123456", postedFile.Object, 2);


                using (var resultStream = new StreamReader(File.Open(result.FileName, FileMode.Open)))
                {
                    using (var realStream = new StreamReader(File.Open(Path.Combine(Properties.Settings.Default.files_dir, "lazy_loading_example_output_case2.txt"), FileMode.Open)))
                    {
                        Assert.AreEqual(realStream.ReadToEnd().Trim(), resultStream.ReadToEnd().Trim());
                    }
                }
            }
        }

        [TestMethod]
        public void ProcessData_Case_T_Greater_500()
        {
            var controller = new HomeController();

            var postedFile = new Mock<HttpPostedFileBase>();
            var httpContextMock = new Mock<HttpContextBase>();
            var serverMock = new Mock<HttpServerUtilityBase>();

            serverMock.Setup(srv => srv.MapPath("~/Files")).Returns(Properties.Settings.Default.server_dir);
            httpContextMock.Setup(ctx => ctx.Server).Returns(serverMock.Object);

            controller.ControllerContext = new ControllerContext(httpContextMock.Object, new RouteData(), controller);

            using (var fileStream = new FileStream(Path.Combine(Properties.Settings.Default.files_dir, "lazy_loading_example_input_T_M500.txt"), FileMode.Open))
            {
                postedFile.Setup(pf => pf.InputStream).Returns(fileStream);
                postedFile.Setup(pf => pf.FileName).Returns("lazy_loading_example_input_T_M500.txt");
                postedFile.Setup(pf => pf.ContentLength).Returns((int)fileStream.Length);
                postedFile.Setup(pf => pf.ContentType).Returns("text/plain");
                postedFile.Setup(pf => pf.SaveAs(It.IsAny<string>())).Callback((string path) => {
                    using (var dataOutWriter = new FileStream(path, FileMode.OpenOrCreate))
                    {
                        fileStream.CopyTo(dataOutWriter);
                    }
                });


                var result = (FilePathResult)controller.ProcessData("123456", postedFile.Object, 2);

                Assert.AreEqual(null, result);
            }
        }

        [TestMethod]
        public void ProcessData_Case_N_Greater_100()
        {
            var controller = new HomeController();

            var postedFile = new Mock<HttpPostedFileBase>();
            var httpContextMock = new Mock<HttpContextBase>();
            var serverMock = new Mock<HttpServerUtilityBase>();

            serverMock.Setup(srv => srv.MapPath("~/Files")).Returns(Properties.Settings.Default.server_dir);
            httpContextMock.Setup(ctx => ctx.Server).Returns(serverMock.Object);

            controller.ControllerContext = new ControllerContext(httpContextMock.Object, new RouteData(), controller);

            using (var fileStream = new FileStream(Path.Combine(Properties.Settings.Default.files_dir, "lazy_loading_example_input_N_M100.txt"), FileMode.Open))
            {
                postedFile.Setup(pf => pf.InputStream).Returns(fileStream);
                postedFile.Setup(pf => pf.FileName).Returns("lazy_loading_example_input_N_M100.txt");
                postedFile.Setup(pf => pf.ContentLength).Returns((int)fileStream.Length);
                postedFile.Setup(pf => pf.ContentType).Returns("text/plain");
                postedFile.Setup(pf => pf.SaveAs(It.IsAny<string>())).Callback((string path) => {
                    using (var dataOutWriter = new FileStream(path, FileMode.OpenOrCreate))
                    {
                        fileStream.CopyTo(dataOutWriter);
                    }
                });


                var result = (FilePathResult)controller.ProcessData("123456", postedFile.Object, 2);

                Assert.AreEqual(null, result);
            }
        }

    }
}
