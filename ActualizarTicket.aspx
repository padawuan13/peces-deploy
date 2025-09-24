<%@ Page Title="Actualizar Ticket" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="PeCesConcepcion.ActualizarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Actualizar Ticket</h2>
    <asp:ValidationSummary ID="vsErrores" runat="server" HeaderText="Por favor corrija los siguientes errores:" />
    <asp:FormView ID="fvActualizarTicket" runat="server" DefaultMode="Edit">
        <EditItemTemplate>
            <asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label>
            <asp:TextBox ID="txtCliente" runat="server" Text='<%# Bind("Cliente.Nombre") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCliente" runat="server" ControlToValidate="txtCliente" ErrorMessage="El nombre del cliente es obligatorio." />
            <asp:RegularExpressionValidator ID="revCliente" runat="server" ControlToValidate="txtCliente" ErrorMessage="El nombre del cliente debe tener al menos 5 caracteres." ValidationExpression="^.{5,}$" />
            <br />
            <asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label>
            <asp:TextBox ID="txtProducto" runat="server" Text='<%# Bind("Producto") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto es obligatorio." />
            <asp:RegularExpressionValidator ID="revProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto debe tener al menos 10 caracteres." ValidationExpression="^.{10,}$" />
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server" Text='<%# Bind("Descripción") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto es obligatoria." />
            <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto debe tener al menos 10 caracteres." ValidationExpression="^.{10,}$" />
            <br />
            <asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label>
            <asp:TextBox ID="txtEstado" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEstado" runat="server" ControlToValidate="txtEstado" ErrorMessage="El estado es obligatorio." />
            <br />
            <asp:Button ID="btnGuardar" runat="server" CommandName="Update" Text="Guardar" />
            <asp:Button ID="btnCancelar" runat="server" CommandName="Cancel" Text="Cancelar" PostBackUrl="~/ListaTickets.aspx" />
        </EditItemTemplate>
    </asp:FormView>
</asp:Content>
