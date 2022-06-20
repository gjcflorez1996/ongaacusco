<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMentor.aspx.cs" Inherits="OngAAFinal2.Intranet.frmMentor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="estilos.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
                <img src="logo.jpg" alt="Alternate Text" width="100" height="100"  />
            </div>
        <div align="center">
            <h3 class="titulo">Bienvenido Mentor</h3>
            <p class="titulo">
              
            
                <asp:LoginName ID="LoginName1" runat="server" />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                
            </p>
            <div>
            <p>
            <asp:Button CssClass="button" Text="Inicio" runat="server" ID="btnIncio" OnClick="btnIncio_Click" />
            <asp:Button CssClass="button" Text="Resilientes" runat="server" ID="btnResilientes" OnClick="btnResilientes_Click" />
            <asp:Button CssClass="button" Text="Mentores" runat="server" ID="btnMentores" OnClick="btnMentores_Click" />
            <asp:Button CssClass="button" Text="Libros" runat="server" ID="btnLibros" OnClick="btnLibros_Click" />
            <asp:Button CssClass="button" Text="Auspiciadores" runat="server" ID="btnAuspiciadores" OnClick="btnAuspiciadores_Click"/>
            <asp:Button CssClass="button" Text="Seguimientos" runat="server" id="btnSeguimiento" OnClick="btnSeguimiento_Click"/>
            <asp:Button CssClass="button" Text="Usuarios" runat="server" id="btnUsuarios" OnClick="btnUsuarios_Click" />
            <asp:Button CssClass="button" ID="btnSesion" runat="server" Text="Sesiones" OnClick="btnSesion_Click" />
                <asp:Button CssClass="buttonrojo" Text="Iniciar Reunion" runat="server" OnClick="btn_IniciarReu" style="width: 214px" />
              
            
            </p>
            </div>
          
            <asp:MultiView ActiveViewIndex="0" runat="server" ID="mvIndex">
                <asp:View runat="server" ID="v01">
                    <h3>Resumen</h3>
                    <asp:Button CssClass="buttonverde" Text="Ver" runat="server" ID="btnVerResumen" OnClick="btnVerResumen_Click" />
                    <br />
                    <br />
                    <asp:GridView runat="server" ID="gvIndex" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v02">
                    <h3>Resilientes</h3>
                    <p>IdResiliente: <asp:TextBox runat="server" id="txtidResiliente"/></p>
                    <p>Nombre: <asp:TextBox runat="server" id="txtNombreResiliente"/></p>
                    <p>Apellido Paterno: <asp:TextBox runat="server" id="txtApellidoPRes"/></p>
                    <p>Apellido Materno: <asp:TextBox runat="server" id="txtApellidoMRes"/></p>                   
                    <p>Telefono: <asp:TextBox runat="server" id="txtTelefonoRes"/></p>
                    <p>Correo: <asp:TextBox runat="server" id="txtCorreoRes"/></p>
                    <p>Estado: <asp:TextBox runat="server" id="txtEstadoRes"/></p>
                    <p>idSeguimiento: <asp:TextBox runat="server" id="txtidSeguimientoRes"/></p>
                    <p>idUsuario: <asp:TextBox runat="server" id="txtidUsuarioResiliente"/></p>
                     <p> 
                        <asp:Button Text="Listar" runat="server" Id="btnListarResilientes" OnClick="btnListar_Click"/>
                        <asp:Button Text="Agregar" runat="server" id="btnAgregarRes" OnClick="btnAgregarRes_Click" />
                        <asp:Button Text="Eliminar" runat="server" id="btnEliminarRes" OnClick="btnEliminarRes_Click" />
                        <asp:Button Text="Actualizar" runat="server" ID="btnActualizarRes" />
                    </p>

                   
                    <br />
                    <asp:GridView runat="server" ID="gvResilientes" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v03">
                    <h3>Mentores</h3>
                    <p>DNI: <asp:TextBox runat="server" id="txtdniMentor"/></p>
                    <p>Nombre: <asp:TextBox runat="server" id="txtNombreMentor"/></p>
                    <p>Apellido: <asp:TextBox runat="server" id="txtApellidoMentor"/></p>
                    <p>Especilidad: <asp:TextBox runat="server" id="txtEspecialidad"/></p>
                    <p>Direccion: <asp:TextBox runat="server" ID="txtDireccionMentor" /></p>
                    <p>Telefono: <asp:TextBox runat="server" id="txtTelefonoMentor"/></p>
                    <p>Correo: <asp:TextBox runat="server" id="txtCorreoMentor"/></p>
                    <p>Estado: <asp:TextBox runat="server" id="txtEstadoMentor"/></p>
                    <p>idUsuario <asp:TextBox runat="server" id="txtidUsuarioMentor"/></p>
                    <p> 
                        <asp:Button Text="Listar" runat="server"  ID="btnListarMentores" OnClick="btnListarMentores_Click"/>
                        <asp:Button Text="Agregar" runat="server" id="btnAgregarMentores" OnClick="btnAgregarMentores_Click" />
                        <asp:Button Text="Eliminar" runat="server" id="btnEliminarMentor" OnClick="btnEliminarMentor_Click"  />
                        <asp:Button Text="Actualizar" runat="server" ID="btnActualizarMentor"  />
                    </p>
                    
                    <asp:GridView runat="server" ID="gvMentores" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v04">
                    <h3>Libros</h3>
                    <p>idLibro <asp:TextBox runat="server" id="txtIdLibro"/></p>
                    <p>Nombre de Libro <asp:TextBox runat="server" id="txtNombreLibro"/></p>
                    <p>Autor <asp:TextBox runat="server" id="txtAutorLibro"/></p>
                    <p>Copias <asp:TextBox runat="server" id="txtCopiasLibro"/></p>
                    <asp:Button Text="Listar" runat="server"  ID="btnListarLibros" OnClick="btnListarLibros_Click"/>
                    <asp:Button Text="Agregar" runat="server" id="btnAgregarLibros" OnClick="btnAgregarLibros_Click"/>
                    <asp:Button Text="Eliminar" runat="server" id="btnEliminarLibro" OnClick="btnEliminarLibro_Click"/>
                    <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click" />

                    <p>
                        Buscar: <asp:TextBox runat="server" ID="txtBuscar" />
                        <asp:DropDownList runat="server">
                            <asp:ListItem Text="Nombre" />
                            <asp:ListItem Text="Autor" />
                        </asp:DropDownList>
                    </p>
                    <asp:GridView runat="server" ID="gvLibros" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v05">
                <h3>Auspiciadores</h3>
                    <p>RUC: <asp:TextBox runat="server" id="txtruc"/></p>
                    <p>Razon Social: <asp:TextBox runat="server" id="txtRazonSocial"/></p>
                    <p>Direccion: <asp:TextBox runat="server" id="txtDireccion"/></p>
                    <p>Telefono: <asp:TextBox runat="server" id="txtTelefono"/></p>
                    <p>Correo: <asp:TextBox runat="server" id="txtCorreo"/></p>
                    <p>
                        <asp:Button Text="Listar" runat="server" ID="btnListarAus" OnClick="btnListarAus_Click" />
                        <asp:Button Text="Agregar" runat="server" ID="btnAgregarAus" OnClick="btnAgregarAus_Click" />
                        <asp:Button Text="Eliminar" runat="server" id="btnEliminarAus" OnClick="btnEliminarAus_Click"/>
                        <asp:Button Text="Actualizar" runat="server" id="btnActualizarAus" OnClick="btnActualizarAus_Click"/>

                    </p>
                    <asp:GridView runat="server" ID="gvAuspiciador" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v06">
                    <h3>Seguimiento</h3>
                    <p>idSeguimiento: <asp:TextBox runat="server" id="txtidSeguimiento"/></p>
                    <p>Dias Asistido: <asp:TextBox runat="server" id="txtDiasAsistidos"/></p>
                    <p>Dias Falto: <asp:TextBox runat="server" id="txtDiasFalto"/></p>
                    <p>Recaidas: <asp:TextBox runat="server" id="txtRecaidas"/></p>
                    <p>
                        <asp:Button Text="Listar" runat="server" ID="btnListarSeg" OnClick="btnListarSeg_Click" />
                        <asp:Button Text="Agregar" runat="server" ID="btnAgregarSeg" OnClick="btnAgregarSeg_Click" />
                        <asp:Button Text="Eliminar" runat="server" id="btnEliminarSeg" OnClick="btnEliminarSeg_Click" />
                        <asp:Button Text="Actualizar" runat="server" id="btnActualizarSeg" />
                    </p>
                    <asp:GridView runat="server" ID="gvSeguimiento" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </asp:View>
                <asp:View runat="server" ID="v07">
                    <h3>Usuarios</h3>
                    <p>idUsuario: <asp:TextBox runat="server" id="txtidUsuario"/></p>
                    <p>Contraseña: <asp:TextBox runat="server" id="txtContrasenia"/></p>
                    <p>TipoUsuario: <asp:TextBox runat="server" id="txtTipo_Usuario"/></p>
                  
                    <p>
                        <asp:Button Text="Listar" runat="server" ID="btListarUsr" OnClick="btListarUsr_Click"/>
                        <asp:Button Text="Agregar" runat="server" ID="AgregarUsr" OnClick="AgregarUsr_Click" />
                        <asp:Button Text="Eliminar" runat="server" id="EliminarUsr" />
                        <asp:Button Text="Actualizar" runat="server" id="ActualizarUsr" />
                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                    </p>
                    <asp:GridView runat="server" ID="gvUsuarios" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>

                    <br />

                </asp:View>
                  <asp:View runat="server" ID="View8">
                    <h3>Sesiones</h3>
                    <p>idSesion: <asp:TextBox runat="server" id="txtidSesion"/></p>
                    <p>Nombre: <asp:TextBox runat="server" id="txtNombreSesion"/></p>
                    <p>Fecha: <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox></p>
                    <p>MontoSesion: <asp:TextBox runat="server" id="txtMontoSesion"/></p>
                    <p>DNI Mentor: <asp:TextBox runat="server" id="txtDniMentorSesion"/></p>
                  
                    <p>
                        <asp:Button Text="Listar" runat="server" ID="btnListarSesion" OnClick="btnListarSesion_Click" />
                        <asp:Button Text="Agregar" runat="server" ID="btnAgregarSesion" OnClick="btnAgregarSesion_Click"  />
                        <asp:Button Text="Eliminar" runat="server" id="btnEliminarSesion" OnClick="btnEliminarSesion_Click" />
                        <asp:Button Text="Actualizar" runat="server" id="btnActualizarSesion" />
             
                    </p>
                    <asp:GridView runat="server" ID="gvSesiones" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                      </asp:GridView>

                    <br />

                </asp:View>
                
            </asp:MultiView>
        </div>
    </form>
    <footer>
        JavaJavaDoo
    </footer>
    </body>
</html>
