<%@page import="org.json.JSONArray"%>
<%@page import="bookstore.ApiFetch"%>
<%@page import="bookstore.Books"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="public/listingbooks.css">
</head>
<body>
<%
String id = request.getParameter("id");
String type = request.getParameter("type");
List<Books> books = new ArrayList<>();
String heroBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/category?id="+id);	
if(heroBook != null){
	 JSONArray array = new JSONArray(heroBook);
	 
	 for(int i = 0; i < array.length(); i++){				 
	 	books.add(Books.fromJSON(array.getJSONObject(i)));
	 }
}
%>

<%!
public void jspInit(){
	
}
%>
<jsp:include page="header.jsp" /> 
<div class="mainsection text">
<h1><%= type %></h1>
<div class="category-list">
    <%
    String[] book = {"Category 1", "Category 2", "Category 3", "Category 4","Category 4"};
    String[] bookImages = {"https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff"}; 
    for (int i = 0; i < books.size(); i++) {
    %>
 <div class="category-item">
        <div class="category-rectangle" style="background-image: url('<%=bookImages[i]%>');">
            <div class="category-overlay text"><p><%=books.get(i).getTitle()%></p></div>
        </div>
            <p>Publication: <%= books.get(i).getPublisher().getName() %></p>
            <p>Book Price: Rs. <%= books.get(i).getPrice() %></p>
    </div>
    <% } %>
</div>
</div>
<jsp:include page="footer.jsp" /> 
</body>
</html>