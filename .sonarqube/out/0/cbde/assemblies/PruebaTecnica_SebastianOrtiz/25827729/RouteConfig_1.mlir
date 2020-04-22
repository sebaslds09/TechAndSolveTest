func @_PruebaTecnica_SebastianOrtiz.RouteConfig.RegisterRoutes$System.Web.Routing.RouteCollection$(none) -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :7 :8) {
^entry (%_routes : none):
%0 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :7 :42)
cbde.store %_routes, %0 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :7 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :9 :12) // Not a variable of known type: routes
%2 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :9 :31) // "{resource}.axd/{*pathInfo}" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :9 :12) // routes.IgnoreRoute("{resource}.axd/{*pathInfo}") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :11 :12) // Not a variable of known type: routes
%5 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :12 :22) // "NewProcess" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :13 :21) // "process" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :14 :45) // "Home" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :14 :62) // "ProcessData" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :14 :26) // new { controller = "Home", action = "ProcessData" } (AnonymousObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :11 :12) // routes.MapRoute(                  name: "NewProcess",                  url: "process",                  defaults: new { controller = "Home", action = "ProcessData" }              ) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :17 :12) // Not a variable of known type: routes
%12 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :18 :22) // "Default" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :19 :21) // "{controller}/{action}/{id}" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :20 :45) // "Home" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :20 :62) // "Index" (StringLiteralExpression)
// Entity from another assembly: UrlParameter
%16 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :20 :76) // UrlParameter.Optional (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :20 :26) // new { controller = "Home", action = "Index", id = UrlParameter.Optional } (AnonymousObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\RouteConfig.cs" :17 :12) // routes.MapRoute(                  name: "Default",                  url: "{controller}/{action}/{id}",                  defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }              ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
