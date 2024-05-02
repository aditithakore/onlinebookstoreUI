<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h1 >Shop by category</h1>
<div class="category-list">
    <%
    String[] categories = {"Category 1", "Category 2", "Category 3", "Category 4"};
    String[] categoryImages = {"https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff"}; 
    for (int i = 0; i < categories.length; i++) {
    %>
    <div class="category-item">
        <div class="category-circle" style="background-image: url('<%=categoryImages[i]%>');">
            <div class="category-overlay"><p><%=categories[i]%><p></div>
        </div>
    </div>
    <% } %>
</div>
<div class="view-more">View more></div>
