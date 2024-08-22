<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="MakemyTrip.User_Profile" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../img/apple-icon.png">
    <link rel="icon" type="image/png" href="../img/favicon.png">
    <title>Make my Trip
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="../css/nucleo-icons.css" rel="stylesheet" />
    <link href="../css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="../css/material-dashboard.css?v=3.0.4" rel="stylesheet" />
</head>

<style>
    table {
        border: 2px solid black;
        border-radius: 5px;
        width: 100%;
        ;
    }


    .dataview th {
        padding: 0px;
        border-radius: 100px;
        border: 1px solid black;
        padding-bottom: 4px;
        padding-top: 4px;
        background-color: darkgray;
    }

    .dataview td {
        padding: 0px;
        border: 1px solid black;
        padding-bottom: 4px;
        padding-top: 4px;
        text-align: center;
    }
</style>


<body class="g-sidenav-show bg-gray-200"">
    <form runat="server">

        <div class="main-content position-relative max-height-vh-100 h-100">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">

                        <h4 class="font-weight-bolder mb-0">Profile</h4>
                    </nav>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid px-2 px-md-4" >
                <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
                    <span class="mask  bg-gradient-primary  opacity-6" ></span>
                </div>
                <div class="card card-body mx-3 mx-md-4 mt-n6">
                    <div class="row gx-4 mb-2">
                        <div class="col-auto">
                            <div class="avatar avatar-xl position-relative">
                                <img src="../img/bruce-mars.jpg" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                            </div>
                        </div>

                    </div>
                    <div class="col-12 col-xl-4" >
                        <div class="card card-plain h-100">
                            <div class="card-header pb-0 p-3">
                                <div class="row">
                                    <div class="col-md-8 d-flex align-items-center">
                                        <h6 class="mb-0">Profile Information</h6>
                                    </div>
                                    <div class="col-md-4 text-end">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-3">
                                <hr class="horizontal gray-light my-4">
                                <ul class="list-group">
                                    <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Full Name:</strong> &nbsp; Aryan</li>
                                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mobile:</strong> &nbsp; 7985422121</li>
                                    <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Email:</strong> &nbsp;
                                        <asp:Label ID="user_name" runat="server" Text="User"></asp:Label></li>
                                    <li class="list-group-item border-0 ps-0 pb-0">
                                        <strong class="text-dark text-sm">Social:</strong> &nbsp;
                      <a class="btn btn-facebook btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                          <i class="fab fa-facebook fa-lg"></i>
                      </a>
                                        <a class="btn btn-twitter btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                                            <i class="fab fa-twitter fa-lg"></i>
                                        </a>
                                        <a class="btn btn-instagram btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                                            <i class="fab fa-instagram fa-lg"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="row" style="margin-top: 100px; margin-left: 35px; ">
            <div class="col-12" >
                <div class="card my-4" style="width: 190vh; text-align: center;">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3" >
                            <h6 class="text-white text-capitalize ps-3" >Destination Booking History</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2" >
                        <div class="table-responsive p-0">



                            <table class="dataview">

                                <tr>

                                    <td><b>User Name</b></td>
                                    <td><b>Email</b></td>
                                    <td><b>Phone</b></td>
                                    <td><b>Address</b></td>
                                    <td><b>Adult</b></td>
                                    <td><b>Children</b></td>
                                    <td><b>Arrival Date</b></td>
                                    <td><b>Departure Date</b></td>
                                    <td><b>Payment Method</b></td>
                                    <td><b>Package Name</b></td>
                                    <td><b>Price</b></td>
                                    <td><b>Days</b></td>

                                </tr>



                                <% for (int i = 0; i < hemail.Length; i++)
                                               { %>

                                <tr>


                                    <td><%=hname[i] %>  </td>
                                    <td><%=hemail[i] %> </td>
                                    <td><%=hphone[i] %> </td>
                                    <td><%=haddress[i] %> </td>
                                    <td><%=hadult[i] %> </td>
                                    <td><%=hchild[i] %> </td>
                                    <td><%=harrival[i] %> </td>
                                    <td><%=hdep[i] %> </td>
                                    <td><%=hpay[i]%>  </td>
                                    <td><%=pname[i] %> </td>
                                    <td><%=pprice[i] %> </td>
                                    <td><%=pdays[i] %> </td>



                                </tr>
                                <% }%>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>




        <div class="row" style="margin-top: 100px; margin-left: 35px;">
            <div class="col-12">
                <div class="card my-4" style="width: 190vh; text-align: center;">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">Resort Booking History</h6>
                        </div>
                    </div>
                    <div class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">



                            <table class="dataview">

                                <tr>

                                    <td><b>User Name</b></td>
                                    <td><b>Email</b></td>
                                    <td><b>Phone</b></td>
                                    <td><b>Address</b></td>
                                    <td><b>Person</b></td>
                                    <td><b>No of Bedroom</b></td>
                                    <td><b>Check-in Date</b></td>
                                    <td><b>Check-out Date</b></td>
                                    <td><b>Payment Method</b></td>
                                    <td><b>Package Name</b></td>
                                    <td><b>Price</b></td>
                                    <td><b>Days</b></td>

                                </tr>



                                <% for (int i = 0; i < hremail.Length; i++)
                                               { %>

                                <tr>


                                    <td><%=hrname[i] %>  </td>
                                    <td><%=hremail[i] %> </td>
                                    <td><%=hrphone[i] %> </td>
                                    <td><%=hraddress[i] %> </td>
                                    <td><%=hrperson[i] %> </td>
                                    <td><%=hrbed[i] %> </td>
                                    <td><%=hrarrival[i] %> </td>
                                    <td><%=hrdep[i] %> </td>
                                    <td><%=hpay[i]%>  </td>
                                    <td><%=prname[i] %> </td>
                                    <td><%=prprice[i] %> </td>
                                    <td><%=prdays[i] %> </td>



                                </tr>
                                <% }%>
                            </table>
                     </div>
                    </div>
                </div>
            </div>
        </div>


        <!--   Core JS Files   -->
        <script src="../js/core/popper.min.js"></script>
        <script src="../js/core/bootstrap.min.js"></script>
        <script src="../js/plugins/perfect-scrollbar.min.js"></script>
        <script src="../js/plugins/smooth-scrollbar.min.js"></script>

    </form>
</body>

</html>
