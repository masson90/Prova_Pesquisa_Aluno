<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pesquisar.aspx.cs" Inherits="Prova_Pesquisa_Aluno.Pesquisar" %>

<!DOCTYPE html>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="text-center text-primary" style="margin-top: 15px">
                <h2>Pesquisar Aluno</h2>
            </div>

            <div class="row" style="margin-top: 15px">
                <div class="col-md-5">
                    <label>RA:</label>
                    <asp:TextBox ID="txtRA" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label>Nome:</label>
                    <asp:TextBox ID="txtNome" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Sexo:</label>
                    <asp:TextBox ID="txtSexo" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>                
            </div>

            <div class="row" style="margin-top: 15px">

                <div class="col-md-3">
                    <label>Data de Nascimento:</label>
                    <asp:TextBox ID="txtNasc" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-3">
                    <label>E-mail:</label>
                    <asp:TextBox ID="txtEmail" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label>Endereço:</label>
                    <asp:TextBox ID="txtEndereco" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label>Curso:</label>
                    <asp:TextBox ID="txtCurso" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label>Ano de Ingresso:</label>
                    <asp:TextBox ID="txtIngresso" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                </div>

            </div>

            <div class="row" style="margin-top: 15px">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnPesquisar" CssClass="btn btn-primary" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
                </div>
            </div>

            <div class="row" style="margin-top: 15px">
                <div class="col-md-12 text-right">
                    <asp:Label ID="lblResultado" CssClass="text text-danger" Enabled="false" runat="server"></asp:Label>
                </div>
            </div>

        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
