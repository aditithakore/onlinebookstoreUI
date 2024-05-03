<%@page import="bookstore.ApiFetch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String username = request.getParameter("username");
 /*    String phone = request.getParameter("phone"); */
    String password = request.getParameter("password");
    String type = request.getParameter("type");
/*     String confirm_password = request.getParameter("confirm_password"); */

   
    	String data = ApiFetch.fetchDataFromAPI("http://localhost:8082/users/login?username="+username+"&password="+password);
       	if(data != null){
       		if(data.equals("success")){
       	   		session.setAttribute("login", "successful");
       	   		pageContext.forward("./homepage.jsp");
       	   	}else{
       	   		session.setAttribute("login", "unsuccessful");
       	   		response.sendRedirect("./signup.jsp");
       	   	}
       	}
   

   	
/*     out.println("Confirm Password: " + confirm_password + "<br>"); */
%>
