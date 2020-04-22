func @_PruebaTecnica_SebastianOrtiz.BundleConfig.RegisterBundles$System.Web.Optimization.BundleCollection$(none) -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :7 :8) {
^entry (%_bundles : none):
%0 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :7 :43)
cbde.store %_bundles, %0 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :7 :43)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :9 :12) // Not a variable of known type: bundles
%2 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :9 :41) // "~/bundles/jquery" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :9 :24) // new ScriptBundle("~/bundles/jquery") (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :10 :24) // "~/Scripts/jquery-{version}.js" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :9 :24) // new ScriptBundle("~/bundles/jquery").Include(                          "~/Scripts/jquery-{version}.js") (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :9 :12) // bundles.Add(new ScriptBundle("~/bundles/jquery").Include(                          "~/Scripts/jquery-{version}.js")) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :12 :12) // Not a variable of known type: bundles
%8 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :12 :41) // "~/bundles/jqueryval" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :12 :24) // new ScriptBundle("~/bundles/jqueryval") (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :13 :24) // "~/Scripts/jquery.validate*" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :12 :24) // new ScriptBundle("~/bundles/jqueryval").Include(                          "~/Scripts/jquery.validate*") (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :12 :12) // bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(                          "~/Scripts/jquery.validate*")) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :17 :12) // Not a variable of known type: bundles
%14 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :17 :41) // "~/bundles/modernizr" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :17 :24) // new ScriptBundle("~/bundles/modernizr") (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :18 :24) // "~/Scripts/modernizr-*" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :17 :24) // new ScriptBundle("~/bundles/modernizr").Include(                          "~/Scripts/modernizr-*") (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :17 :12) // bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(                          "~/Scripts/modernizr-*")) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :20 :12) // Not a variable of known type: bundles
%20 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :20 :41) // "~/bundles/bootstrap" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :20 :24) // new ScriptBundle("~/bundles/bootstrap") (ObjectCreationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :21 :22) // "~/Scripts/bootstrap.js" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :20 :24) // new ScriptBundle("~/bundles/bootstrap").Include(                        "~/Scripts/bootstrap.js") (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :20 :12) // bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(                        "~/Scripts/bootstrap.js")) (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :23 :12) // Not a variable of known type: bundles
%26 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :23 :40) // "~/Content/css" (StringLiteralExpression)
%27 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :23 :24) // new StyleBundle("~/Content/css") (ObjectCreationExpression)
%28 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :24 :22) // "~/Content/bootstrap.css" (StringLiteralExpression)
%29 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :25 :22) // "~/Content/site.css" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :23 :24) // new StyleBundle("~/Content/css").Include(                        "~/Content/bootstrap.css",                        "~/Content/site.css") (InvocationExpression)
%31 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\BundleConfig.cs" :23 :12) // bundles.Add(new StyleBundle("~/Content/css").Include(                        "~/Content/bootstrap.css",                        "~/Content/site.css")) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
