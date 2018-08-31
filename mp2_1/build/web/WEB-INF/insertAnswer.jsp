<%-- 
    Document   : insertAnswer
    Created on : 31 Mar, 2018, 8:49:59 PM
    Author     : DELL
--%>

<%@page import="java.sql.Statement"%>
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
        
         String ans1=request.getParameter("an");
        
        try{
            String answerById= (String)session.getAttribute("userid").toString();
            answerById=answerById.trim();
            int ansId=Integer.parseInt(answerById);
            
            String questionId= (String)session.getAttribute("qid").toString();
            questionId=questionId.trim();
            int quesId=Integer.parseInt(questionId);
            
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
         Statement st=con.createStatement();
         
        
       st.execute("INSERT INTO answer (answerById,answerText,questionId) VALUES ('"+ansId+"','"+ans1+"','"+quesId+"')");
    
     int count=1;
     if(count==1){
         %>
        <script>
            window.alert("your answer is successfully posted");
            window.location="home_page.jsp";
            
      </script>
        <%
     }
        
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        %>
        
    </body>
</html>
