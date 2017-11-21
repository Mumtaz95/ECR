<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FIRS.aspx.cs" Inherits="deptAdminPages_FIRS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Department Admin</title>
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
                        <a class="nav-link" href="deptAdminHome.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">FIRs</a>
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
    <div class="container">
    <div class="table-responsive">
    <form id="form1" class="table table-bordered" runat="server">
        <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="firID"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Complain ID" SortExpression="firID">
                <ItemTemplate>
                    <asp:Label ID="Label0" runat="server" Text='<%# Bind("firID") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Complainant" SortExpression="Complainant">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Complainant") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type Of Complainant" SortExpression="firTypeOfComplainant">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("firTypeOfComplainant") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type Of Crime" SortExpression="firTypeOfCrime">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("firTypeOfCrime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Other Type" SortExpression="firIfOther">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("firIfOther") %>'></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Of Crime">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("firDateOfCrime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Time Of Crime">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("firTmeOfCrime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details" SortExpression="firDetails">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("firDetails") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="firStatus">
                <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("firStatus") %>'></asp:TextBox>
                    </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label8" runat="server" Text='<%# Bind("firStatus") %>'></asp:Label>
                  </ItemTemplate>
            </asp:TemplateField>
                <asp:CommandField HeaderText="Action" ShowEditButton="True" ShowHeader="True" />
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

</body>
</html>
