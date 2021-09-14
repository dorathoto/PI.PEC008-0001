using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PI.Dengue.Controllers
{
    public class ControllerBaseMvc : Microsoft.AspNetCore.Mvc.Controller
    {
        protected readonly ApplicationDbContext _context;
        public ControllerBaseMvc(ApplicationDbContext context)
        {
            _context = context;
        }

    }
}