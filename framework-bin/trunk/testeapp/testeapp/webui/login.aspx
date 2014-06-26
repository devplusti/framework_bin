<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebUI.login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Semetra.Net versão Beta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="Content/bootstrap-responsive.css" />
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.min.css" />

    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }

            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }

            .form-signin input[type="text"],
            .form-signin input[type="password"] {
                font-size: 16px;
                height: auto;
                margin-bottom: 15px;
                padding: 7px 9px;
            }
    </style>
</head>

<script src="Scripts/jquery-1.9.0.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<body>
    <div class="container">
        <form id="loginForm" runat="server" class="form-signin">
            <h2 class="form-signin-heading">
                <center> <img width="230px" src="images/logo_semetra_mais.jpg" /> </center>
            </h2>
            <p>Bem-Vindo, para acessar o sistema você precisa se autenticar.</p>

            <%--            <input name='usuarioInput' type="text" class="input-block-level img-rounded" placeholder="Usuário">
            <input name='senhaInput' type="password" class="input-block-level img-rounded" placeholder="Senha">
            --%>
            <asp:TextBox ID="loginTextBox" runat="server" CssClass="input-block-level img-rounded"></asp:TextBox>
            <asp:TextBox ID="senhaTextBox" runat="server" CssClass="input-block-level img-rounded" TextMode="Password"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Entrar" Width="79px" class="btn btn-large btn-primary center-block" />
        </form>
    </div>

    <div class="panel-footer">
        <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
    </div>
</body>
</html>
