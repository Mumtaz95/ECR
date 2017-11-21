<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addNewDeptAdmin.aspx.cs" Inherits="mainAdminPages_addNewDeptAdmin" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add new admin</title>
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
                        <a class="nav-link" href="deptAdminProfiles.aspx"><span class="fa fa-arrow-circle-left"> Back</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
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
            <h1>Register New Admin</h1>
            <hr>
        </div>
        <div class="auth-form-body mt-3">
            <form runat="server">
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminFname">First Name:</label>
                    </div>
                    <div class="col-sm-4 form-group">
                        <asp:TextBox type="text" class="form-control" runat="server" name="deptAdminFname" id="deptAdminFname" placeholder="Paul" required></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminLname">Last Name:</label>
                    </div>
                    <div class="col-sm-4 from-group">
                        <asp:TextBox type="text" class="form-control" runat="server" name="deptAdminLname" id="deptAdminLname" placeholder="Walker" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminCity">City:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="text" class="form-control" runat="server" name="deptAdminCity" id="deptAdminCity" placeholder="Enter City Here" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminPoliceStation">Police Station:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="text" class="form-control" runat="server" name="deptAdminPoliceStation" id="deptAdminPoliceStation" placeholder="Police station name, Area" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminEmail">Email:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="email" class="form-control" runat="server" name="deptAdminEmail" id="deptAdminEmail" placeholder="abcd.efgh@example.com" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label class="control-label" for="deptAdminPost">Post/Designation:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="text" class="form-control" runat="server" name="deptAdminPost" id="deptAdminPost" placeholder="S.H.O or Head Constable e.t.c" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label for="password" class="control-label">Password:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="password" name="password" runat="server" id="password" class="form-control" placeholder="********" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2">
                        <label for="reTypePassword" class="control-label">Re-Type Password:</label>
                    </div>
                    <div class="col-sm-10 form-group">
                        <asp:TextBox type="reTypePassword" name="reTypePassword" runat="server" id="reTypePassword" class="form-control" placeholder="********" required></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 form-group center-block">
                        <asp:Button runat="server" onclick="Submit_Click" Text="Submit" class="btn btn-outline-primary"></asp:Button>
                    </div>
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