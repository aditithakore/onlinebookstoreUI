<%@page import="bookstore.ApiFetch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
 /*    String phone = request.getParameter("phone"); */
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String type = request.getParameter("type");
/*     String confirm_password = request.getParameter("confirm_password"); */

    
    /* String heroBook = ApiFetch.fetchDataFromAPI("http://localhost:8082/books/category?id="); */
    Map<String, String> body = new HashMap<String, String>();
    body.put("username", username);
    body.put("email", email);
    body.put("password", password);
    body.put("firstName", firstName);
    body.put("lastName", lastName);
    	
    	String data = ApiFetch.fetchDataFromAPI("http://localhost:8082/users/signup?username="+username+"&email="+email+"&password="+password+"&firstName="+firstName+"&lastName="+lastName);
       	if(data != null){
       		if(data.equals("signupSuccess")){
       	   		session.setAttribute("login", "successful");
       	   		pageContext.forward("./homepage.jsp");
       	   	}else{
       	   		session.setAttribute("login", "unsuccessful");
       	   		response.sendRedirect("./signup.jsp");
       	   	}
       	}
    
   	
/*     out.println("Confirm Password: " + confirm_password + "<br>"); */
%>
