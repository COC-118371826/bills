
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>   <style>
        
        body{
          

        }
        div123 {
  background-image: url('https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg');
}
          input {
  width: 100%;
}
   .login_btn{
color: white !Important;
background-color:  #007bff !Important;
width: 150px;
}

.login_btn:hover{
color: black;
background-color: white;
}   
      </style>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Update Product</title>
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
                            
                        
                            
                            <a class="nav-link" href="userAdmin?action=insertUser">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Users
                            </a>
                            <a class="nav-link" href="updateProduct.jsp">
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
                        <div class="small" >  <p Style="color:white !Important; "> Logged in as:${SKUSER.firstName} </p>
                        </div>
                        <p Style="color:white !Important; ">   </p>
                    </div>
                </nav>
            </div>
         <div id="layoutSidenav_content">
             <div id="div123">
                    <div class="container-fluid">
                       <div class="heading text-center">
                           
                            <h2>Manage User</h2>
                        </div>

                        <div style="margin-left: 5%; margin-right: 5%;"> 
                             
                        <table class="table table-hover">
                           <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Product Name: </th>
                                    <th scope="col">Description: </th>
                                    <th scope="col">Price: </th>
                                    <th scope="col">Image: </th>
                                    <th scope="col">Type: </th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${product}" var="user">
                                    <c:url value="/productadmin" var="editproductUrl">
                                        <c:param name="action" value="edit"/>
                                        <c:param name="id" value="${product.id}"/>
                                    </c:url>
                                    <c:url value="/producadmin" var="deleteproductUrl">
                                        <c:param name="action" value="delete"/>
                                        <c:param name="id" value="${product.id}"/>
                                    </c:url>
                                <tr>
                                    <td scope="row">${product.id}</th>
                                    <td>${product.name}</td>
                                    <td>${product.description}</td>
                                    <td>${product.price}</td>
                                    <td><a href="${editproductUrl}"> Edit</a> <a href="${deleteproductUrl}">Delete</a></td>
                                </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <c:url value="/productdmin" var="addproductUrl">
                                        <c:param name="action" value="add"/>
                                    </c:url>
                                    <td><a href="${addproductUrl}" > Add </a></td>
                                    
                                </tr>
                            </tbody>
                        </table>      
                        </div>   
                                       
                                   
                           
                        </div>
                        </div>
                    </div>
        </div>
                </main>
                <br>
                <br>
                <br>
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
                
                </footer>
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

            

</html>