<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="public/header.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<header class="header" id="header">
   <nav class="navbar container">
      <a href="#" class="brand">Brand</a>
      <div class="search">
         <form class="search-form">
            <input type="text" name="search" class="search-input" placeholder="Search for Books" >
            <button type="submit" class="search-submit" disabled><i class="fa-solid fa-magnifying-glass"></i></button>
         </form>
      </div>
      <div class="menu" id="menu">
         <ul class="menu-inner">
            <li class="menu-item"><a href="#" class="menu-link"><i class="fa-solid fa-caret-down"></i> &nbsp;Category</a></li>
            <% if(session.getAttribute("login") != null){
            if(!session.getAttribute("login").equals("successful")){ %>
            <li class="menu-item"><a href="#" class="menu-link"><i class="fa-solid fa-user"></i> &nbsp;Login/Signup</a></li>
            <%}else{ %>
            <li class="menu-item"><a href="./logoutuser.jsp" class="menu-link"><i class="fa-solid fa-user"></i> &nbsp;Logout</a></li>
            <%}}else{ %>
            <li class="menu-item"><a href="#" class="menu-link"><i class="fa-solid fa-user"></i> &nbsp;Login/Signup</a></li>
            <%} %>
            <li class="menu-item"><a href="#" class="menu-link"><i class="fa-solid fa-cart-shopping"></i> &nbsp;Cart</a></li>
         </ul>
      </div>
      <div class="burger" id="burger">
         <span class="burger-line"></span>
         <span class="burger-line"></span>
         <span class="burger-line"></span>
      </div>
   </nav>
</header>
</body>
</html>