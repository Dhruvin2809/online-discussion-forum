<%-- 
    Document   : add
    Created on : 5 Apr, 2018, 8:21:44 PM
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
        <form action="addImage" method="POST" enctype="multipart/form-data">
            <input  type = "file" name = "filecover" />
            <input type="submit" value="add" />
       
        </form>
    </body>
</html>
