using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PI.Dengue.Models
{
    public class FocoDengue
    {
        [Key]
        public Guid FocoDengueId { get; set; }
        public double Latitude { get; set; }

        public double Longitute { get; set; }
        public DateTime DataCadastro { get; set; }

    }
}
