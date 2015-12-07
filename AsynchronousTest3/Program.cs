using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace AsyncAwait
{
    class Program
    {
        // You can do other work here while the async task is running
        static Regex regex = new Regex("<title>(.*)</title>", RegexOptions.Compiled);

        static void Main(string[] args)
        {
            StartProgram();
        }

        private static void StartProgram()
        {
            GetWebPageTitle(@"Http://www.bizagi.com").ContinueWith(task => Console.WriteLine(task.Result));

            Console.WriteLine("Working Camilo!...");
            Console.ReadKey();
        }


        private static async Task<string> GetWebPageTitle(string url)
        {
            System.Net.Http.HttpClient client = new System.Net.Http.HttpClient();
            string contents = await client.GetStringAsync(url);

            // now we need the result so await
            //string contents = await task;

            Match match = regex.Match(contents);
            if (match.Success)
            {
                return match.Groups[1].Captures[0].Value;
            }
            return string.Empty;
        }
    }
}
