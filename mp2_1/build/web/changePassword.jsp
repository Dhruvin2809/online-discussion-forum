<%-- 
    Document   : changePassword
    Created on : 12 Mar, 2018, 10:05:55 PM
    Author     : DELL
--%>

<%@page import="java.sql.Statement"%>
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
        <title>changing password</title>
    </head>
    <body>
       
        <%
            int i=0;
            String str1234=request.getParameter("rpassword");
            String str123=request.getParameter("femail");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
         try {
              try {
            Class.forName("com.mysql.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
               PreparedStatement ps=con.prepareStatement("SELECT ID FROM name_password where email='"+str123+"'");
               ResultSet rs=ps.executeQuery("SELECT ID FROM name_password where email='"+str123+"'");
          
         while(rs.next())
         {
              i=rs.getInt("ID");
               
         }
           ps.close();
           rs.close();
//sta123.close();
          }catch (SQLException ex) {
                ex.printStackTrace();
            }
          try {
              try{
              Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
             Statement st = con.createStatement();
                st.executeUpdate("update name_password set password=md5('"+str1234+"') where ID='i'");
               // ps.executeUpdate();
               // ResultSet rs=ps.executeQuery("update username_password set password=md5('"+changepassword1+"') where ID=i");
            //ps.close();
           st.close();
            } 
              
            catch (ClassNotFoundException ex) {
           ex.printStackTrace();
        }
          }
               catch (SQLException ex) {
                ex.printStackTrace();
            }
          
        %>
        <script> window.location="signUP.jsp";  </script>
        <%
        
        
        
        %>
        
        
        
    </body>
</html>
