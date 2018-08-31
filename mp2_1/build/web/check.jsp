<%-- 
    Document   : check
    Created on : 15 Mar, 2018, 6:31:16 PM
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
        <title>Login</title>
        <link rel="icon" type="image/png" href= "QISUAL-LOGO.png"/>
        
    </head>
    <body>
        
        
        
        <%
             Random random=new Random();
                int r=random.nextInt(100000)+100000;
             String to=request.getParameter("femail");
             
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
                        <script> window.alert("please enter valid email ID");
                        window.location="signUP_Page.jsp";</script>
                        <%
		}
            
            
            
            
           
            int count=0;
            
             try {
                  Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","dhruvin","root");
          
              String insertUsername="";
                String usernameFromSignUp=request.getParameter("name");
                
                String passwordFromSignUp=request.getParameter("password");
                //String confirmPassword=confirm_password.getText();
                String e=request.getParameter("email");
                
                 Statement st=con.createStatement();
                 
                  ResultSet rs=st.executeQuery("select * from name_password where username='"+usernameFromSignUp+"'");
                   
                   
                    
                     while(rs.next()){
                            count++;
                     }
                     st.close();
                  
                        if(count==0 ){
                        
                       // insertUsername=;
                          st.execute("INSERT INTO name_password (username,email,password) VALUES ('"+usernameFromSignUp+"','"+e+"',md5('"+passwordFromSignUp+"'))");
                          
  
                           %>
                          <script>
                              window.location="home_page.jsp";
                          </script>
                           
                     <%}
                     else {%>
                    <script>
                        window.alert("this username or email ID is already exis please enter another username or email ID");
                        window.location="signUP_Page.jsp";
                        
                    </script>
                     <%}
                     
                     }
          catch (Exception ex) {
    
    
    }
            %>
            
                </body>
</html>
