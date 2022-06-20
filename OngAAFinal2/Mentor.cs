using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OngAAFinal2
{
    public partial class Mentor
    {
        public string NombreCompleto()
        {
            return Nombre + " " + Apellido;
        }
    }
}