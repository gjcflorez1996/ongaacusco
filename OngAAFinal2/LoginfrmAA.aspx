<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginfrmAA.aspx.cs" Inherits="OngAAFinal2.LoginfrmAA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Intranet/estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
                <img src="Intranet/logo.jpg" alt="Alternate Text" width="100" height="100"  />
            </div>
        <div align="center">
        <h3 class="">Login</h3>
            Tipo de Usuario: <asp:DropDownList runat="server" ID="ddlTipoUsuario">
                <asp:ListItem Text="Mentor" />
                <asp:ListItem Text="Resiliente" />
            </asp:DropDownList>

        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="160px" Width="300px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
            <br />
            <br />
            
            <asp:Button CssClass="buttonnaranja" ID="btnIniciarchat" runat="server" Text="Ingresar a Reunion" OnClick="btnIniciarchat_Click" />
                
        <br />
            </div>
    </form>
</body>
</html>
