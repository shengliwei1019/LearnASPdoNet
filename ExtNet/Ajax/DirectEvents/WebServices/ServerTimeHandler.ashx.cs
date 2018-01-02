using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ext.Net;

namespace ExtNet.Ajax.DirectEvents.WebServices
{
    /// <summary>
    /// ServerTimeHandler 的摘要说明
    /// </summary>
    public class ServerTimeHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");

            new Window("Server time", Icon.Time)
            {
                ID = "MyWindow",
                Html = DateTime.Now.ToString()
            }.Render();

            new DirectResponse().Return();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}