<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Select Language</title>
< <style>
        body{
            background-image: url(https://cdn.pixabay.com/photo/2015/11/07/11/13/street-1030930_1280.jpg);
              
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

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

    </style>  
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
  
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <img src="images/LogoMakr-05a923.png"
              width="190"height="60"/>
      <a class="navbar-brand" href="#"></a>
     
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
       
                
            </li>
          </ul>
        </div>
    </div>
  </nav>
<h1 style = color:white;>Please select language:</h1>
 <c:url value="about.jsp" var="engURL">
   <c:param name="locale" value="en_US"/>
 </c:url>

 <a href="${engURL}">
     <img src="https://media.giphy.com/media/Mh9fsz5AolnDq/giphy.gif" text-align=center height="150" width="150"/>
 </a>
<br/>
<br/>
 
  <c:url value="about.jsp" var="frenchURL">
     <c:param name="locale" value="fr_FR"/>
  </c:url>

  <a href="${frenchURL}"> 
       <img src="https://media.giphy.com/media/ErPDvrEYZYNOM/giphy.gif" text-align=center height="150" width="150"/>
  </a>
       
</body>
</html> 

