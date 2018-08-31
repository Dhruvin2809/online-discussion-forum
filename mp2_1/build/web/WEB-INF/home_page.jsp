    <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : home_page
    Created on : 8 Mar, 2018, 10:47:51 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
       <link rel="icon" type="image/png" href= "images/QISUAL-LOGO.png"/>
       <style type="text/css">  
    <%@include file="css/style.css" %>
     body{
                font-family:Arial;
                font-size:.93em;
            }
            #content-box{
                margin-left:250px;
                background-color:white;
               // border:2px solid silver;
                overflow:scroll;
                width:760px;
            }
            #content-box p{
                //border:1px solid #EEE;
               // background-color:azure;
               
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
        <form name="check" action="enterQuestion.jsp" method="post">
           
    
        <div class="a">
            <div class="b">
                <div class="c"></div>
                <div>  
                    <a href="home_page.jsp"><h1 class="d"> QISUAL </h1></a>
               </div>
                
                <div> 
                   
                  <div> <h3 class="i">Hello user <a href="signUP_Page.jsp" style="text-decoration:none" onclick="f()"> Log Out</a></h3></div>
                </div>
            </div>
            <div style="float:left;width: 300px;margin-left: -470px;margin-top: 50px;"> <a href="myQuestions.jsp" style="text-decoration:none;"> <h3 style="text-decoration: underline;color:orange;font-size: 30px">My questions</h3>  </a></div>
        <div>
         <div class="g" style="margin-left:250px"> 
              
                <textarea placeholder="Drop your question here" style="border:none;margin-right:15px;font-size: 30px" id="q" name="q" rows="1" cols="40"></textarea>
                <h3></h3>
                <input type="file" name="add-image" id="file" accept="image/*"  />
                <input type="submit" onclick="return func()" value="POST YOUR QUESTION " style="cursor:pointer;background-color:orange" name="submit" />
                <hr>
         </div>
            <div id="content-box">
            <div id="content-wrapper">
                <%
                  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                    
        try {
            try {
            Class.forName("com.mysql.jdbc.Driver");
            /* Set the Nimbus look and feel */
        } catch (ClassNotFoundException ex) {
           
        }
            String usernameForQuestion=null;
            String k=null;
            String qid=null;
            int count2=0;
           int uid;
            int count=1;    
            PreparedStatement ps= con.prepareStatement( "SELECT * FROM question ORDER BY questionID DESC");
           
         ResultSet rs=ps.executeQuery( "SELECT * from question ORDER BY questionID DESC");
          PreparedStatement ps1;
           
         ResultSet rs1;
        
         
         while(rs.next())
         {
             count2=0;
              k=rs.getString("questionText");
              qid=rs.getString("questionID");
              uid=rs.getInt("userId");
              ps1=con.prepareStatement("select username from name_password where ID='"+uid+"'");
              rs1=ps1.executeQuery("select username from name_password where ID='"+uid+"'");
              while(rs1.next()){
             usernameForQuestion=rs1.getString("username");
              }
              ps1=con.prepareStatement("select answerId from answer where questionID='"+qid+"'");
              rs1=ps1.executeQuery("select answerId from answer where questionID='"+qid+"'");
              while(rs1.next()){
             count2++;
              }
              
              %>
              <p style="font-size:30px;margin:30px 0px 0px 0px"> <span><img src="images/index.png" style="height:30px;width:30px" alt="no image"></span> <a style="text-decoration:none ;color:orange;" href="writeAnswer.jsp?value= <%=qid%>"> <% out.println(k); %> </a><span style="font-size:10px">posted by <%=usernameForQuestion%></span> </p>
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
  </form>  
            
       
        <script> 
            function f(){
                var hi= confirm("Do you really want to log out?");
    if (hi===true){
        window.location="signUP.java";
    }
    if(hi!==true){
        window.location="home_page.jsp";
    }
            }
            </script>
            <script>
        function func() {
           var ques=document.getElementById("q").value;
           ques=ques.trim();
                    if(ques==="")
                    {
                        alert("please enter the question");
                        return false;
                       
                    }
                   if(ques!==""){
                    return true;
                }
        }
        </script>
     
    </div>
        <div style="margin-top:50px" class="b" >
            
            <h3 style="text-align: center;color:white;">COPYRIGHT 2018 QISUAL ALL RIGHTS RESERVED</h3>
        </div>
       
    </body>
    
  
</html>






