using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication2.Controllers
{
    [RoutePrefix("api")]

    public class DefaultController : ApiController
    {
        [Route("get")] 
        public string Get() {
            return "one branch (new) ";
        }            
    }
}
