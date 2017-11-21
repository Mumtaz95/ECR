<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deptAdminProfiles.aspx.cs" Inherits="mainAdminPages_deptAdminProfiles" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dept. Admin Profiles</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <li class="nav-item">
                        <a class="nav-link" href="#">FIRs</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="deptAdminProfiles.aspx">Admins</a>
                        <span class="sr-only">(current)</span>                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="FeedBacks.aspx">FeedBacks</a>
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
    <br>
    <div class="container">
        <div class="text-center center-block">
            <h1>Department Admin Profiles</h1>
            <a href="addNewDeptAdmin.aspx">
                <button class="btn btn-outline-primary">Add new dept. Admin</button>
            </a>
        </div>
        <hr>
    </div>
     <div class="container">
    <div class="table-responsive">
    <form id="form1" class="table table-bordered" runat="server">
        <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="deptAdminID" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Admin ID" SortExpression="deptAdminID">
                <ItemTemplate>
                    <asp:Label ID="Label0" runat="server" Text='<%# Bind("deptAdminID") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name" SortExpression="firstName">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("firstName") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="lastName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastName") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="city">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("city") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Police Station" SortExpression="policeStation">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("policeStation") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Post" SortExpression="post">
                <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("post") %>'></asp:TextBox>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("post") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="password">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("password") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:CommandField HeaderText="Action" ShowEditButton="true" ShowDeleteButton="True" ShowHeader="True" />
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


        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/popper/popper.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>