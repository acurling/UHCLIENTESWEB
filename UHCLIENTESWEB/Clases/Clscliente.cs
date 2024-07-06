using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UHCLIENTESWEB.Clases
{
    public class Clscliente
    {
        public string cedula { get; set; }
        public string nombre { get; set; }
        public string telefono { get; set; }
        public Boolean estado { get; set; }
        public float saldo { get; set; }
    }
}