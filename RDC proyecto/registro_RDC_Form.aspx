<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro_RDC_Form.aspx.cs" Inherits="RDC_proyecto.Registro_RDC_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="RECURSOS/CSS/estilo.css" />
    <title>RDC_FORMULARIO</title>
</head>
<body class="bg-light">
    <div class="Wrapper">
        <div id="Formcontent">
            <form id="FORM1" runat="server">
                <div class="form-control">
                    <div class="row">
                        <asp:Label Class="h2" ID="RDCBienvenido" runat="server" Text="BIENVENIDO/A A EL SISTEMA "></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="FORUsuario" runat="server" Text="USUARIO"></asp:Label>
                        <asp:TextBox ID="TUsuario" CssClass="form-control" runat="server" placeholder="Nombre de usuario"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="formPassword" runat="server" Text="PASSWORD"></asp:Label>
                        <asp:TextBox ID="TPassword" CssClass="form-control"  runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    </div>
                    <hr />

                    <div class="row">
                        <asp:Button ID="BtIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="INGRESAR" OnClick="BtIngresar_Click" />
                    </div>
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblMensaje"></asp:Label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
