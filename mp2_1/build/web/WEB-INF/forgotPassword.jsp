<%-- 
    Document   : forgotPassword
    Created on : 11 Mar, 2018, 1:41:04 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgot password</title>
         <link rel="icon" type="image/png" href= "QISUAL-LOGO.png"/>
         
          <style>
            .s{
                font-size: 20px;
                height:30px;
                border:2px solid black;
                border-radius:20px;
                 padding:5px;
                background-color:#d9d9d9; 
            }
        </style>
    </head>
    <body>
        <form name="forgot" action="recoverymail.jsp" method="POST" style="width: 100%">
            <div style="width: 100%">
                <div style="width: 100%;height: 70px;background-color: #ffd633;margin-top: -30px"> <h1 style="margin-left: 100px;color: white;font-size: 60px"> QISUAL  </h1>
                </div>
                <div style="border: 2px solid black"><h1 align="center"> WHAT'S MY PASSWORD?</h1>  
                    <h3 align="center"> if you have forgotten your password you can reset it here</h3>
                  
                    <input class="s" type="text" style="margin-left:30%" name="femail" id="femail" value="" size="50" placeholder="Enter Email-ID" />
                    <h5></h5>
                    <input type="submit" value="Get OTP" name="otp" onclick="return myFunction()" style="margin-left: 44%;font-size:20px;cursor:pointer;color: orange;width:300px;height: 35px;border:2px solid black;border-radius:20px; background-color:#d9d9d9; "  />
                    
                </div>
                
                
            </div>
        </form>
        
        <script>
            
            function myFunction(){
                if(document.getElementById("femail").value==""){
                    window.alert("please enter email-ID");
                    return false;
                }
                return true;
            }
            </script>
    </body>
</html>
