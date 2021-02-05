<%-- 
    Document   : about
    Created on : 4 Feb 2021, 13:11:24
    Author     : cilli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
    <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />

<fmt:bundle basename="app">
    
 <head>
<style>
           body {
             background-image: url("https://cdn.pixabay.com/photo/2018/07/10/10/40/travel-3528324_960_720.jpg");
 
 
 min-height: 100%;
  min-width: 1024px;
	
  /* Set up proportionate scaling */
  width: 100%;
  height: 100%;
	
  /* Set up positioning */
 
  top: 0;
  left: 0;}
           #nav{
               background-color: yellow !important;
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
    <link href="css/heroic-features.css" rel="stylesheet">

  </head>

  <body>

     <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" 
         >
      <div class="container">
          <img src="images/LogoMakr-05a923.png" 
              width="190" height="60"/>
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="about.jsp"><fmt:message key="About"/>
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Home"><fmt:message key="Product"/></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp"><fmt:message key="Login"/></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cart.jsp"><img src="images/cart.png"
              width="30" height="20"/>                
              </a></li>
                <li class="nav-item">
                  
                 
              <a class="nav-link" href="index1.jsp"><img src="https://media.giphy.com/media/ErPDvrEYZYNOM/giphy.gif"
              width="30" height="20"/>
              </a>
         
            
            
            </li>
          </ul>
        </div>
      </div>
    </nav>
 
 
    <!-- Page Content -->
    <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4" Style="opacity:0.89 !Important;">
          <h1 class="display-3"><b><fmt:message key="Welcome"/></b>
            </h1>
          <h1><fmt:message key="Cork"/></h1>
          <p class="lead"><fmt:message key="Stop"/> <b>118371826</b></p>
        

 
        <a href="Home" class="btn btn-primary btn-lg"><fmt:message key="GetShop"/></a>
      </header>

      <!-- Page Features -->


      <div class="row text-center">
 <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            
            <div class="card-body">
              <h4 class="card-title"><fmt:message key="Reminder"/></h4> 
              <p class="card-text"><fmt:message key="MustLog"/>  </p>
            </div>
            <div class="card-footer">
              <a href="login.jsp" class="btn btn-primary"><fmt:message key="Login"/>!</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
     
            <div class="card-body">
              <h4 class="card-title"><fmt:message key="Informative"/></h4>
              <p class="card-text"><fmt:message key="InfoInformative"/></p>
            </div>
            <div class="card-footer">
              <a href="Home" class="btn btn-primary"><fmt:message key="Buy"/>!</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            
            <div class="card-body">
              <h4 class="card-title"><fmt:message key="Regulatory"/></h4> 
              <p class="card-text"><fmt:message key="InfoRegulatory"/>  </p>
            </div>
            <div class="card-footer">
              <a href="Home" class="btn btn-primary"><fmt:message key="Buy"/>!</a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
          
            <div class="card-body">
              <h4 class="card-title"><fmt:message key="Warning"/></h4>
              <p class="card-text"><fmt:message key="InfoWarning"/></p>
            </div>
            <div class="card-footer">
              <a href="Home" class="btn btn-primary"><fmt:message key="Buy"/>!</a>
            </div>
          </div>
        </div>
     
      </div>
      
    
    </div>
    <br></br>
   <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4">
        
          <h1><fmt:message key="About"/></h1>
        <p class="lead"><fmt:message key="InfoAbout"/></p>
        <div style="width: 100%">
                <iframe width="1020" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=patrick%20street+(The%20Sign%20Shop)&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                  
                </iframe><a href="https://www.maps.ie/route-planner.htm"><fmt:message key="Location"/></a></div>
   </div>
    <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4">
        <form style="width:100% !Important;">
            <h1><fmt:message key="Contactus"/></h1>
                        <div class="form-group" >
                            <label for="name"><b><fmt:message key="Name"/></b></label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email"><b><fmt:message key="EmailAdd"/></b></label>
                            <input type="email" class="form-control" id="email"required>
                            <small id="emailHelp" class="form-text text-muted"><fmt:message key="InfoEmail"/></small>
                        </div>
            <label><b><fmt:message key="TypeMes"/></b></label>
                
             <div class="form-group">
            <input type="radio" id="Complaint" name="Complaint" value="Complaint">
  <label for="Complaint"><fmt:message key="Complaint"/></label><br>
                        </div>
                         <div class="form-group">
            <input type="radio" id="Delivery" name="Delivery" value="Delivery">
  <label for="Delivery"><fmt:message key="Delivery"/></label><br>
                        </div>
                        <div class="form-group">
                           Copyright &copy; <label for="message"><b><fmt:message key="Message"/></b></label>
                            <textarea class="form-control" id="message" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto">
                        <button type="submit" class="btn btn-primary text-right"><fmt:message key="Submit"/></button></div>
                    </form>
          
   </div>
    
    <!-- Footer -->
    <footer class="py-5 bg-dark" Style="opacity:0.89 !Important;">
      <div class="container">
        <p class="m-0 text-center text-white"><fmt:message key="Copy"/>; The Sign Shop 2020</p>
      <a href="https://www.facebook.com/"><img width="60" height="60" src="images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="images/youtube.jpg" title="youtube" alt="youtube"></a>
    </div>
      
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  </form>
  </body>
    </fmt:bundle>
</html>
