using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebPizza.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult AdminLogin()
        {
            return View();
        }

        public ActionResult UserLogin()
        {
            return View();
        }

        
    }
}