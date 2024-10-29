<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RDC_proyecto.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="RECURSOS/CSS/estilo.css" rel="stylesheet" />

    <title>INICIO</title>
</head>
    <body>
        <form id="formulario_index" class="form-control" runat="server">
          <div class="registro">
           <div class="formulari">

            <div class="row">
               <h1> BIENVENIDO A RDC(registro digital contable) </h1><br />
               <asp:Label runat="server" ID="lblUsaurio" CssClass="h3"> </asp:Label>
            </div>
            <div class="formulari"> 
            <asp:Label Class="h2" runat="server" Text="Registro proveedor"></asp:Label>
            </div>
            <div>
            <asp:Label ID="nombre_prove" runat="server" Text="Nombre proveedor"></asp:Label>
            <asp:TextBox ID="Tproveedor" CssClass="form-control" runat="server" placeholder="Nombre proveedor"></asp:TextBox>
            </div>
            <div>
            <asp:Label ID="tienda" runat="server" Text="nombre Tienda"></asp:Label>
            <asp:TextBox ID="Ttienda" CssClass="form-control" runat="server" placeholder="Nombre tienda"></asp:TextBox>
            </div>
            <div>
            <asp:Label ID="telefono" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="TTelefono" CssClass="form-control" runat="server" placeholder="Telefono"></asp:TextBox>
            </div>
            <div >
            <asp:Label ID="correo" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="TCorreo" CssClass="form-control" runat="server" placeholder="Correo"></asp:TextBox>
            </div>
            <br />
            <div class="row">
            <asp:Button ID="BGuardar" runat="server" Text="Guardar Registro"  CssClass="btn btn-dark" onClick="BGuardar_Click" />
            </div>
            <br />
               <div class="row">
               <asp:Label ID="lblMensaje" runat="server" CssClass="alert-danger" ></asp:Label>
               </div>
               <br />
            <div class="row">
            <asp:Button ID="BtCerrar" runat="server" text="Cerrar Sesion"   CssClass="btn btn-dark" onClick="BtCerrar_Click"/>  
          </div>
         </div>
        </div>
     </form>
</body>
</html>
