<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.json.JSONArray"%>
<%@page import="bookstore.ApiFetch"%>
<%@page import="bookstore.Books"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="public/DetailsPage.css">
</head>
<body>
<%
String id = request.getParameter("id");

Books book;
String heroBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/details?id="+id);	
	 /* JSONArray array = new JSONArray(heroBook); */
	 JSONObject jsonObject = new JSONObject(heroBook);
	 book= Books.fromJSON(jsonObject);

%>

<jsp:include page="header.jsp"></jsp:include>

<div class="maindiv">
    <div class="image">
      <img src="https://dummyimage.com/300x400/000/fff" alt="Book cover">
    </div>
    <div class="conatinerBook">
    <div class="title"><%= book.getTitle() %></div>
    <div class="description"><%= book.getDescription() %></div>
    <div class="price">Rs.<%= book.getPrice() %></div>
    <div class="buttons">
      <button>Buy now</button>
      <button>Add to cart</button>
    </div>
  </div>
  </div>	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>