func @_PruebaTecnica_SebastianOrtiz.Utils.DataBaseHelper.SaveTrace$string.int.System.Collections.Generic.IList$int$.System.Collections.Generic.IList$int$$(none, i32, none, none) -> () loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :8) {
^entry (%_Identification : none, %_Days : i32, %_DataIn : none, %_cases : none):
%0 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :37)
cbde.store %_Identification, %0 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :37)
%1 = cbde.alloca i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :60)
cbde.store %_Days, %1 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :60)
%2 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :70)
cbde.store %_DataIn, %2 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :70)
%3 = cbde.alloca none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :89)
cbde.store %_cases, %3 : memref<none> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :8 :89)
br ^0

^0: // ForInitializerBlock
%4 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :10 :56) // new SOA_TechAndSolveEntities() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :11 :34) // new ExecStamp() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :12 :12) // Not a variable of known type: execStamp
%9 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :12 :12) // execStamp.Identification (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :12 :39) // Not a variable of known type: Identification
%11 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :13 :12) // Not a variable of known type: execStamp
%12 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :13 :12) // execStamp.DateStamp (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%13 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :13 :34) // DateTime.Today (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :12) // Not a variable of known type: execStamp
%15 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :12) // execStamp.TimeStamp (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%16 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :47) // DateTime.Now (SimpleMemberAccessExpression)
%17 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :47) // DateTime.Now.Hour (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%18 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :66) // DateTime.Now (SimpleMemberAccessExpression)
%19 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :66) // DateTime.Now.Minute (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%20 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :87) // DateTime.Now (SimpleMemberAccessExpression)
%21 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :87) // DateTime.Now.Second (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :14 :34) // new TimeSpan(DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second) (ObjectCreationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :15 :12) // Not a variable of known type: execStamp
%24 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :15 :12) // execStamp.WorkingDays (SimpleMemberAccessExpression)
%25 = cbde.load %1 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :15 :36)
%26 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :16 :12) // Not a variable of known type: execStamp
%27 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :16 :12) // execStamp.ElementList (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Common
%28 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :16 :56) // Not a variable of known type: DataIn
%29 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :16 :36) // Common.ListToString(DataIn) (InvocationExpression)
%30 = constant 0 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :24)
%31 = cbde.alloca i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :20) // i
cbde.store %30, %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :20)
br ^1

^1: // BinaryBranchBlock
%32 = cbde.load %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :27)
%33 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :31) // Not a variable of known type: cases
%34 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :31) // cases.Count (SimpleMemberAccessExpression)
%35 = cmpi "slt", %32, %34 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :27)
cond_br %35, ^2, ^3 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :27)

^2: // SimpleBlock
%36 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :20 :54) // new ExecStamp_Details() (ObjectCreationExpression)
%38 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :21 :16) // Not a variable of known type: execStamp_Details
%39 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :21 :16) // execStamp_Details.Case (SimpleMemberAccessExpression)
%40 = cbde.load %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :21 :41)
%41 = constant 1 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :21 :45)
%42 = addi %40, %41 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :21 :41)
%43 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :22 :16) // Not a variable of known type: execStamp_Details
%44 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :22 :16) // execStamp_Details.TripsQuantity (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :22 :50) // Not a variable of known type: cases
%46 = cbde.load %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :22 :56)
%47 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :22 :50) // cases[i] (ElementAccessExpression)
%48 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :23 :16) // Not a variable of known type: execStamp
%49 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :23 :16) // execStamp.ExecStamp_Details (SimpleMemberAccessExpression)
%50 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :23 :48) // Not a variable of known type: execStamp_Details
%51 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :23 :16) // execStamp.ExecStamp_Details.Add(execStamp_Details) (InvocationExpression)
br ^4

^4: // SimpleBlock
%52 = cbde.load %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :44)
%53 = constant 1 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :44)
%54 = addi %52, %53 : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :44)
cbde.store %54, %31 : memref<i32> loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :18 :44)
br ^1

^3: // SimpleBlock
%55 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :26 :12) // Not a variable of known type: dataBaseEntities
%56 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :26 :12) // dataBaseEntities.ExecStamp (SimpleMemberAccessExpression)
%57 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :26 :43) // Not a variable of known type: execStamp
%58 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :26 :12) // dataBaseEntities.ExecStamp.Add(execStamp) (InvocationExpression)
%59 = cbde.unknown : none loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :27 :12) // Not a variable of known type: dataBaseEntities
%60 = cbde.unknown : i32 loc("C:\\Users\\USER\\source\\repos\\PruebaTecnica_SebastianOrtiz\\TechAndSolveTest\\PruebaTecnica_SebastianOrtiz\\Utils\\DataBaseHelper.cs" :27 :12) // dataBaseEntities.SaveChanges() (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
