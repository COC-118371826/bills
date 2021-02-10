<%-- 
    Document   : userReport
    Created on : 27 Nov 2020, 16:59:03
    Author     : cilli
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="css/hi.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
             <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                          
                             
                            </a>
                            <a class="nav-link" href="adminhomepage.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-crown"></i></div>
                                Admin
                            </a>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Reports
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="stock.jsp">Stock Level</a>
                                    <a class="nav-link" href="Sales.jsp">Sales Report</a>
                                      <a class="nav-link" href="userReport.jsp">User Activity</a>
                                </nav>
                            </div>
                            
                        
                            
                            <a class="nav-link" href="userAdmin?action=listUsers">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Users
                            </a>
                            <a class="nav-link" href="productadmin?action=listProducts">
                                <div class="sb-nav-link-icon"><i class="fas fa-sign"></i></div>
                                Update Products
                            </a>
                                                       <a class="nav-link" href="logout.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-times-circle"></i></div>
                                Logout
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer" Style="background-color:#212529 !Important; ">
                        <div class="small" ><p Style="color:white !Important; "> Logged in as: </p>
                        </div>
                        <p Style="color:white !Important; ">  ${SKUSER.firstName}</p>
                    </div>
                </nav>
            </div>
             <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1><b>User Activity:</b></h1>
                       <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Reports</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                User Messages
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>MessageID</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Message Type</th>
                                                <th>Message</th>
                                                
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>John Murphy</td>
                                                <td>user@user.com</td>
                                                <td>Delivery</td>
                                                <td>How much is Delivery?</td>
                                                
                                            </tr>
                                                    <tr>
                                                <td>2</td>
                                                <td>John Murphy</td>
                                                <td>user@user.com</td>
                                                <td>Delivery</td>
                                                <td>How far do ye deliver?</td>
                                                
                                            </tr>
                                             <tr>
                                                <td>3</td>
                                                <td>John Murphy</td>
                                                <td>user@user.com</td>
                                                <td>Complaint</td>
                                                <td>Wrong item was delivered</td>
                                                
                                            </tr>
 <tr>
                                                <td>4</td>
                                                <td>John Murphy</td>
                                                <td>user@user.com</td>
                                                <td>Complaint</td>
                                                <td>How much to get refund?</td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                 <footer class="py-4 bg-light mt-auto" Style="background-color:#212529 !Important; ">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>