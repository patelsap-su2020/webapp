<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="java.security.Principal" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.webapp.assignment.Entity.User" %>
<%@ page import="com.webapp.assignment.Service.Userservice" %>
<%@ page import="com.webapp.assignment.Repository.UserRepository" %>
<%@ page import="org.springframework.web.servlet.ModelAndView" %>
<%@ page import="java.io.IOException" %>

<head>
    <title>Assignment</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box}

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }
        button:hover {
            opacity:1;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        /* Float cancel and signup buttons and add an equal width */


        /* Add padding to container elements */
        .container {
            padding: 16px;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }
        }
    </style>

</head>

<body>

<form action="login" style="border:1px solid #ccc" method="post" >
    <div class="container">
        <h1 align="center">Login</h1>
        <span>${abc}</span>
        <hr>

        <label><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <div class="clearfix">
            <button type="submit" class="signupbtn" name="action" value="login">Login</button>

        </div>
    </div>
</form>

<form action="forgot" method="post">
    <button type="submit" class="btn btn-default" name="action">Forgot Password</button>
</form>
</body>
</html>