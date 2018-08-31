    <%-- 
    Document   : insertData
    Created on : 9 Mar, 2018, 8:56:10 PM
    Author     : DELL
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="icon" type="image/png" href= "QISUAL-LOGO.png"/>
        
    </head>
    <body>


 <%
             int flag=0,flag1=0;
     
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
                  Class.forName("com.mysql.jdbc.Driver");
                String insertUsername="";
                String usernameFromSignUp=request.getParameter("name");
              
                
                String passwordFromSignUp=request.getParameter("password");
                //String confirmPassword=confirm_password.getText();
                String e=request.getParameter("email");
                
                 Statement st=con.createStatement();
                 
                  ResultSet rs=st.executeQuery("select * from name_password where username='"+usernameFromSignUp+"'");
                   
                    int count=0;
                    
                     while(rs.next()){
                            count++;
                     }
                     st.close();
                   st=con.createStatement();
                  rs=st.executeQuery("select * from name_password where email='"+e+"'");
                     
                    int count1=0;
                    
                    
                     while(rs.next()){
                            count1++;
                     }
                     //st.close();
                    
                    
                        if(count==0 && count1==0 ){
            
                          st.execute("INSERT INTO name_password (username,email,password) VALUES ('"+usernameFromSignUp+"','"+e+"',md5('"+passwordFromSignUp+"'))");
                          
  
                           %>
                          <script>
                              window.location="signUP.jsp";
                          </script>
                           
                     <%}
                     else {%>
                    <script>
                        window.alert("this username or email ID is already exist please enter another username or email ID");
                        window.location="signUP_Page.jsp";
                        
                    </script>
                     <%}
                     
                   
    
         
            %>
            
                </body>
</html>

            
            




