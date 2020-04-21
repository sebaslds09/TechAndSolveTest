using System.Web.Mvc;

namespace PruebaTecnica_SebastianOrtiz
{
    public static class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
