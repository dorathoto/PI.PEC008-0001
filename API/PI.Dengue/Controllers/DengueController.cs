using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PI.Dengue.Models;
using PI.Dengue.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PI.Dengue.Controllers
{
    public class DengueController : ControllerBaseMvc
    {
        public DengueController(ApplicationDbContext context) : base(context)
        {

        }

        [HttpGet]
        [Route("/api/Lista")]
        public async Task<IActionResult> Index()
        {
            var lista = await _context.FocosDengue
                    .Select(s => new JsonRecebe { Lat = s.Latitude, Long = s.Longitute })
                    .ToListAsync();

            return Ok(lista);
        }

        [HttpPost]
        [Route("/api/grava")]
        public IActionResult Grava([FromBody] JsonRecebe model)
        {
            var item = new FocoDengue
            {
                FocoDengueId = Guid.NewGuid(),
                DataCadastro = DateTime.Now,
                Latitude = model.Lat,
                Longitute = model.Long
            };
            _context.FocosDengue.Add(item);
            _context.SaveChanges();
            return Ok("Gravado com sucesso");
        }
    }
}
