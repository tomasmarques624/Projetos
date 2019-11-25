﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Genres.aspx.cs" Inherits="BibliotecaJogos.Site.Games.GenrePL.Genres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Géneros</title>
    <link href="../../Content/CustomStyles/LoginRegisterStyles/loginregister.css" rel="stylesheet" />
    <link href="../../Content/CustomStyles/LibraryStyles/custom_style.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
            <div class="jumbotron">
                <h2>Géneros</h2>
            </div>
            <div>
             <asp:GridView ID="gvGenreList" AutoGenerateColumns="false" EmptyDataText="Sem registos" runat="server" ViewStateMode="Enabled"
                  OnRowDeleting="gvGenreList_RowDeleting"
                  OnRowEditing="gvGenreList_RowEditing"
                  OnRowUpdating="gvGenreList_RowUpdating"
                  OnRowCancelingEdit="gvGenreList_RowCancelingEdit"  CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" >
                <Columns>
                    <asp:BoundField DataField ="id_genre" ReadOnly="true" HeaderText="ID" />
                </Columns>
                    <Columns>
                    <asp:BoundField DataField ="description_genre" HeaderText="Género" />
                </Columns>
                <Columns>
                    <asp:CommandField ButtonType="Link" DeleteText="Apagar" ShowDeleteButton="True" />
                    <asp:CommandField ButtonType="Link" EditText="Editar" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            </div>
            <div>
                <br />
                <asp:Label id="lbMensagem" Text="" runat="server" />
                <br />
             </div>
            <div>
                <asp:Button id="btNovoGenero" CssClass="btn btn-primary" Text="Novo Género" runat="server" OnClick="btNovoGenero_Click" />
                <asp:Button id="btVerCatalogo" CssClass="btn btn-secondary" Text="Ver Catálogo dos Jogos" runat="server" OnClick="btVerCatalogo_Click"/>
            </div>
    </form>
    <script src="../../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
</body>
</html>
