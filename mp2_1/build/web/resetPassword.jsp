<%-- 
    Document   : resetPassword
    Created on : 12 Mar, 2018, 9:44:41 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset password</title>
    </head>
    <body>
       <h3> password</h3>
       <input type="password" name="rpasswprd" id="rpassword" value="" size="35" />
       <h3> Confirm password</h3>
       <input type="password" name="rconfirmpasswprd" id="rconfirmPassword" value="" size="35" />
       <input type="submit" onclick="func()" value="Reset password" name="resetPassword" />
       
       <script>
           function func(){
               if(document.getElementById("rpassword").value==="" || document.getElementById("rconfirmPassword").value==="")
                   window.alert("please enter all fields");
               else{
               var str1=document.getElementById("rpassword").value;
               var str2=document.getElementById("rconfirmPassword").value;
               if(str1!=str2)
               {
                    window.alert("your password is not match");
                   
               }
               else
               {
                window.alert("your password is sucessfully changed");  
                window.location="changePassword.jsp";  
               }
           }
           }
           
       </script>
       
    </body>
</html>
