<%-- 
    Document   : fetchingdata
    Created on : 10 Mar, 2018, 11:55:53 PM
    Author     : DELL
--%>


<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
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
            int j=0,k=0;
           
            try{
                
            Connection con123=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
           
        } catch (ClassNotFoundException ex) {
        }   
         String usernameLogin=request.getParameter("sname");
         session.setAttribute("sname",usernameLogin);
         String passwordLogin=request.getParameter("spassword");
      
        
             PreparedStatement ps= con123.prepareStatement( "SELECT ID FROM name_password WHERE username='"+usernameLogin+"'");
         ResultSet rs=ps.executeQuery( "SELECT ID from name_password WHERE username='"+usernameLogin+"'");
          
         while(rs.next())
         {
              k=rs.getInt("ID");
              
         }
         ps.close();
         rs.close();
       
         
         
        try {
            
            ps = con123.prepareStatement( "SELECT ID FROM name_password WHERE password='"+passwordLogin+"'");
            rs=ps.executeQuery( "SELECT ID from name_password WHERE password=md5('"+passwordLogin+"')");
            while(rs.next())
         {
              j=rs.getInt("ID");
              
         }
            ps.close();
            rs.close();
       
         
            if( k==j && k!=0 ){ 
                 session.setAttribute("userid",k);
          %>
          <script>
              window.location="home_page.jsp";
          </script>
          <%
        }
        else if(k!=j || k==0 || j==0){
            %>
             <script>
            window.alert("username or password is incorrect");
            window.location="signUP.jsp";
          </script>
            
         <%
        }
            
        } catch (SQLException ex) {
        }
        
         }catch(Exception e){
            out.println("class is not found");
        }
       
        %>
        
        
    </body>
</html>
