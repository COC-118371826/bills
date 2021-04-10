<%-- 
    Document   : cart
    Created on : 23 Nov 2020, 13:35:07
    Author     : cilli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
  

   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">

    
<style>
    body{
        background-image: url(https://cdn.pixabay.com/photo/2016/11/15/22/29/shopping-cart-1827716_1280.jpg);
    }
.login_btn{
color: white !Important;
background-color:  #007bff !Important;
width: 10%;
}
.checkout_btn{
color: white !Important;
background-color:  black !Important;
width: 10%;
}
.login_btn:hover{
color: black;
background-color: white;
}
</style>

    </head>
    <body>
          
         <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
      <div class="container">
          <img src="images/LogoMakr-05a923.png"
              width="190"height="60"/>
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
         
        </div>
      </div>
    </nav>
         
         <br>  <br>  <br>


<div class="w3-container" style="background-color:white !Important;">


  <table class="w3-table w3-striped w3-border">
  <tr>
    <th>Quantity</th>
    <th>Name </th>
        <th>Description</th>
    <th>Price</th>
    <th>Total</th>
  
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <tr>
    <td>
      <form action="${insertProductUrl}" method="POST">
        <input type="hidden" name="productCode" value="${oldProduct.id}">
      
      </form>
    </td>
    <td>"${oldProduct.name}"</td>
    <td>"${oldProduct.description}"</td>
    <td>"${oldProduct.price}"</td>
    <td>"${oldProduct.price}"</td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="${oldProduct.id}">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>

</table>
</div>
<p style="color:black;background-color:white"><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
 <c:if test="${not empty SKUSER.firstName}">
      
        
      <form action="checkout.jsp" method="post">
  <input type="hidden" name="action" value="checkout">
<input type="submit" id="Login" value="Checkout" class="btn float-right checkout_btn">
    </c:if >
 </form>
<form action="Home" method="post">
    
  <input type="hidden" name="action" value="shop">
  <input type="submit" id="Login" value="Continue Shopping" class="btn float-right login_btn">
</form>


<br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
 <br><br><br>
 <br><br><br>
        <!-- Footer -->
  <footer class="py-5 bg-dark"Style="opacity:0.89 !Important; " >
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; The Sign Shop 2020</p>
            <a href="https://www.facebook.com/"><img width="60" height="60" src="images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="images/youtube.jpg" title="youtube" alt="youtube"></a>

    </div>

  </footer>
</body>
</html>