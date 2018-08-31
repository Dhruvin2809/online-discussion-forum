<%-- 
    Document   : index
    Created on : 5 Mar, 2018, 7:54:39 PM
    Author     : DELL
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
       <%
       try{
            Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
       
       }catch(Exception e){
           out.print("server problem");
       }%>
       <script>window.location="login.jsp";
       </script>
        
        <%
       %>
       
    </body>
</html>
