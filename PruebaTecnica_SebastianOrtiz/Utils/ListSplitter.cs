using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class ListSplitter
    {
        public static void Split(IList<int> dataIn, out int days, out IList<int> Elements, out IList<int> Weights)
        {
            days = dataIn.First();
            dataIn.RemoveAt(0);

            Elements = new List<int>();
            Weights = new List<int>();

            try
            {
                for (int i = 0; i < days; i++)
                {
                    Elements.Add(dataIn.First());
                    dataIn.RemoveAt(0);
                    for (int j = 0; j < Elements[i]; j++)
                    {
                        Weights.Add(dataIn.First());
                        dataIn.RemoveAt(0);
                    }
                }
            }
            catch (Exception)
            {
                //Can write log file
                days = 0;
                Elements = new List<int>();
                Weights = new List<int>();
            }
        }
    }
}