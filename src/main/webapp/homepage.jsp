<%@page import="com.google.gson.Gson"%>
<%@ page language="java" import="java.net.HttpURLConnection, java.net.URL, java.io.BufferedReader, java.io.InputStreamReader" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%!
 String responseData;
 	public void jspInit(){
	 try{
		 String apiUrl = "http://localhost:8080/books";
		    URL url = new URL(apiUrl);
		    HttpURLConnection con = (HttpURLConnection) url.openConnection();
		    con.setRequestMethod("GET");

		    int status = con.getResponseCode();
		    if (status == 200) { // OK
		        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		        String inputLine;
		        StringBuffer content = new StringBuffer();
		        while ((inputLine = in.readLine()) != null) {
		            content.append(inputLine);
		        }
		        in.close();
		        // Process the API response data
		        responseData = content.toString();
		        String jsonString = "[{\"id\":1,\"title\":\"Harry Potter Series\",\"author\":{\"id\":1,\"name\":\"J.K. Rowling\",\"biography\":\"Joanne Rowling, better known by her pen name J.K. Rowling, is a British author, philanthropist, film producer, and TV writer.\"},\"isbn\":\"9780545162074\",\"isTrending\":true,\"onHero\":false,\"publisher\":{\"id\":1,\"name\":\"Scholastic Inc.\",\"location\":\"Mumbai\"},\"category\":{\"id\":1,\"name\":\"Fantasy\"},\"description\":\"A series of fantasy novels written by J.K. Rowling.\",\"price\":29.99,\"stock\":100,\"publicationDate\":\"1997-06-26\",\"coverImage\":\"hp_cover.jpg\",\"dealOfTheDay\":true},{\"id\":2,\"title\":\"1984\",\"author\":{\"id\":2,\"name\":\"George Orwell\",\"biography\":\"Eric Arthur Blair, known by his pen name George Orwell, was an English novelist, essayist, journalist, and critic.\"},\"isbn\":\"9780451524935\",\"isTrending\":false,\"onHero\":true,\"publisher\":{\"id\":2,\"name\":\"Penguin Books\",\"location\":\"Delhi\"},\"category\":{\"id\":2,\"name\":\"Dystopian\"},\"description\":\"A dystopian social science fiction novel by George Orwell.\",\"price\":19.99,\"stock\":50,\"publicationDate\":\"1949-06-08\",\"coverImage\":\"1984_cover.jpg\",\"dealOfTheDay\":true}]";

		        // Convert JSON string to array of Book objects
		        Gson gson = new Gson();
		        Book[] books = gson.fromJson(jsonString, Book[].class);

		        // Now you can work with the array of Book objects
		        for (Book book : books) {
		            System.out.println(book.getTitle());
		            System.out.println(book.getAuthor().getName());
		            // Print other properties as needed
		        }
		    } else {
		        // Handle API error
		        
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
        <h1>Book title</h1>
        <%= responseData %>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
    </div>
    <div class="image">
        <img src="https://dummyimage.com/300x400/000/fff" alt="Book cover">
    </div>
</div>

<div class="category text">

<jsp:include page="category.jsp" /> 
</div>

<div class="trending text">
<jsp:include page="trending.jsp" /> 
</div>
<div class="deal text">
<h1>Deal of the day</h1>
    <main>
        <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/718ReYbwlFL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">After You</h2>
                <h3 class="author">by Jojo Myoes</h3>
                <h3 class="rating">1.987 rating</h3>
                <p class="info">
                    It continues the story of Louisa Clark after Will's death. She is trying to move on. 
                </p>
                <button type="submit">See the Book</button>
            </div>
        </div>

        <div class="books">
            <div>
                <img src="https://images-na.ssl-images-amazon.com/images/I/91JxVjINNsL.jpg" alt="" class="book-img">
            </div>
            <div class="descp">
                <h2 class="book-name">Big Magic</h2>
                <h3 class="author">by Elizabeth Gilbert</h3>
                <h3 class="rating">1.987 rating</h3>
                <p class="info">
                    Readers of all ages and walks of life have drawn inspiration from Elizabeth
                    Gilbert’s books.
                </p>
                <button type="submit" id="b1">See the Book</button>
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
<script src="public/homepage.js"></script>
</body>
</html>