using System.Collections.Generic;
using System.Text;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class Common
    {
        public static string ListToString(IList<int> data)
        {
            StringBuilder builder = new StringBuilder();
            foreach (int number in data)
            {
                builder.Append(string.Format("{0} ",number));
            }
            builder.Remove(builder.Length - 1, 1);
            return builder.ToString();
        }
    }
}