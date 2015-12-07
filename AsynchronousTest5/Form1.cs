using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AsynchronousTest5
{
    public partial class Form1 : Form
    {
        Regex regex = new Regex("<title>(.*)</title>", RegexOptions.Compiled);

        public Form1()
        {
            InitializeComponent();
        }

        private async void button1_Click(object sender, EventArgs e)
        {
            string content= await GetWebPageTitle(@"Http://www.bizagi.com");
            DoIndependentWork();
        }



        private void DoIndependentWork()
        {
            label1.Text = "Working . . . . . . .\r\n";
        }

        private async Task<string> GetWebPageTitle(string url)
        {
            System.Net.Http.HttpClient client = new System.Net.Http.HttpClient();
            Task<string> task = client.GetStringAsync(url);

            // now we need the result so await
            string contents = await task;

            Match match = regex.Match(contents);
            if (match.Success)
            { 
                string result= match.Groups[1].Captures[0].Value;
                PrintTitle(result);
                return result;
            }
            return string.Empty;
        }
 
        private void PrintTitle(string result)
        {
            label2.Text = result;
        }
    }
}
