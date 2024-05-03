<%@page import="bookstore.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="bookstore.Books"%>
<%@page import="bookstore.ApiFetch"%>
<%@ page language="java" import="java.net.HttpURLConnection, java.net.URL, java.io.BufferedReader, java.io.InputStreamReader" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%!
 String responseData;
 List<Books> booksHero = new ArrayList<>();
 List<Books> booksTrending = new ArrayList<>();
 List<Category> category = new ArrayList<>();
 List<Books> booksDeal = new ArrayList<>();
 	public void jspInit(){
	 try{
		 String heroBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/onHero");	
		 String trendingBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/isTrending");	
		 String categroy = ApiFetch.fetchDataFromAPI("http://localhost:8082/categories");	
		 String dealBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/dealOfTheDay");	
		 if(heroBook != null){
			 JSONArray array = new JSONArray(heroBook);
			 
			 for(int i = 0; i < array.length(); i++){				 
			 	booksHero.add(Books.fromJSON(array.getJSONObject(i)));
			 }
		 }
		 if(trendingBook != null){
			 JSONArray array = new JSONArray(trendingBook);
			 
			 for(int i = 0; i < array.length(); i++){				 
				 booksTrending.add(Books.fromJSON(array.getJSONObject(i)));
			 }
		 }
		 if(categroy != null){
			 JSONArray array = new JSONArray(categroy);
			 
			 for(int i = 0; i < array.length(); i++){				 
				 category.add(Category.fromJSON(array.getJSONObject(i)));
			 }
		 }
		 if(dealBook != null){
			 JSONArray array = new JSONArray(dealBook);
			 
			 for(int i = 0; i < array.length(); i++){				 
				 booksDeal.add(Books.fromJSON(array.getJSONObject(i)));
			 }
		 }
	 }
	 catch(Exception e){
		 responseData = e.toString();
	 }
 }
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book-Store</title>
    <link rel="stylesheet" href="public/homeStyles.css">

    <!-- Fonts...... -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&display=swap" rel="stylesheet">

    <!-- Google icons  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<jsp:include page="header.jsp" /> 
<div class="hero">
    <div class="text">
        <h1><%= booksHero.get(0).getTitle() %></h1>
        <p><%= booksHero.get(0).getDescription() %></p>
    </div>
    <div class="image">
        <img src="https://dummyimage.com/300x400/000/fff" alt="Book cover">
    </div>
</div>

<div class="category text">

<h1 >Shop by category</h1>
<div class="category-list">
    <%
    String[] categories = {"Category 1", "Category 2", "Category 3", "Category 4"};
    String[] categoryImages = {"https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff", "https://dummyimage.com/200x200/000/fff"}; 
    for (int i = 0; i < 4; i++) {
    %>
    <div class="category-item">
        <div class="category-circle" style="background-image: url('<%=categoryImages[i]%>');">
            <div class="category-overlay"></div>
        </div>
            <p style="margin-left:-120px; margin-top:5px;"><%=category.get(i).getName()%><p>
    </div>
    <% } %>
</div>
<div class="view-more">
<p style="font-style:italic; font-size:20px"><a href="./CategoryList.jsp">View more&nbsp;></a><p>
</div>

</div>

<div class="trending text">
<h1>Trending Books</h1>
<%  %>
<div class="category-list">
    <%
    String[] books = {"book 1", "book 2", "book 3", "book 4"};
    String[] booksImages = {"https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff", "https://dummyimage.com/250x380/000/fff"}; 
    for (int i = 0; i < 4; i++) {
    %>
    <div class="category-item">
        <div class="category-rectangle" style="background-image: url('<%=booksImages[i]%>');">
            <div class="category-overlay text"></div>
        </div>
        <p style="margin-left:-100px; margin-top:5px;"><%=booksTrending.get(i).getTitle()%></p>
    </div>
    <% } %>
</div>
<%-- <jsp:param value="booksTrending" name="trending"/> --%>
</div>
<div class="deal text">
<h1>Deal of the day</h1>
    <main>
        <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/718ReYbwlFL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name"><%= booksDeal.get(0).getTitle() %></h2>
                <h3 class="author">by <%= booksDeal.get(0).getAuthor().getName() %></h3>
                <h3 class="rating"><%= booksDeal.get(0).getStock() %> left</h3>
                <p class="info">
                    <%= booksDeal.get(0).getDescription() %>
                </p>
                <button type="submit">See the Book</button>
            </div>
        </div>

        <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/91JxVjINNsL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name"><%= booksDeal.get(1).getTitle() %></h2>
                <h3 class="author">by <%= booksDeal.get(1).getAuthor().getName() %></h3>
                <h3 class="rating"><%= booksDeal.get(1).getStock() %> left</h3>
                <p class="info">
                    <%= booksDeal.get(1).getDescription() %>
                </p>
                <button type="submit">See the Book</button>
            </div>
        </div>

        <!-- <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/9129dzchsGL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">A Tale for the Time Being</h2>
                <h3 class="author">by Ruth Ozeki</h3>
                <h3 class="rating">1.987 rating</h3>
                <p class="info">
                    In Tokyo, sixteen-year-old Nao has decided there’s only one escape from her aching loneliness
                    
                </p>
                <button type="submit" id="b2">See the Book</button>
            </div>
        </div>

        <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/81djg0KWthS.jpg"
                    alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">The Great Gatsby</h2>
                <h3 class="author">by F. Scott Fitzgerald</h3>
                <h3 class="rating">1.987 rating</h3>
                <p class="info">
                    The novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King 
                </p>
                <button type="submit" id="b3">See the Book</button>
            </div>
        </div> -->

    </main>

</div>
<jsp:include page="footer.jsp" /> 
<script src="public/homepage.js" >

</script>
</body>
</html>