func @_PruebaTecnica_SebastianOrtiz.FilterConfig.RegisterGlobalFilters$System.Web.Mvc.GlobalFilterCollection$(none) -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :6 :8) {
^entry (%_filters : none):
%0 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :6 :49)
cbde.store %_filters, %0 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :6 :49)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :8 :12) // Not a variable of known type: filters
%2 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :8 :24) // new HandleErrorAttribute() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\App_Start\\FilterConfig.cs" :8 :12) // filters.Add(new HandleErrorAttribute()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
