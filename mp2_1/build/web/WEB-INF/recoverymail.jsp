<%-- 
    Document   : recoverymail
    Created on : 11 Mar, 2018, 3:09:47 PM
    Author     : DELL
--%>


<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page import="javax.mail.Authenticator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get OTP</title>
               <link rel="icon" type="image/png" href= "QISUAL-LOGO.png"/>

    </head>
    <body>
       
        <%
            Random random=new Random();
                int r=random.nextInt(1000000)+1000000;
             String to=request.getParameter("femail");
             int count=0;
            try { 
            Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
          
         
            Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from name_password where email='"+to+"'");
         
                     
                   
                    
                     while(rs.next()){
                            count++;
                     }
                     st.close();
                     
                     if(count==0)
                     {%>
                     <script>
                         window.alert("please enter correct email-ID");
                         window.location="forgotPassword.jsp";
                     </script>
                         
                    <% }
                     
            }catch(SQLException e)
            {
                e.printStackTrace();
            }
            
            if(count!=0){
                
                
                final String username = "mashruwaladhruvin@gmail.com"; // enter your mail id
		final String password = "mashruwalapassword";// enter ur password

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
                props.setProperty("mail.user","mashruwaladhruvin@gmail.com");
                props.setProperty("mail.password","mashruwalapassword");
		Session sessio = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(sessio);
			message.setFrom(new InternetAddress("mashruwaladhruvin@gmail.com")); // same email id
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));// whome u have to send mails that person id
			message.setSubject("OTP for Qisual");
			message.setText("your one time password for qisual is "+r+"");

			Transport.send(message);

			%>
                        <script> alert("otp is sucessfully sent on youe email");</script>
                        <%

		} catch (MessagingException e) {
			%>
                        <script> window.alert("error");
                        window.location="forgotPassword.jsp";</script>
                        <%
		}
            }
            
            
            
             %>
             
             <h3>  Enter your OTP </h3>
             <input type="text" name="enterOTP" id="enterOTP" value="" size="30" />
             <input type="submit" onclick="func()" value="Reset Password" name="resetPassword" />
             <script>
                 function func(){
                      var ra= '<%=r%>';
                     var m=document.getElementById("enterOTP").value;
                     if(ra===m)
                         window.location="resetPassword.jsp";
                     else{
                         window.alert("Your OTP is not correct");
                         window.location="forgotPassword.jsp";
                     }
                 }
                 
             </script>
    
    </body>
</html>
