<%-- 
    Document   : enterQuestion
    Created on : 13 Mar, 2018, 8:48:15 PM
    Author     : DELL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adding question</title>
    </head>
    
   
    <body>  
        <%
            int k=0;
            String user= (String)session.getAttribute("sname").toString();
           String w=request.getParameter("q");
           w=w.trim();
           if(w==""){
               %>
               <script>
                   
                   alert("please enter question");
                   window .location="home_page.jsp";
               </script>
        <%
           }
           
        try{
         Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
                PreparedStatement ps= con.prepareStatement( "SELECT ID FROM name_password WHERE username='"+user+"'");
                 ResultSet rs=ps.executeQuery( "SELECT ID from name_password WHERE username='"+user+"'");
                 
         while(rs.next())
         {
              k=rs.getInt("ID");
              
         }
        
 
        Statement st=con.createStatement();
   
       st.execute("INSERT INTO question (questionText,userID) VALUES ('"+w+"',"+k+")");
       
       
       %>
        
        <script> alert("question is sucessfully added");
        window.location="home_page.jsp";
    </script>
        <%
       st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
       
          
         
        
        %>
    </body>
</html>
