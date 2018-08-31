<%-- 
    Document   : gh
    Created on : 15 Mar, 2018, 6:59:36 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ds</title>
    </head>
    <body>

        
        <%
            int flag=0;
             Random random=new Random();
                int r=random.nextInt(100000)+100000;
               
             String to=request.getParameter("email");
             
             final String username = "mashruwaladhruvin@gmail.com"; // enter your mail id
		final String password = "mashruwalapassword";// enter ur password
              try{

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
        
                    try{
                    
			Message message = new MimeMessage(sessio);
			message.setFrom(new InternetAddress("mashruwaladhruvin@gmail.com")); // same email id
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));// whome u have to send mails that person id
			message.setSubject("OTP for Qisual");
			message.setText("your one time password for qisual is "+r+"");
                      
			Transport.send(message);
                        
                        %>
                        <script>
                           
                            var person = prompt("Please enter your name","");
                            var a=ParseInt("person",10);

                            if (a!= null) {
                                        var temp=<%=r%>
                                        window.alert(temp);
                                        if(temp===a)
                                        window.location="insertData.jsp";
                                    else{
                                        window.alert("enter correct OTP");
                                        window.location="signUP_Page.jsp";
                                    }
                                }
                        </script>
        
                        <%

			} catch (MessagingException e) {
                            
                            %>
                            <script>
                                window.alert("enter valid email-ID");
                                window.location="signUP_Page.jsp";
                                
                            </script>
                            
                        <%
                        }
	 }
              catch(Exception e)
                        
                    {
                        e.printStackTrace();
                    }
                
              
                
            %>
        
        
    </body>
</html>




