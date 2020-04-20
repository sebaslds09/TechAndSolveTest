using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class ActivityProcess
    {
        /// <summary>
        /// Execute process to calculate how many trips can make wilson in each case
        /// </summary>
        /// <param name="Days">Working days</param>
        /// <param name="Elements">Elements quantity</param>
        /// <param name="Weights">Elements weights</param>
        /// <returns>List with each case trips number</returns>
        public static IList<int> Execute(int Days, IList<int> Elements, IList<int> Weights)
        {
            IList<int> result = new List<int>();
            IList<int> weights = Weights;
 
            foreach(int element in Elements)
            {
                IList<int> actualWeights = weights.Take(element).OrderBy(x => x).ToList();
                for(int j = 0; j < element; j++)
                {
                    weights.RemoveAt(0);
                }

                int count = 0;
                while(actualWeights.Count > 0)
                {
                    decimal qty = Math.Ceiling(50 / (decimal)actualWeights.Max());
                        
                    if (actualWeights.Max() * new List<decimal>() { qty, actualWeights.Count }.Min() >= 50)
                    {
                        count++;
                    }
                    actualWeights.Remove(actualWeights.Max());

                    if (actualWeights.Count >= qty-1)
                    {
                        for (int j = 0; j < qty-1; j++)
                        {
                            actualWeights.RemoveAt(0);
                        }
                    }
                }
                result.Add(count);
            }

            return result;
        }
    }
}