<%@ Page Title="Lista de Tickets" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ListaTickets.aspx.cs" Inherits="PeCesConcepcion.ListaTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lista de Tickets</h2>
    <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="Cliente.Nombre" HeaderText="Cliente" />
            <asp:BoundField DataField="Producto" HeaderText="Producto" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
            <asp:HyperLinkField Text="Ver Detalles" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DetalleTicket.aspx?Id={0}" />
            <asp:HyperLinkField Text="Editar" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/ActualizarTicket.aspx?Id={0}" />
            <asp:ButtonField CommandName="Delete" Text="Eliminar" />
        </Columns>
    </asp:GridView>
</asp:Content>
