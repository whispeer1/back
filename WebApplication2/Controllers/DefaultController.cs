using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace WebApplication2.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    [RoutePrefix("api")]

    public class DefaultController : ApiController
    {
        [Route("get")] 
        public string Get() {
            return "one branch (new)222 ";
        }            
    }
}
