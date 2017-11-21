<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedBacks.aspx.cs" Inherits="mainAdminPages_FeedBacks" %>
<!DOCTYPE html>
<html lang="en">
    <head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Main Admin</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../full-slider/full-slider.css" rel="stylesheet">
    <link rel="shortcut icon" href="~/images/favicon.ico" type="image/x-icon">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">E-Crime Reporting<h6 runat="server" id="userMail" name="userMail"></h6></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="MainAdminHome.aspx">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="FIRs.aspx">FIRs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="deptAdminProfiles.aspx">Admins</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">FeedBacks</a>
                        <span class="sr-only">(current)</span>                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" runat="server" onserverclick="LogOut_Click">Logout</a>
                    </li>
                    </ul>
            </div>
        </div>
    </nav>
   <br>
   <br>
   <br>
    <div class="container">
    <div class="table-responsive">
    <form id="form1" class="table table-bordered" runat="server">
        <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="feedBackID" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Complain ID" SortExpression="feedBackID">
                <ItemTemplate>
                    <asp:Label ID="Label0" runat="server" Text='<%# Bind("feedBackID") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Complainant" SortExpression="feedBackUser">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("feedBackUser") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="Feed Back" SortExpression="feedBackDetails">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("feedBackDetails") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowHeader="True" />
        </Columns>
    </asp:GridView>
        </div>
    </form>
        </div>
        </div>
    <!-- Page Content -->
    <section class="py-5">
        <div class="container">
            <h1>E-Crime Reporting System</h1>
            <p>The world suffers a lot. Not because of the violence of bad people but because of the silence of the good people.</p>
        </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; E-Crime Reporting BC130401675</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/popper/popper.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
