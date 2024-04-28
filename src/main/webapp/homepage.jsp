<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="public/scripts.js"></script>
</body>
</html>