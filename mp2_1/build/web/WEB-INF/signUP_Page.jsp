<%-- 
    Document   : signUP_Page
    Created on : 7 Mar, 2018, 7:17:32 PM
    Author     : DELL
--%>
<%@page import="javax.script.ScriptEngine"%>
<%@page import="javax.script.ScriptEngineManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="icon" type="image/png" href= "images/QISUAL-LOGO.png"/>
        <style>
            .s{
                font-size: 20px;
                padding: -10px;
              }
            
        #loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}  

#myDiv{
    display: none;
}
fieldset{
    height:50px;
    color:black;
}
      body {
    height: 100%;
    margin: 0;
      /* The image used */
    background-image: url("images/background3.png");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
} 
input{
    color:black;
}

        </style>
    </head>
    <body onload="fo()">
        <div id="loader"></div>
        
       
        <form id="myDiv" class="animate-bottom" name="signupForm" action="insertData.jsp" method="POST" style="height:600px;width:1300px">
           
            <div style=" width:100% ">
    
                <div style="position: absolute;left: 25%;top:10%;border-radius: 25px;">
                    <div style="background-color:white;margin-top:20px;padding:5px"><center style="font-size:30px"><img src="images/QISUAL-LOGO.png" alt="logo" style="height:150px;"/></center>
                    </div>
                    <div style="background-color:white;float:left;height:412px;width:300px">
                        <input type="button" style="width:200px;background-color:#df4930;font-color:white;box-sizing: border-box;
transition: opacity ease-in-out 100ms,color ease-in-out 100ms,background-color ease-in-out 100ms,border-color ease-in-out 100ms;
border-radius: 3px;
box-shadow: 0 1px 1px 0 rgba(200,200,200,0.2);
display: inline-block;
font-weight: 500;
outline: 0;
padding: 3px 7px 4px 7px;
text-align: center;
text-decoration: none;
cursor: pointer;
margin-bottom: 16px;
font-size: 16px;
padding: 8px 16px;
width: 270px;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;" value="continue with google" />
                    </div>
                        <div  style="text-align: center;float:left;padding: 1px;background-color:white;color:white;" >
                            <h1 style="margin-top: -5px;padding: 0px"><b>Create an Account</b></h1>
                            <h4 style="color: blue;margin-top: -15px;padding: 0px"> Already have an account?<a href="signUP.jsp" style="color:orange    ;text-decoration: none"> Sign in here </a> </h4>
                            
                            
                          
                            <fieldset>
                                <legend style="font-size:25px">your name</legend>
                           <input class="s" type="text" name="name" id="name"  size="35" style="border:none;background:transparent"/>
                            
                            </fieldset>
                            <fieldset>
                                <legend style="font-size:25px">your E-mail ID</legend>
                             <input class="s" type="text" name="email" id="email" size="35" style="border:none;background:transparent"/>
                             </fieldset>
                             <fieldset>
                                 <legend style="font-size:25px">your password</legend>
                             <input class="s" type="password" name="password" id="password" size="35" style="border:none;background:transparent"/>
                             </fieldset> 
                             <fieldset>
                                    <legend style="font-size:25px">Confirm password</legend>

                            <input class="s" type="password" name="confirm_password" id="confirm_password" size="35" style="border:none;background:transparent"/>
                             </fieldset>  
                            <h3></h3>
                             <input type="submit" onclick="return func()" value="Create an account" name="submit" style="font-size:20px;cursor:pointer;opacity:1;"/>
                        </div>
                </div>
                
            </div>
           
        </form>
        
        
        
        
        <script>
            var myVar;

    function fo() {
     myVar = setTimeout(showPage,300);
 }
 function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
            
    function func(){
            var temp=0;
                if (document.getElementById('name').value=="" || document.getElementById('email').value=="" || document.getElementById('password').value=="" || document.getElementById('confirm_password').value=="")
                {
                   window.alert("please enter all the fields");
                   temp=1;
                    return false;
                }
                if (temp==0){
                    var str1=document.getElementById("password").value;
                    var str2=document.getElementById("confirm_password").value;
                    if(str1!=str2)
                      {
                         window.alert("please enter correct password");
                         return false;
                     }
                }
                
                return true;
                    
            }
            
        </script>
    </body>
</html>
