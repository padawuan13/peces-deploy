<%@ Page Title="Agregar Ticket" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="AgregarTicket.aspx.cs" Inherits="PeCesConcepcion.AgregarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Agregar Nuevo Ticket</h2>
    <asp:ValidationSummary ID="vsErrores" runat="server" HeaderText="Por favor corrija los siguientes errores:" />
    <asp:FormView ID="fvNuevoTicket" runat="server" DefaultMode="Insert">
        <InsertItemTemplate>
            <asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." />
            <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre debe tener al menos 5 caracteres." ValidationExpression="^.{5,}$" />
            <br />
            <asp:Label ID="lblRut" runat="server" Text="RUT:"></asp:Label>
            <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El RUT es obligatorio." />
            <asp:RegularExpressionValidator ID="revRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Formato de RUT inválido." ValidationExpression="^(\d{8,9}-[\dkK])$" />
            <br />
            <asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El teléfono es obligatorio." />
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email es obligatorio." />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de email inválido." ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" />
            <br />
            <asp:Label ID="lblTipoCliente" runat="server" Text="Tipo de Cliente:"></asp:Label>
            <asp:DropDownList ID="ddlTipoCliente" runat="server">
                <asp:ListItem Text="Seleccionar" Value="" />
                <asp:ListItem Text="Empresa" Value="Empresa" />
                <asp:ListItem Text="Persona Natural" Value="PersonaNatural" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvTipoCliente" runat="server" ControlToValidate="ddlTipoCliente" InitialValue="" ErrorMessage="Debe seleccionar un tipo de cliente." />
            <br />
            <asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label>
            <asp:TextBox ID="txtProducto" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto es obligatorio." />
            <asp:RegularExpressionValidator ID="revProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto debe tener al menos 10 caracteres." ValidationExpression="^.{10,}$" />
            <br />
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto es obligatoria." />
            <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto debe tener al menos 10 caracteres." ValidationExpression="^.{10,}$" />
            <br />
            <asp:Button ID="btnGuardar" runat="server" CommandName="Insert" Text="Guardar" />
            <asp:Button ID="btnCancelar" runat="server" CommandName="Cancel" Text="Cancelar" PostBackUrl="~/ListaTickets.aspx" />
        </InsertItemTemplate>
    </asp:FormView>
</asp:Content>
