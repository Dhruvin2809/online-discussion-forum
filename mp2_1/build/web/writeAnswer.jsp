<%-- 
    Document   : writeAnswer
    Created on : 30 Mar, 2018, 7:06:33 PM
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
        <title>write an answer</title>
        <link rel="icon" type="image/png" href= "images/QISUAL-LOGO.png"/>
        <style>
             <%@include file="css/style.css" %>
             body{
                font-family:Arial;
                font-size:.93em;
            }
            #content-box{
            
               
               // border:2px solid #888;
                overflow:scroll;
               
                width:800px;
            }
             #content-box p{
               // border:1px solid #EEE;
                //background-color:azure;
               
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
        <form name="answerTest" action="insertAnswer.jsp" method="POST">
            <div style="width: 100%">
                <div class="b">
                <div class="c"></div>
                <div>  
                    <a href="home_page.jsp"><h1 class="d"> QISUAL </h1></a>
               </div>
           
            </div>
              <div style="width:800px;">
                 
                <div style="width: 800px">
        <%
           int co=0;
           String c= request.getParameter("value");
           c=c.trim();
           co=Integer.parseInt(c);
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
             String k1=null;  
        try {
           
           
            int count=1;
        
            try {
            Class.forName("com.mysql.jdbc.Driver");
            /* Set the Nimbus look and feel */
        } catch (ClassNotFoundException ex) {
           
        }   
         
            Statement stmd=con.createStatement();
           ResultSet rs = stmd.executeQuery("select * from question where questionID = "+co);
           
           while(rs.next()){ 
               k1=rs.getString("questionText");
           }
           rs.close();
           stmd.close();
           
            %>
                <p style="font-size:30px"><% out.println(k1); %> </p>
              <input  type="text" id="an" name="an" size = "70" style="height:30px;border:none;" placeholder="write your answer here" />
              <input type="file" name="add-image" id="file" accept="image/*"  />
              <input type="submit" onclick="return myfunction()" value="submit Answer" name="submit" style="cursor:pointer;height:30px;background-color:orange;border:none" />
              <hr>
                </div> 
           
              <div id="content-box" style="float:left" >
            <div id="content-wrapper">
             
               <h3 style="text-align:center;">ANSWERS</h3>
              <%
                 String k=null;
                 int userIDforAnswer;
                 String usernameForAnswer=null;
            
            count=1;
          Statement stmd1=con.createStatement();              
          ResultSet rs1 = stmd1.executeQuery("select * from answer where questionID="+co+ " ORDER BY answerID DESC");
          Statement stmd2=con.createStatement();              
          
          session.setAttribute("qid",co);
        
          
         while(rs1.next())
         {
              k=rs1.getString("answerText");
              userIDforAnswer=rs1.getInt("answerById");
               ResultSet rs2 = stmd2.executeQuery("select * from name_password where ID = "+userIDforAnswer);
               while(rs2.next()){
                   usernameForAnswer=rs2.getString("username");
               }
         
             
             
              %>
              
                 
              <p style="font-size:30px;color:orange;"><span style="color:blue;font-size: 30px"> <%=count  %> </span> <% out.println(k); %> <span style="font-size:10px;color:black"> posted by <%=usernameForAnswer%>  </span> </p>
           
             <%
            
             count++;
              
         }
         if(count==1)
         {
             %>
             <p style="font-size:30px"><span style="color:orange;">No answer to display </span>
                
              <%
         }
       stmd1.close();
         rs1.close();
        
        }
   
        catch (SQLException ex) {
        }   
             
                
            
                %>
                </div>
             
             </div>
                </div>
                
                
             
                
               
              
                <div style="border:1px solid black;width:500px;float: left">
                    <h2 style="text-align:center;">Related questions </h2>
                    
          <%
                    
          PreparedStatement ps= con.prepareStatement( "SELECT * FROM question");
           
         ResultSet rs=ps.executeQuery( "SELECT * from question");
          PreparedStatement ps1;
           String relatedQuestion=null;
           int userIdForRelatedQuestion;
           String questionIdForRelateQuestion=null;
           String usernameForRelatedQuestion=null;
           int count3=1;
           
           
           
         ResultSet rs1;
        
         
         while(rs.next())
         {
             relatedQuestion=rs.getString("questionText");
             if(k1.equals(relatedQuestion)){
                 continue;
             }
              questionIdForRelateQuestion=rs.getString("questionID");
             userIdForRelatedQuestion=rs.getInt("userId");
              ps1=con.prepareStatement("select username from name_password where ID='"+userIdForRelatedQuestion+"'");
              rs1=ps1.executeQuery("select username from name_password where ID='"+userIdForRelatedQuestion+"'");
              while(rs1.next()){
             usernameForRelatedQuestion=rs1.getString("username");
              }
              
              %>
                        <p style="font-size:20px"> <span style="font-size:20px;color:blue"> <%=count3  %> </span> <a style="text-decoration:none ;color:orange;" href="writeAnswer.jsp?value= <%=questionIdForRelateQuestion%>"> <% out.println(relatedQuestion); %> </a> </p>

                    
                    <%
                    count3++;
         }
                    
                    %>
                  </div>
                  
                
                   </div>
                </form>
                  <script>
                   function myfunction(){
                       var ans=document.getElementById("an").value;
                       
                       
                     if(ans.toString().trim()===""){
                         window.alert("please enter answer");
                         return false;
                     }
                     if(ans!=""){
                        return true;
                     }
                   } 
                    
                </script>
                  
    </body>
</html>
