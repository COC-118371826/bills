<%-- 
    Document   : newjsp
    Created on : 26 Nov 2020, 19:46:03
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
                        <div class="small" > <p Style="color:white !Important; "> Logged in as: </p>
                        </div>
                        <p Style="color:white !Important; ">    ${SKUSER.firstName}</p>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1><b>Stock:</b></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Reports</li>
                        </ol>
                        <div class="row">
                            
                           
                            
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                        Overall Stock Level
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                      Expected Stock levels
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Stock per Item
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ProductID</th>
                                                <th>ProductType</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Colour</th>
                                                <th>In Stock</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                   <th>ProductID</th>
                                                   <th>ProductType</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Colour</th>
                                                <th>In Stock</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Informative</td>
                                                <td>Hospital</td>
                                                <td>$6.00</td>
                                                <td>Blue</td>
                                                <td>100</td>
                                            </tr>
                                                     <tr>
                                                <td>2</td>
                                                <td>Informative</td>
                                                <td>Airport</td>
                                                <td>$5.00</td>
                                                <td>Yellow</td>
                                                <td>10</td>
                                            </tr>         
                                            <tr>
                                                <td>3</td>
                                                <td>Informative</td>
                                                <td>One-Way</td>
                                                <td>$4.00</td>
                                                <td>Blue</td>
                                                <td>20</td>
                                            </tr>         
                                            
                                            <tr>
                                                <td>4</td>
                                                <td>Regulatory</td>
                                                <td>No Entry</td>
                                                <td>$6.00</td>
                                                <td>Red</td>
                                                <td>100</td>
                                            </tr>   
                                            <tr>
                                                <td>5</td>
                                                <td>Regulatory</td>
                                                <td>No Right Turn</td>
                                                <td>$2.00</td>
                                                <td>Red</td>
                                                <td>10</td>
                                            </tr> 
                                            <tr>
                                                <td>6</td>
                                                <td>Regulatory</td>
                                                <td>No Left Turn</td>
                                                <td>$4.00</td>
                                                <td>Red</td>
                                                <td>20</td>
                                            </tr>   
                                            <tr>
                                                <td>7</td>
                                                <td>Warning</td>
                                                <td>Road Bend</td>
                                                <td>$6.00</td>
                                                <td>Yellow</td>
                                                <td>10</td>
                                            </tr>  
                                             <tr>
                                                <td>8</td>
                                                <td>Warning</td>
                                                <td>T Junction</td>
                                                <td>$10.00</td>
                                                <td>Yellow</td>
                                                <td>100</td>
                                            </tr>   
                                             <tr>
                                                <td>9</td>
                                                <td>Warning</td>
                                                <td>Slippery Road</td>
                                                <td>$5.00</td>
                                                <td>Yellow</td>
                                                <td>20</td>
                                            </tr>   
                                            <tr>
                                                <td>10</td>
                                                <td>Warning</td>
                                                <td>Traffic Merge</td>
                                                <td>$5.00</td>
                                                <td>Orange</td>
                                                <td>10</td>
                                            </tr>   
                                              <tr>
                                                <td>11</td>
                                                <td>Warning</td>
                                                <td>Road Works Ahead</td>
                                                <td>$7.00</td>
                                                <td>Orange</td>
                                                <td>20</td>
                                            </tr>  
                                              <tr>
                                                <td>12</td>
                                                <td>Warning</td>
                                                <td>Roundabout</td>
                                                <td>$8.00</td>
                                                <td>Yellow</td>
                                                <td>20</td>
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