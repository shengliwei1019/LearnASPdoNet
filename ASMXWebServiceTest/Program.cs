using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Services.Protocols;

namespace ASMXWebServiceTest
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceReference.MathServiceSoapClient myMathService = new ServiceReference.MathServiceSoapClient();
            Console.WriteLine("2 + 4 = {0}", myMathService.Add(2, 4));
        }
    }
}
