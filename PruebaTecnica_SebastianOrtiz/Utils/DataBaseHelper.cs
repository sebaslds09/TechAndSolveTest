using PruebaTecnica_SebastianOrtiz.Models;
using System;
using System.Collections.Generic;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class DataBaseHelper
    {
        public static void SaveTrace(string Identification, int Days, IList<int> DataIn, IList<int> cases)
        {
            SOA_TechAndSolveEntities dataBaseEntities = new SOA_TechAndSolveEntities();
            ExecStamp execStamp = new ExecStamp();
            execStamp.Identification = Identification;
            execStamp.DateStamp = DateTime.Today;
            execStamp.TimeStamp = new TimeSpan(DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);
            execStamp.WorkingDays = Days;
            execStamp.ElementList = Common.ListToString(DataIn);

            for(int i = 0; i < cases.Count; i++)
            {
                ExecStamp_Details execStamp_Details = new ExecStamp_Details();
                execStamp_Details.Case = i + 1;
                execStamp_Details.TripsQuantity = cases[i];
                execStamp.ExecStamp_Details.Add(execStamp_Details);
            }

            dataBaseEntities.ExecStamp.Add(execStamp);
            dataBaseEntities.SaveChanges();
        }
    }
}