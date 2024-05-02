<%@ page language="java" import="org.apache.jasper.tagplugins.jstl.core.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->

<h1>Trending Books</h1>
<%  %>
<div class="category-list">
    <%
    String[] books = {"book 1", "book 2", "book 3", "book 4"};
    String[] booksImages = {"https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff"}; 
    for (int i = 0; i < books.length; i++) {
    %>
    <div class="category-item">
        <div class="category-rectangle" style="background-image: url('<%=booksImages[i]%>');">
            <div class="category-overlay text"><p><%=books[i]%></p></div>
        </div>
    </div>
    <% } %>
</div>
<div class="view-more">View more></div>
