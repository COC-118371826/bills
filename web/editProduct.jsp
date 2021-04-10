<%-- 
    Document   : editProduct
    Created on : 9 Feb 2021, 11:22:51
    Author     : cilli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>The Sign Shop</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/shop-homepage.css" rel="stylesheet">

    </head>

    <body>

       <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <img src="images/LogoMakr-05a923.png" 
              width="190" height="60"/>
             
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                   
                    <ul class="navbar-nav ml-auto">
                        
                        <li class="nav-item active">
                            <li class="nav-item">
                            
                        </li>
                        
                            <c:if test="${not empty SKUSER.firstName}">
                                <a class="nav-link" href="./login.jsp"  Style="color:white !important;">Welcome ${SKUSER.firstName}
                                    <span class="sr-only">(current)</span>
                                </a>
                                                                    <a class="nav-link" href="./Logout.jsp"  Style="color:white !important;">Logout
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                             <c:if test="${empty SKUSER.firstName}">
                                <a class="nav-link" href="./login.jsp"  Style="color:white !important;">Login
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                        </li>
                        
                         <li class="nav-item">
              </li>
                         <li class="nav-item">
                  
                 
              <a class="nav-link" href="index1.jsp">
              </a>
         
            
            
            </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="col-lg-12">
            <br/>
        </div>
        <!-- Page Content -->
        <div class="container bg-light">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="my-4"><b>Edit Product</b></h1>



                    <div class="row">
                        <c:url value="/productadmin" var="updateProductUrl">
                                        <c:param name="action" value="updateCompleteProduct"/>
                                    </c:url>

                        <form action="${updateProductUrl}" method="POST">
                            <input id= "id" name="id" type="hidden" value="${oldProduct.id}">
                            <div class="form-group row">
                                <label for="name" class="col-4 col-form-label"><b>Name:</b></label> 
                                <div class="col-8">
                                    <input id="name" name="name" type="text" value="${oldProduct.name}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description" class="col-4 col-form-label"><b>Description:</b></label> 
                                <div class="col-8">
                                    <input id="description" name="description" type="text" value="${oldProduct.description}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="price" class="col-4 col-form-label"><b>Price:</b></label> 
                                <div class="col-8">
                                    <input id="price" name="price" type="text" value="${oldProduct.price}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="imageLocation" class="col-4 col-form-label"><b>Image:</b></label> 
                                <div class="col-8">
                                    <input id="imageLocation" name="imageLocation" type="text" value="images/${oldProduct.imageLocation}" class="form-control" required="required">
                                </div>
                            </div>
                         <div class="form-group row">
                                <label for="category" class="col-4 col-form-label"><b>Category:</b></label> 
                                <div class="col-8">
                                    <input id="category" name="category" type="text" value="${oldProduct.category}" class="form-control" required="required">
                                </div>
                            </div>
                         
                            </div> 
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form> 











                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
        <div class="col-lg-12">
            <br/>
        </div>
        <br>
        <br>
        <!-- Footer -->
     <footer class="py-5 bg-dark" Style="opacity:0.89 !Important; ">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; The Sign Shop 2020</p>
            <a href="https://www.facebook.com/"><img width="60" height="60" src="images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="images/youtube.jpg" title="youtube" alt="youtube"></a>
    </div>
  
  </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

