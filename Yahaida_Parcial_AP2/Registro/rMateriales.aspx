<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rMateriales.aspx.cs" Inherits="Yahaida_Parcial_AP2.Registro.rMateriales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 237px;
        }
        .auto-style3 {
            width: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Id</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtID" runat="server" OnTextChanged="TxtID_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnBuscar" runat="server" CssClass="auto-style1" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Razon</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtRazon" runat="server" Width="257px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Material </td>
                <td class="auto-style2">Cantidad</td>
                <td>
                    <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtMaterial" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCantidad" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GvMaterial" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdMatDetalle" DataSourceID="SqlMaterialDetalle" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="IdMateriales" HeaderText="Materiales" SortExpression="IdMateriales" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlMaterialDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1dbConnectionString %>" SelectCommand="SELECT * FROM [MaterialesDetalle]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" OnClick="BtnNuevo_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BtnGuarda" runat="server" Text="Guardar" />
                </td>
                <td>
                    <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
