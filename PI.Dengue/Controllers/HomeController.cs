using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PI.Dengue.Controllers
{
    public class HomeController : ControllerBaseMvc
    {
        public HomeController(ApplicationDbContext context) : base(context)
        {

        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
