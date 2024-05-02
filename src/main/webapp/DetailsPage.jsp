<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="public/DetailsPage.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="maindiv">
    <div class="image">
      <img src="https://dummyimage.com/300x400/000/fff" alt="Book cover">
    </div>
    <div class="description">Description</div>
    <div class="buttons">
      <button>Buy now</button>
      <button>Add to cart</button>
    </div>
  </div>	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>