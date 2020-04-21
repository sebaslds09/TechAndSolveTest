using System.Web.Mvc;
using System.Web.Routing;

namespace PruebaTecnica_SebastianOrtiz
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "NewProcess",
                url: "process",
                defaults: new { controller = "Home", action = "ProcessData" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
