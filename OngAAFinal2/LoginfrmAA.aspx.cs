using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace OngAAFinal2
{
    public partial class LoginfrmAA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            
            using (clqOngDataContext usuario = new clqOngDataContext())
            {
                var usuarios = Login1.UserName;
                var pass = GetSHA256(Login1.Password);
                var tipo = ddlTipoUsuario.SelectedValue;

                var consultas = usuario.Usuario.Where(u => u.idUsuario == usuarios).FirstOrDefault();
                if(consultas != null)
                    if (consultas.idUsuario == usuarios && consultas.ContrasenaUsuario==pass)
                    {
                        if (tipo == "Mentor")
                        {
                            string nombre = consultas.idUsuario;
                            FormsAuthentication.RedirectFromLoginPage(nombre, false);
                            Response.Redirect("Intranet/frmMentor.aspx");
                        }
                        else 
                        {
                            string nombre = consultas.idUsuario;
                            FormsAuthentication.RedirectFromLoginPage(nombre, false);
                            Response.Redirect("Intranet/frmResiliente.aspx");
                        }
                            
                    }
            }
        }

        protected void btnIniciarchat_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.html");
        }
    }
}