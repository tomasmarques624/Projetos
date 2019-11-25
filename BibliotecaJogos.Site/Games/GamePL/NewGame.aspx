﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewGame.aspx.cs" Inherits="BibliotecaJogos.Site.NewGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Novo Jogo</title>
    <link href="../../Content/CustomStyles/LibraryStyles/custom_style.css" rel="stylesheet" />
    <link href="../../Content/CustomStyles/LoginRegisterStyles/loginregister.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h2>Novo Jogo</h2>
        </div>
        <div>
            <table>
                <tr>
                    <td>Titulo</td>
                    <td>
                        <asp:TextBox CssClass="form-control" id="tbxTitulo" runat="server" />
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="É necessário um titulo" Text="*" ControlToValidate="tbxTitulo" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Capa</td>
                    <td>
                        <asp:FileUpload runat="server" ID="fluCapa"/>
                         <asp:RequiredFieldValidator runat="server" ErrorMessage="É necessário uma capa" Text="*" ControlToValidate="fluCapa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Valor Pago</td>
                    <td>
                        <asp:TextBox CssClass="form-control" runat="server" ID="tbxValorPago" TextMode="Number" />  
                    </td>
                </tr>
                <tr>
                    <td>Data da Compra</td>
                    <td>
                        <asp:TextBox CssClass="form-control" runat="server" ID="tbxDataCompra" TextMode="Date" />  
                    </td>
                </tr>
                <tr>
                    <td>Editor</td>
                    <td>
                        <asp:DropDownList ID="ddlEditor" runat="server" CssClass="mydropdownlist">
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" ErrorMessage="É necessário um editor" Text="*" ControlToValidate="ddlEditor" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Género</td>
                    <td>
                        <asp:DropDownList ID="ddlGenero" runat="server" CssClass="mydropdownlist">
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" ErrorMessage="É necessário um género" Text="*" ControlToValidate="ddlGenero" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary HeaderText="<div class='validationheader'>&nbsp;Erros: </div>" ForeColor="Red" runat="server" displaymode="BulletList" CssClass="validationsummary"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="" ID="lbMensagem" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Button CssClass="btn btn-primary" id="btInserir" Text="Inserir" runat="server" OnClick="btInserir_Click"/>
                         <asp:Button CssClass="btn btn-secondary" id="btLimpar" Text="Limpar" CausesValidation="false" runat="server" OnClick="btLimpar_Click"/>
                        <asp:Button CssClass="btn btn-dark" id="btCancelar" Text="Cancelar" CausesValidation="false" runat="server" OnClick="btCancelar_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.4.1.min.js"></script>
</body>
</html>
