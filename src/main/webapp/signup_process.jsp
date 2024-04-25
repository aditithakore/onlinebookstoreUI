<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
 /*    String phone = request.getParameter("phone"); */
    String password = request.getParameter("password");
/*     String confirm_password = request.getParameter("confirm_password"); */

    out.println("Name: " + name + "<br>");
    out.println("Email: " + email + "<br>");
/*     out.println("Phone: " + phone + "<br>"); */
    out.println("Password: " + password + "<br>");
/*     out.println("Confirm Password: " + confirm_password + "<br>"); */
%>
