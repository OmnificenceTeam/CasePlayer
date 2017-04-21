<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />
    <link href="css/animations.css" rel="stylesheet" />
    <link href="css/component.css" rel="stylesheet" />
    <script src="js/modernizr.custom.js"></script>

</head>
<body style="overflow: hidden;" onresize="positionLogo()">
    <div style="z-index: 20; width: 100%; height: 100px; position: fixed; top: 0px; opacity: 1;">
        <img src="img/Header.jpg" style="height: 100px; width: 1024px; top: 0px; z-index: 1; float: left;" />
        <img src="img/Transexpert-logo.png" id="logo" style="height: 72px; float: left; width: 239px; top: 15px; z-index: 1; left: 1127px; position: absolute;" />
    </div>
    <div class="container" id="content" style="height: 100%; width: 100%; top: 100px; position: fixed; -webkit-overflow-scrolling: touch; background-color: white;">
       <div>
         <form class="form-signin" role="form" runat="server">
        <h3 class="form-signin-heading">Login</h3>
             <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email address" required="" autofocus=""></asp:TextBox>
                 <asp:TextBox ID="password" runat="server" TextMode="Password" class="form-control" placeholder="Password" required=""></asp:TextBox>

            <br /><br /><br />
             <asp:Button ID="Login" runat="server" class="btn btn-lg btn-custom btn-block" Text="Login" OnClick="Login_Click" />
             <asp:Label ID="lblMesage" runat="server" Visible="false" Text="Invalid Credentials" ForeColor="Red"></asp:Label>
      </form>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->

    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function positionLogo() {
            document.getElementById("logo").style.left = (window.innerWidth) - 239 + "px";
        }
    </script>

</body>
</html>

