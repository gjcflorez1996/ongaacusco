using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OngAAFinal2.Intranet
{
    public partial class frmResiliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnListarResiliente_Click(object sender, EventArgs e)
        {
            using (clqOngDataContext ong = new clqOngDataContext())
            {
                var consulta = from R in ong.Sesion

                               select new
                               {
                                   Nombre_Sesion = R.Nombre,
                                   R.Fecha,
                                   Nombre_Mentor = R.Mentor.NombreCompleto(),
                                   Especialidad = R.Mentor.Especialidad
                               };
                gvLibros.DataSource = consulta;
                gvLibros.DataBind();
            }
        }

        protected void btnLibros_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Libro
                           select L;
            gvListarLibros.DataSource = consulta;
            gvListarLibros.DataBind();
        }

        protected void btnLlamar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.html");
        }
    }
}