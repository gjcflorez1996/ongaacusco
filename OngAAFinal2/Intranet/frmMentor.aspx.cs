using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace OngAAFinal2.Intranet
{
    public partial class frmMentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIncio_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 0;
        }

        protected void btnResilientes_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 1;
        }
        protected void btnMentores_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 2;
        }
        protected void btnLibros_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 3;
        }
        protected void btnAuspiciadores_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 4;
        }
        protected void btnSeguimiento_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 5;
        }
        protected void btnUsuarios_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 6;
        }
        protected void btnSesion_Click(object sender, EventArgs e)
        {
            mvIndex.ActiveViewIndex = 7;
        }

        //Resilientes
        protected void btnListar_Click(object sender, EventArgs e)
        {
            //Listar Resilientes
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from R in ong.Resiliente
                           select R;
            gvResilientes.DataSource = consulta;
            gvResilientes.DataBind();
        }

  

        protected void btnListarMentores_Click(object sender, EventArgs e)
        {
            //Listar Mentores
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from M in ong.Mentor
                           select M;
            gvMentores.DataSource = consulta;
            gvMentores.DataBind();
        }
        protected void btnAgregarMentores_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Mentor mentor = new Mentor();
            mentor.dni = txtdniMentor.Text.Trim();
            mentor.Nombre = txtNombreMentor.Text.Trim();
            mentor.Apellido = txtApellidoMentor.Text.Trim();
            mentor.Especialidad = txtEspecialidad.Text.Trim();
            mentor.Direccion = txtDireccionMentor.Text.Trim();
            mentor.Telefono = txtTelefonoMentor.Text.Trim();
            mentor.Correo = txtCorreoMentor.Text.Trim();
            mentor.Estado = txtEstadoMentor.Text.Trim();
            mentor.idUsuario = txtidUsuarioMentor.Text.Trim();
            ong.Mentor.InsertOnSubmit(mentor);
            try
            {
                ong.SubmitChanges();
                gvMentores.DataSource = mentor;
                gvMentores.DataBind();
            }
            catch (Exception)
            {
                Response.Write("Agregado");
            }
        }

        protected void btnEliminarMentor_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var mentor = (from L in ong.Mentor
                          where L.dni.Contains(txtdniMentor.Text.Trim())
                          select L).First();
            ong.Mentor.DeleteOnSubmit(mentor);
            try
            {
                ong.SubmitChanges();
                gvMentores.DataSource = mentor;
                gvMentores.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btnListarLibros_Click(object sender, EventArgs e)
        {
            //Listar Libros
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Libro
                           select L;
            gvLibros.DataSource = consulta;
            gvLibros.DataBind();
        }

        protected void btnVerResumen_Click(object sender, EventArgs e)
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
                gvIndex.DataSource = consulta;
                gvIndex.DataBind();
            }

        }

        protected void btnAgregarLibros_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Libro libro = new Libro();
            libro.idLibro = txtIdLibro.Text.Trim();
            libro.Nombre = txtNombreLibro.Text.Trim();
            libro.Autor = txtAutorLibro.Text.Trim();
            libro.NroCopias = Convert.ToInt32(txtCopiasLibro.Text);
            ong.Libro.InsertOnSubmit(libro);
            try
            {
                ong.SubmitChanges();
                gvLibros.DataSource = libro;
                gvLibros.DataBind();
            }
            catch (Exception)
            {
                Response.Write("Agregado");
            }
        }

        protected void btnEliminarLibro_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var libro = (from L in ong.Libro
                         where L.idLibro.Contains(txtIdLibro.Text.Trim())
                         select L).First();
            ong.Libro.DeleteOnSubmit(libro);
            try
            {
                ong.SubmitChanges();
                gvLibros.DataSource = libro;
                gvLibros.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Libro libro = ong.Libro.Single(L => L.idLibro == txtIdLibro.Text.Trim());
            libro.Nombre = txtNombreLibro.Text.Trim();
            libro.Autor = txtAutorLibro.Text.Trim();
            libro.NroCopias = Convert.ToInt32(txtCopiasLibro.Text);
            try
            {
                ong.SubmitChanges();
                gvLibros.DataSource = libro;
                gvLibros.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Actualizado");
            }
        }

        protected void btnListarAus_Click(object sender, EventArgs e)
        {
            //Listar Libros
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Auspiciador
                           select L;
            gvAuspiciador.DataSource = consulta;
            gvAuspiciador.DataBind();
        }

        protected void btnAgregarAus_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Auspiciador auspiciador = new Auspiciador();
            auspiciador.ruc = txtruc.Text.Trim();
            auspiciador.Razon_Social = txtRazonSocial.Text.Trim();
            auspiciador.Direccion = txtDireccion.Text.Trim();
            auspiciador.Telefono = txtTelefono.Text.Trim();
            auspiciador.Correo = txtCorreo.Text.Trim();
            ong.Auspiciador.InsertOnSubmit(auspiciador);
            try
            {
                ong.SubmitChanges();
                gvAuspiciador.DataSource = auspiciador;
                gvAuspiciador.DataBind();
            }
            catch (Exception)
            {
                Response.Write("Agregado");
            }
        }

        protected void btnEliminarAus_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var auspiciador = (from L in ong.Auspiciador
                               where L.ruc.Contains(txtruc.Text.Trim())
                               select L).First();
            ong.Auspiciador.DeleteOnSubmit(auspiciador);
            try
            {
                ong.SubmitChanges();
                gvAuspiciador.DataSource = auspiciador;
                gvAuspiciador.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btnActualizarAus_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Auspiciador auspiciador = ong.Auspiciador.Single(A => A.ruc == txtruc.Text.Trim());
            auspiciador.ruc = txtruc.Text.Trim();
            auspiciador.Razon_Social = txtRazonSocial.Text.Trim();
            auspiciador.Direccion = txtDireccion.Text.Trim();
            auspiciador.Telefono = txtTelefono.Text.Trim();
            auspiciador.Correo = txtCorreo.Text.Trim();
            try
            {
                ong.SubmitChanges();
                gvAuspiciador.DataSource = auspiciador;
                gvAuspiciador.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Actualizado");
            }
        }

        protected void btnListarSeg_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Seguimiento
                           select L;
            gvSeguimiento.DataSource = consulta;
            gvSeguimiento.DataBind();
        }

        protected void btnAgregarSeg_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Seguimiento seguimiento = new Seguimiento();

            seguimiento.idSeguimiento = txtidSeguimiento.Text.Trim();
            seguimiento.Dias_Asistidos = Convert.ToInt32(txtDiasAsistidos.Text);
            seguimiento.Dias_Falto = Convert.ToInt32(txtDiasFalto.Text);
            seguimiento.Recaidas = Convert.ToInt32(txtRecaidas.Text);
            ong.Seguimiento.InsertOnSubmit(seguimiento);
            try
            {
                ong.SubmitChanges();
                gvSeguimiento.DataSource = seguimiento;
                gvSeguimiento.DataBind();
            }
            catch (Exception)
            {
                Response.Write("Agregado");
            }
        }

        protected void btnEliminarSeg_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var seguimiento = (from L in ong.Seguimiento
                               where L.idSeguimiento.Contains(txtidSeguimiento.Text.Trim())
                               select L).First();
            ong.Seguimiento.DeleteOnSubmit(seguimiento);
            try
            {
                ong.SubmitChanges();
                gvSeguimiento.DataSource = seguimiento;
                gvSeguimiento.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btListarUsr_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Usuario
                           select L;
            gvUsuarios.DataSource = consulta;
            gvUsuarios.DataBind();
        }

        public static string GetSHA256(string str)
        {
            SHA256 sha256 = SHA256Managed.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = sha256.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }
        protected void AgregarUsr_Click(object sender, EventArgs e)
        {
            using (clqOngDataContext ong = new clqOngDataContext())
            {
                Usuario usuario = new Usuario();
                string pass = txtContrasenia.Text.Trim();
                usuario.idUsuario = txtidUsuario.Text.Trim();
                usuario.ContrasenaUsuario = GetSHA256(pass);
                usuario.Tipo_Usuario = txtTipo_Usuario.Text.Trim();
                ong.Usuario.InsertOnSubmit(usuario);
                try
                {
                    ong.SubmitChanges();
                    gvUsuarios.DataSource = usuario;
                    gvUsuarios.DataBind();
                }
                catch (Exception)
                {
                    Response.Write("Agregado");
                }

            }

        }

        protected void EliminarUsr_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var usuario = (from L in ong.Usuario
                           where L.idUsuario.Contains(txtidUsuario.Text.Trim())
                           select L).First();
            ong.Usuario.DeleteOnSubmit(usuario);
            try
            {
                ong.SubmitChanges();
                gvUsuarios.DataSource = usuario;
                gvUsuarios.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btnEliminarRes_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var resileinte = (from L in ong.Resiliente
                              where L.idResiliente.Contains(txtidResiliente.Text.Trim())
                              select L).First();
            ong.Resiliente.DeleteOnSubmit(resileinte);
            try
            {
                ong.SubmitChanges();
                gvResilientes.DataSource = resileinte;
                gvResilientes.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }

        }

        protected void btnActualizarRes_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Resiliente resiliente = ong.Resiliente.Single(A => A.idResiliente == txtidResiliente.Text.Trim());
            resiliente.Nombre = txtNombreResiliente.Text.Trim();
            resiliente.ApellidoP = txtApellidoPRes.Text.Trim();
            resiliente.ApellidoM = txtApellidoMRes.Text.Trim();
            resiliente.Telefono = txtTelefonoRes.Text.Trim();
            resiliente.Correo = txtCorreoRes.Text.Trim();
            resiliente.Estado = txtEstadoRes.Text.Trim();
            resiliente.idSeguimiento = txtidSeguimientoRes.Text.Trim();
            resiliente.idUsuario = txtidUsuarioResiliente.Text.Trim();
            try
            {
                ong.SubmitChanges();
                gvResilientes.DataSource = resiliente;
                gvResilientes.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Actualizado");
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }
        private void limpiar()
        {
            txtidUsuario.Text = String.Empty;
            txtContrasenia.Text = String.Empty;
            txtTipo_Usuario.Text = String.Empty;
        }

        protected void btnListarSesion_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var consulta = from L in ong.Sesion
                           select L;
            gvSesiones.DataSource = consulta;
            gvSesiones.DataBind();
        }

        protected void btnAgregarSesion_Click(object sender, EventArgs e)
        {
            using (clqOngDataContext ong = new clqOngDataContext())
            {
                Sesion sesion = new Sesion();
                
                sesion.idSesion = txtidSesion.Text.Trim();
                sesion.Nombre = txtNombreSesion.Text.Trim();
                sesion.Fecha = Convert.ToDateTime(txtFecha.Text.Trim());
                sesion.MontoSesion = Convert.ToDouble(txtMontoSesion.Text.Trim());
                sesion.dni = txtDniMentorSesion.Text.Trim();
                ong.Sesion.InsertOnSubmit(sesion);

                try
                {
                    ong.SubmitChanges();
                    gvSesiones.DataSource = sesion;
                    gvSesiones.DataBind();
                }
                catch (Exception)
                {
                    Response.Write("Agregado");
                }


            }
        }

        protected void btnEliminarSesion_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            var sesion = (from L in ong.Sesion
                         where L.idSesion.Contains(txtIdLibro.Text.Trim())
                         select L).First();
            ong.Sesion.DeleteOnSubmit(sesion);
            try
            {
                ong.SubmitChanges();
                gvSesiones.DataSource = sesion;
                gvSesiones.DataBind();
            }
            catch (Exception)
            {

                Response.Write("Eliminado");
            }
        }

        protected void btn_IniciarReu(object sender, EventArgs e)
        {
            Response.Redirect("~/index.html");
        }

        protected void btnAgregarRes_Click(object sender, EventArgs e)
        {
            clqOngDataContext ong = new clqOngDataContext();
            Resiliente resiliente = new Resiliente();
            resiliente.idResiliente = txtidResiliente.Text.Trim();
            resiliente.Nombre = txtNombreResiliente.Text.Trim();
            resiliente.ApellidoP = txtApellidoPRes.Text.Trim();
            resiliente.ApellidoM = txtApellidoMRes.Text.Trim();
            resiliente.Telefono = txtTelefonoRes.Text.Trim();
            resiliente.Correo = txtCorreoRes.Text.Trim();
            resiliente.Estado = txtEstadoRes.Text.Trim();
            resiliente.idSeguimiento = txtidSeguimientoRes.Text.Trim();
            resiliente.idUsuario = txtidUsuarioResiliente.Text.Trim();
            ong.Resiliente.InsertOnSubmit(resiliente);
            try
            {
                ong.SubmitChanges();
                gvResilientes.DataSource = resiliente;
                gvResilientes.DataBind();
            }
            catch (Exception)
            {
                Response.Write("Agregado");
            }
        }
    }
}