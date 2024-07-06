<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="UHCLIENTESWEB.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/menu.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Clientes</title>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a class="active" href="menu.aspx">Inicio</a></li>
                <li><a href="Clientes.aspx">Clientes</a></li>
                <li><a href="#contact">Contactos</a></li>
                <li style="float: right"><a href="#about">Salir</a></li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
            </ul>

        </div>
        <div>
            <h1>PAGINA DE CLIENTES</h1>
        </div>

        <div>
            <table align="center" class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="215px" Width="385px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>

        <div>

            <div class="mb-3">
                <label class="form-label">Cedula  </label>
                <asp:TextBox class="form-control" ID="tcedula" runat="server"></asp:TextBox>
            </div>

            <br />
            <div class="mb-3">
                <label class="form-label">Nombre  </label>
                <asp:TextBox class="form-control" ID="tnombre" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="mb-3">
                <label class="form-label">Telefono  </label>
                <asp:TextBox class="form-control" ID="ttelefono" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="mb-3">
                <label class="form-label">Fecha Nacimiento  </label>
                <br />
                <asp:TextBox class="form-control" ID="tfecha" type="date" runat="server"></asp:TextBox>
            </div>
            <br />

            <div class="mb-3">
                <label class="form-label">Estado  </label>
                <br />
                <asp:TextBox class="form-control" ID="testado" runat="server"></asp:TextBox>
            </div>

            <div>
                <br />
                <asp:Button ID="Bagregar" class="btn btn-outline-primary" runat="server" Text="Agregar" OnClick="Bagregar_Click" />
                <asp:Button ID="Beliminar" class="btn btn-outline-danger" runat="server" Text="Eliminar" OnClick="Beliminar_Click" />
                <asp:Button ID="Bactualizar" class="btn btn-outline-primary" runat="server" Text="Modificar" />
                <asp:Button ID="Bconsulta" class="btn btn-outline-primary" runat="server" Text="Consulta" />
            </div>

        </div>

    </form>
</body>
</html>
