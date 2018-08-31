<%-- 
    Document   : test
    Created on : 5 Mar, 2018, 8:39:24 PM
    Author     : DELL
--%>

<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check</title>
    </head>
    <body>
        <h1>insert data</h1>
         
        
        <form name="myForm" action="test.jsp" method="POST">'
            <h1>Enter the name</h1><input type="text" name="name" value="User name" size="50" />
            <input type="submit" value="insert" name="button" />
        </form>
        <%!
            public class signup{
                Connection con=null;
                ResultSet rs=null;
             PreparedStatement st=null;
                
               public signup() {
                  try{
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","dhruvin","root");
                   
                }
                  catch(SQLException e){
                      e.printStackTrace();
                 }
            }
                
                public void insert(String f){
                    try{
                     st=con.prepareStatement("insert into t values ('dhruvin')");
                     
                   }catch(SQLException e){
                        e.printStackTrace();
                    }
                }
         }
            
        %>
        <%
        signup sp=new signup();
        String fname=request.getParameter("name");
       sp.insert(fname);
        %>
        
      </body>
</html>
#content-box p span{
                color:#00F;
                display:block;
                font:bold 21px Arial;
                float:left;
                margin-right:10px;
            }