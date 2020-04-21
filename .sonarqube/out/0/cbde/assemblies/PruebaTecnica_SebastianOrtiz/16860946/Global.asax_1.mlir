func @_PruebaTecnica_SebastianOrtiz.MvcApplication.Application_Start$$() -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :8 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: AreaRegistration
%0 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :10 :12) // AreaRegistration.RegisterAllAreas() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FilterConfig
// Entity from another assembly: GlobalFilters
%1 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :11 :47) // GlobalFilters.Filters (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :11 :12) // FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RouteConfig
// Entity from another assembly: RouteTable
%3 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :12 :39) // RouteTable.Routes (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :12 :12) // RouteConfig.RegisterRoutes(RouteTable.Routes) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BundleConfig
// Entity from another assembly: BundleTable
%5 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :13 :41) // BundleTable.Bundles (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Global.asax.cs" :13 :12) // BundleConfig.RegisterBundles(BundleTable.Bundles) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
