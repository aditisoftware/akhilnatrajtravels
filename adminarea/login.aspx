<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" enableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Admin Login-Akhilnatrajtravels</title>
        <meta name="viewport" content="width=device-width" />
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">&nbsp;</div>
            <div class="col-md-12">&nbsp;</div>
            <div class="col-md-12">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-md-offset-3">
                <div class="panel panel-success">
                    <div class="panel-heading">Enter username and password.</div>
                    <form runat="server" id="Form1">
                        <div class="row panel-body">
                            <div class="col-md-offset-2 col-md-8 margin-bottom-15">
                                <label for="username">Username</label>
                                <asp:TextBox ID="username" name="username" runat="server" class="form-control" placeholder="Enter Username"></asp:TextBox>
                            </div>
                            <div class="col-md-offset-2 col-md-8 margin-bottom-15">
                                <label for="password">Password</label>
                                <asp:TextBox ID="password" name="password" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password">password</asp:TextBox>
                            </div>
                            <div class="col-md-offset-2 col-md-8 margin-bottom-15">
                                <asp:Button ID="signin" runat="server" CssClass="btn btn-primary" Text="Sign In" OnClick="signin_Click" />&nbsp;<input id="reset" class="btn btn-default" title="Reset" type="reset" value="Reset" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/templatemo_script.js"></script>
</html>
