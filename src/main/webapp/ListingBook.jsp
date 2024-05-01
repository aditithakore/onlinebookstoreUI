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
<jsp:include page="header.jsp" /> 
<div class="mainsection text">
<h1>Category name will come on click</h1>
<div class="category-list">
    <%
    String[] book = {"Category 1", "Category 2", "Category 3", "Category 4","Category 4"};
    String[] bookImages = {"https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff","https://dummyimage.com/200x200/000/fff"}; 
    for (int i = 0; i < book.length; i++) {
    %>
 <div class="category-item">
        <div class="category-rectangle" style="background-image: url('<%=bookImages[i]%>');">
            <div class="category-overlay text"><p><%=book[i]%></p></div>
        </div>
            <p>BookName</p>
            <p>BookPrice</p>
    </div>
    <% } %>
</div>
</div>
<jsp:include page="footer.jsp" /> 
</body>
</html>