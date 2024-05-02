<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bookstore.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="bookstore.Books"%>
<%@page import="bookstore.ApiFetch"%>
<%@page import="org.json.JSONArray"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="public/CategoryList.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Category List</h1>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>
<%!
Random random = new Random();
int colorCount = 0;
String responseData;
String colorClass;
String randomColor;
/* // Assuming you have a list of categories from your database */
 List<Category> categories = new ArrayList<>();
// Replace with your method to fetch categories

public void jspInit(){
	 try{
		 String categroy = ApiFetch.fetchDataFromAPI("http://localhost:8082/categories");
	 
	 if(categroy != null){
		 JSONArray array = new JSONArray(categroy);
		 
		 for(int i = 0; i < array.length(); i++){				 
			 categories.add(Category.fromJSON(array.getJSONObject(i)));
		 }
	 }
	 }catch(Exception e){
		 responseData = e.toString();
	 }
}
%>
<div class=with-footer>
<div class="category-container">
  <%
  int columnCount = 0;
  int categoryCount = 0;
  for (Category c : categories) {
    if (categoryCount % 8 == 0) {
      if (columnCount > 0) {
  %>
        </div>
  <%
      }
  %>
  
      <div class="category-column">
      <a href="./ListingBook.jsp?id=<%=c.getId()%>&type=<%= c.getName()%>" >
  <%
      columnCount++;
  colorClass = (colorCount++ % 2 == 0) ? "colored" : "";
  randomColor = String.format("#%06x", random.nextInt(0xffffff + 1));
    }
  %>
    <div class="<%= colorClass %>" style="color: <%= randomColor %>"><%= c.getName() %></div>
  <%
    categoryCount++;
   }
  %>
  </a>
  </div>
  

<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>