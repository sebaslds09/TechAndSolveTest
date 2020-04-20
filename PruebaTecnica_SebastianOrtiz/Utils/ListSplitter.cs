using System;
using System.Collections.Generic;
using System.Linq;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class ListSplitter
    {
        /// <summary>
        /// Split a integer list into 3 different element types
        /// </summary>
        /// <param name="dataIn">Data list to split</param>
        /// <param name="days">Working days</param>
        /// <param name="Elements">Elements quantity</param>
        /// <param name="Weights">Elements weights</param>
        public static void Split(IList<int> DataIn, out int days, out IList<int> Elements, out IList<int> Weights)
        {
            IList<int> dataIn = new List<int>(DataIn);

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