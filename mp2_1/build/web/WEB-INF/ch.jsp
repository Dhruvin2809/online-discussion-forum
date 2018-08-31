<%-- 
    Document   : ch
    Created on : 2 Apr, 2018, 2:50:24 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int k=0;
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
                PreparedStatement ps= con.prepareStatement( "SELECT ID FROM name_password WHERE username='dhruvin'");
                 ResultSet rs=ps.executeQuery( "SELECT ID from name_password WHERE username='dhruvin'");
                 
         while(rs.next())
         {
              k=rs.getInt("ID");
              
         }
         
         %>
         <h3> <%=k %> </h3>
         <input type="file" name="images" />
         <input type="submit" value="submit" onclick="check()" />
         
         <script> function check(){
             window.location="add.jsp";
             
         }</script>
    </body>
</html>
