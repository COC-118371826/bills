<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>
         <script type="text/javascript" src="javascript.js"></script>
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

   <body onload="init()">

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
                         <li class="nav-item">
                  
                 
              <a class="nav-link" href="index1.jsp"><img src="https://media.giphy.com/media/Mh9fsz5AolnDq/giphy.gif"
              width="30" height="20"/>
              </a>
         
            
            
            </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-3">

                    <h2 class="my-4" style="color:white;style">Product Type:</h2>
                   <div class="list-group">
                           <form name="autofillform" action="autocomplete">
                     
                        <input type="text"
                       size="40" id="complete-field" placeholder="Search Products"   onkeyup="doCompletion()">
                       
         
          <tr>
              <td id="auto-row" colspan="2">
                <table id="complete-table" class="popupBox" />
              </td>
        
     
      </table>
    </form>
                       <a href="Home" class="list-group-item">All Products</a>
          <a href="producttype?action=infoProducts" class="list-group-item">Informative</a>
           <a href="producttypeReg?action=regProducts" class="list-group-item">Regulatory</a>
          <a href="producttypeWarning?action=WarningProducts" class="list-group-item">Warning</a>
         
        </div>


                </div>
                <!-- /.col-lg-3 -->

                <div class="col-lg-9">
                    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="images/compress.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="images/RoadOcean.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="images/Antrim Coast Road0.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                           
                    </div>
 
                    <div class="row">

                        <c:forEach items="${products}" var="topProduct">
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href="#"><img class="card-img-top" src="images/${topProduct.imageLocation}" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="./viewProduct.jsp"><b>Name: </b>${topProduct.name}</a>
                                        </h4>
                                        <h5><b>Price: </b>${topProduct.price}</h5>
                                        <p class="card-text"><b>Desc:</b>${topProduct.description}</p>
                                        <p class="card-text"><b>Type: </b>${topProduct.category}</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                   <form  action="" method="POST">
                 <c:if test="${not empty SKUSER.firstName}">
<!--                <input type="hidden" name="productCode" value="7">-->
                <input type="submit" value="View Item"style= "width:100% !Important;padding:10px !Important;color: white !Important;background-color: #007bff !Important;">
      </c:if>
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>-->
                
            
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
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
