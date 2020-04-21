using System.Collections.Generic;
using System.Text;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class Common
    {
        /// <summary>
        /// Convert a list into a string 
        /// </summary>
        /// <typeparam name="T">List type</typeparam>
        /// <param name="data">Data list</param>
        /// <returns>String with list data</returns>
        public static string ListToString<T>(IList<T> data)
        {
            StringBuilder builder = new StringBuilder();
            foreach (T element in data)
            {
                builder.Append(string.Format("{0} ", element));
            }
            builder.Remove(builder.Length - 1, 1);
            return builder.ToString();
        }
    }
}