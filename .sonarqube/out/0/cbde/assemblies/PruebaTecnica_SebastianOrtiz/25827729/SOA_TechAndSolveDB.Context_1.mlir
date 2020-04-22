func @_PruebaTecnica_SebastianOrtiz.Models.SOA_TechAndSolveEntities.OnModelCreating$System.Data.Entity.DbModelBuilder$(none) -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Models\\SOA_TechAndSolveDB.Context.cs" :22 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Models\\SOA_TechAndSolveDB.Context.cs" :22 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Models\\SOA_TechAndSolveDB.Context.cs" :22 :48)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Models\\SOA_TechAndSolveDB.Context.cs" :24 :18) // new UnintentionalCodeFirstException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Models\\SOA_TechAndSolveDB.Context.cs" :24 :12)

^1: // ExitBlock
return

}
