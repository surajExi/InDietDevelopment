using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace InDiet.Controllers
{
    public class BaseController : Controller
    {
        /// <summary>
        /// Create a new instance of HttpClient and returns the client object
        /// </summary>
        /// <param name="uri"></param>
        /// <returns></returns>
        public HttpClient GetHttpClient(string uri)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(uri);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            return client;
        }
    }
}