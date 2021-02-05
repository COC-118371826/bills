<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <style>
body{
           background-image: url(https://cdn.pixabay.com/photo/2015/11/07/11/13/street-1030930_1280.jpg)!Important;
           
        }
       .dropbtn {
  background-color: #007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
h4{
    color:white;
}
    </style>  
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>The Sign Shop</title>
   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
  
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">

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
                            <a class="nav-link" href="about.jsp"  Style="color:white !important;">About Us</a>
                        </li>
                         <a class="nav-link" href="Home"  Style="color:white !important;">Products
                                    <span class="sr-only">(current)</span>
                                </a>
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
              <a class="nav-link" href="cart.jsp"><img src="images/cart.png"
              width="30" height="20"/>                
              </a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>


  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4" style="color:white !Important">Product View</h1>
        
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
<<c:url value="/productadmin" var="insertProductUrl">
                                        <c:param name="action" value="insertProduct"/>
                                    </c:url>

                        <form action="${insertProductUrl}" method="POST">
        <div class="card mt-4">
          <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
          <div class="card-body">
              <input id= "id" name="id" type="hidden" value="${oldProduct.id}">
             <input id="name" name="name" type="text" value="${oldProduct.name}" class="form-control" required="required">
            <input id="price" name="price" type="text" value="${oldProduct.price}" class="form-control" required="required">
            <input id="description" name="description" type="text" value="${oldProduct.description}" class="form-control" required="required">
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
          </div>
        </div>
                        </form>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Let's Go Shopping!
          </div>
          <div class="card-body">
         
            <a href="#" class="btn btn-success">Add to Cart</a>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

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
