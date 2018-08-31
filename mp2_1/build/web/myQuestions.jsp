<%-- 
    Document   : myQuestions.jsp
    Created on : 3 Apr, 2018, 11:26:21 PM
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
        <title>My questions</title>
         <link rel="icon" type="image/png" href= "images/QISUAL-LOGO.png"/>
       <style type="text/css">  
    <%@include file="css/style.css" %>
     body{
                font-family:Arial;
                font-size:.93em;
            }
            #content-box{
                
                background-color:white;
                border:2px solid silver;
                overflow:scroll;
                width:760px;
            }
            #content-box p{
                border:1px solid #EEE;
                background-color:azure;
               
            }
            
    </style>
    <script type="text/javascript">
            $(document).ready(function(){
                $contentLoadTriggered = false;
                $("#content-box").scroll(function(){
                    if($("#content-box").scrollTop() >= ($("#content-wrapper").height() - $("#content-box").height()) && $contentLoadTriggered == false)
                    {
                        $contentLoadTriggered = true;
                        $.get("infinitContentServlet", function(data){
                            $("#content-wrapper").append(data);
                            $contentLoadTriggered = false;
                        });
                    }

                });
            });
        </script>
   
    </head>
    <body>
        <div style="width:100%">
      <div class="b">
                <div class="c"></div>
                <div>  
                    <a href="home_page.jsp"><h1 class="d"> QISUAL </h1></a>
               </div>
           
            </div>
        
            <div id="content-box" style="float:left">
            <div id="content-wrapper" style="float:left">
                <%
                    int j=0;
                    
                    String user= (String)session.getAttribute("sname").toString();
                    
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                   
        try {
            
            
            try {
            Class.forName("com.mysql.jdbc.Driver");
            /* Set the Nimbus look and feel */
        } catch (ClassNotFoundException ex) {
           
        }
            Statement stmd2=con.createStatement();      
            ResultSet rs2 = stmd2.executeQuery("select * from name_password where username ='"+user+"';");
                    
                    
               while(rs2.next()){
                  j=rs2.getInt("ID");
               }
             
         
            String usernameForQuestion=null;
            String k=null;
            String qid=null;
            int count2=0;
           int uid;
            int count=1;    
            
            
         PreparedStatement ps= con.prepareStatement( "SELECT * FROM name_password where userID='"+j+"' ");  
         ResultSet rs=ps.executeQuery( "SELECT * from question where userID='"+j+"'");
          PreparedStatement ps1;
           
         ResultSet rs1;
        
         
         while(rs.next())
         {
             count2=0;
              k=rs.getString("questionText");
              qid=rs.getString("questionID");
              ps1=con.prepareStatement("select answerId from answer where questionID='"+qid+"'");
              rs1=ps1.executeQuery("select answerId from answer where questionID='"+qid+"'");
              while(rs1.next()){
             count2++;
              }
              
              %>
              <p style="font-size:30px;margin:30px 0px 0px 0px"> <span style="font-size:30px;color:blue"> <%=count  %> </span> <a style="text-decoration:none ;color:orange;" href="writeAnswer.jsp?value= <%=qid%>"> <% out.println(k); %> </a> </p>
             <%
             if(count2==0){
                 %>
              <span style="color:black;">No answer yet</span>
              <%    
             }
             if(count2!=0){
                 %>
               <span style="color:black;"><%=count2%> answers are available</span>
              <%
             }
             
             %>
              
             
             <%
            
             count++;
             
              
         }
         if(count==1)
         {
             %>
             <p style="font-size:50px"><span>No question to display </span>
              <%
         }
         ps.close();
         rs.close();
        
        }
        catch (SQLException ex) {
        }    
                    
            
                %>
 </div>
        </div>
            
       </div>
    </body>
</html>
