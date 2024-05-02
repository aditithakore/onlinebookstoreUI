// Make an AJAX request
var xhr = new XMLHttpRequest();
xhr.open("GET", "http://localhost:8080/books", true);

// Set up the request headers if needed
// xhr.setRequestHeader('Content-Type', 'application/json');

xhr.onreadystatechange = function () {
  console.log("ready state changed");
  if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
    // Request was successful, parse the response
    var books = JSON.parse(xhr.responseText);

    // Now you can work with the 'books' array
    console.log(books);
    // For example, you could iterate over the books array and display them on your webpage
    for (var i = 0; i < books.length; i++) {
      console.log("Title: " + books[i].title);
      console.log("Author: " + books[i].author.name);
      // Add more fields as needed
    }
  } 
};




// Send the request
xhr.send();
