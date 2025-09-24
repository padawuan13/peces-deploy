<%@ Page Title="Detalle del Ticket" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="PeCesConcepcion.DetalleTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Detalles del Ticket</h2>
    <asp:DetailsView ID="dvTicketDetalles" runat="server" AutoGenerateRows="True" DataKeyNames="Id">
    </asp:DetailsView>
    <asp:HyperLink ID="hlVolverLista" runat="server" NavigateUrl="~/ListaTickets.aspx">Volver a la Lista</asp:HyperLink>
</asp:Content>
