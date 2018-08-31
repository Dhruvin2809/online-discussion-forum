<%-- 
    Document   : example
    Created on : 8 Mar, 2018, 7:59:24 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="myForm" action="example.jsp" method="post" >
    <input type="checkbox" name="inputCheckbox" >
    <input type="radio" name="inputRadio" value="0" >
    <input type="radio" name="inputRadio" value="1" >
    <input type="text" name="inputText" >
    <input type="submit" >
</form>

    <%= request.getParameter("inputCheckbox") %>
    <%= request.getParameter("inputRadio") %>
    <%= request.getParameter("inputText") %>
    </body>
</html>
