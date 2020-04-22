using System;
using System.Collections.Generic;
using System.IO;

namespace PruebaTecnica_SebastianOrtiz.Utils
{
    public static class FileHelper
    {
        /// <summary>
        /// Open a file and try to convert it into a list
        /// </summary>
        /// <param name="path">local file path to porcess</param>
        /// <returns>Integer list with all data or empty list if not valid data</returns>
        public static IList<int> OpenFile(string path)
        {
            try
            {
                using (var dataInFile = File.Open(path, FileMode.Open))
                {
                    try
                    {
                        using (var dataInRead = new StreamReader(dataInFile))
                        {
                            IList<int> result = new List<int>();
                            string data = string.Empty;
                            try
                            {
                                int dataI = 0;
                                data = dataInRead.ReadLine();
                                int.TryParse(data, out dataI);
                                //First parameter must be between 1 and 500
                                if (dataI < 1 || dataI > 500)
                                {
                                    //Can write a log file
                                    return new List<int>();
                                }
                                result.Add(dataI);

                                while ((data = dataInRead.ReadLine()) != null)
                                {
                                    int.TryParse(data, out dataI);
                                    //Other data must be between 1 and 100
                                    if (dataI < 1 || dataI > 100)
                                    {
                                        //Can write a log file
                                        return new List<int>();
                                    }
                                    result.Add(dataI);
                                }
                                return result;
                            }
                            catch(Exception)
                            {
                                //Can write a log file
                                return new List<int>();
                            }
                        }
                    }
                    catch (Exception)
                    {
                        //Can write a log file
                        return new List<int>();
                    }
                }
            }
            catch (FileNotFoundException)
            {
                //Can write a log file
                return new List<int>();
            }
        }

        /// <summary>
        /// Create a file with process output
        /// </summary>
        /// <param name="cases">List of final cases</param>
        /// <param name="path">File path</param>
        /// <returns>Sucess or Fail </returns>
        public static State CreateFile(IList<int> cases, string path)
        {
            try
            {
                using (var dataOutWriter = new StreamWriter(path))
                {
                    dataOutWriter.NewLine = "\n";
                    for(int i = 0; i < cases.Count; i++)
                    {
                        dataOutWriter.WriteLine(string.Format("Case #{0}: {1}", i+1, cases[i]));
                    }
                    return State.Sucess;
                }
            }
            catch(Exception)
            {
                return State.Fail;
            }
        }

        public enum State
        {
            Sucess,
            Fail
        }
    }
}