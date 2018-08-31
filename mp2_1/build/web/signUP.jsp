<%-- 
    Document   : signUP
    Created on : 8 Mar, 2018, 12:57:10 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
        <link rel="icon" type="image/png" href= "QISUAL-LOGO.png"/>
        <style>
            .s{
                font-size: 20px;
                padding: -10px;
                
            }
            body{
                background-image: url("images/background2.png");
                height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
            }
        </style>
    </head>
    
        
         <body>
        <form name="loginForm" action="fetchingdata.jsp" method="POST" style="height:600px;width:1300px">
            <div style=" width:100% ">
                <div style="position:absolute;top:30px;left:32%">
                    
                </div>
                <div style="position: absolute;top: 30%;left: 30%">
                    <div style="background-color:white;float:left; ">
                        <img src="images/QISUAL-LOGO.png" style="height:225px;width: 200px" alt="no image">
                    </div>
                    <div  style="background-color:white;text-align: center;float:left;padding: 1px" >
                            
                        <fieldset> 
                            <legend>Username</legend>
                            <input class="s" type="text" name="sname" id="sname" size="35" style="border:none;background:transparent"/>
                        </fieldset>
                        <fieldset>
                            <legend> password</legend>
                            <input class="s" type="password" name="spassword" id="spassword" size="35" style="border:none;background:transparent;margin-bottom: 0px"/>
                        </fieldset>    
                             <h3 style="padding:0px" ></h3>
                              <a href="forgotPassword.jsp" style="margin-left:240px ;color:orange;text-decoration: none">forgot password?    </a>
                              <h3></h3>
                             <input type="submit" onclick="return myFunction()" value="Login" name="submit" style="font-size:20px;cursor:pointer;width:150px;height: 35px; "/>
                        </div> 
                </div>
                
            </div>
        </form>
        
        <script>
            function myFunction(){
                 if (document.getElementById('sname').value=="" || document.getElementById('spassword').value==""){
                   window.alert("please enter all the fields");
                    return false;
                }
                return true;
                    
            }
        </script>
    </body>
        
</html>
