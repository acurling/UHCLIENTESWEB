<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="UHCLIENTESWEB.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/menu.css" rel="stylesheet" />
    <title>Pagina de clientes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a class="active" href="menu.aspx">Inicio</a></li>
                <li><a href="Clientes.aspx">Clientes</a></li>
                <li><a href="#contact">Contactos</a></li>
                <li style="float: right"><a href="#about">Salir</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
