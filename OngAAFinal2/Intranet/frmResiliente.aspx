<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmResiliente.aspx.cs" Inherits="OngAAFinal2.Intranet.frmResiliente" %>

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
            <div align="center">
                <img src="logo.jpg" alt="Alternate Text" width="100" height="100"  />
            </div>
            
            <h2 class="titulo" >Bienvenido Resiliente</h2>
            <h3 class="titulo">
        
            <asp:LoginName ID="LoginName1" runat="server" />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </h3>
            <asp:Button CssClass="button" ID="btnDiasSobrio" runat="server" Text="Ver"/>
            <p>
                <asp:Button CssClass="button" Text="Listar Sesiones" runat="server" ID="btnListarResiliente" OnClick="btnListarResiliente_Click" />
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
          
            <h3>
                <asp:Button CssClass="button" ID="btnLibros" runat="server" Text="Ver  Libros" OnClick="btnLibros_Click" />
            </h3>
            <p>
                <asp:GridView ID="gvListarLibros" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            </p>
            <h3>Contactar Mentor</h3>
            <p>
            <asp:Button CssClass="buttonrojo" Text="Contactar" runat="server" id="btnLlamar" OnClick="btnLlamar_Click"/>
                <asp:Button  CssClass="button" Text="WhatsApp" runat="server" ID="btnWhatsapp" />
            </p>
            <br />
            <asp:Button CssClass="buttonrojo" Text="HE RECAIDO" runat="server" ID="btnRecaido"  />
        </div>
    </form>
</body>
</html>
