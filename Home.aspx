<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PeCesConcepcion.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Bienvenido al Sistema de Gestión de Tickets</h2>
    <div>
        <asp:Image ID="imgLogoPrincipal" runat="server" ImageUrl="~/Images/LogoEmpresa.png" AlternateText="Logo de la Empresa" />
    </div>
    <div class="inicio-links">
        <asp:HyperLink ID="hlVerTickets" runat="server" NavigateUrl="~/ListaTickets.aspx">Ver Todos los Tickets</asp:HyperLink><br />
        <asp:HyperLink ID="hlAgregarTicket" runat="server" NavigateUrl="~/AgregarTicket.aspx">Agregar Nuevo Ticket</asp:HyperLink><br />
        <asp:HyperLink ID="hlAcercaDe" runat="server" NavigateUrl="~/AcercaDe.aspx">Acerca de la Empresa</asp:HyperLink>
    </div>
</asp:Content>
