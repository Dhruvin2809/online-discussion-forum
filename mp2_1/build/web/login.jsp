<%-- 
    Document   : login
    Created on : Aug 23, 2018, 8:27:23 PM
    Author     : Dhruvin
--%>


<%@page import="javax.jms.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>particles.js</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" media="screen" href="css/style.css">
  
  <style>
      #submita{
	width: 96%;
	background-color: blue;
	border: none;
	color: white;
	margin-top: 14px;
        display: none;
}
#submita:hover{
    cursor: pointer;
}

      </style>
  
  
</head>
<body>
<!-- particles.js container -->
<div id="particles-js">
  <div class="center-container">
    <div class="title">Qisual</div>
    <br>
    <div class="login-form">
      <div class="login-title"><span id="login-title">Login to our site </span><img id="login-type" src="images/lock2.png" width="45" style="float: right"></div>
      <br>
      <div class="login-subtitle">Enter your username and password to log on:</div>
    
      
      
      
      <form method="post" action="fetchingdata.jsp"> 
        <input type="text" id="username" name="username" placeholder="Username" required>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <input id="email" type="email" name="email" placeholder="Email">
        <input id="cpass" type="password" name="cpass" placeholder="Confirm password">
        <input id="submit" type="submit" onclick="return funct()" name="submit" value="Log in!">
        <input id="submita" type="submit" name="submita" onclick="return func()" formaction="insertData.jsp" value="Sign in!">
      </form>
      <div class="signup"><span class="signup-text">New to Qisual?</span> 
        <a href="javascript:void(0)">
          <span id="signup">Sign up now »</span>
          <span id="login">Login now»</span>
        </a>
      </div>
    </div>
    <div class="signup-with">
      <span class="login-with">..or Login With:</span>
      <ul class="login-options" type="none"> 
        <li> <a href=""><i class="fa fa-google-plus fa-icon" aria-hidden="true"></i>Google</a></li>
        <li> <a href=""><i class="fa fa-twitter fa-icon" aria-hidden="true"></i>Twitter</a></li>
        <li> <a href=""><i class="fa fa-facebook fa-icon" aria-hidden="true"></i>Facebook</a></li>
      </ul>
    </div>
  </div>
</div>
  
<script>
    function funct()
    {

        if(document.getElementById("email").value==="" && document.getElementById("cpass").value==="" && document.getElementById("password").value!=="" && document.getElementById("username").value!=="" )
        {
           return true;
        }
    }
    
    function func{
        if(document.getElementById('email').value!=="" && document.getElementById('cpass').value!=="" && document.getElementById('password').value!=="" && document.getElementById('username').value!=="" )
        {
            
            if(document.getElementById('password').value===document.getElementById('cpass').value)
            {
               return true;
            }
            else
                window.alert("password and correct password is not matching");
            return false;
        }
    }
    </script>
<!-- scripts -->

<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/particles.js"></script>
<script src="js/app.js"></script>


<!-- Function for signup -->
<script type="text/javascript">
  $('#signup').click(function () {
    $('.center-container').css({"top":"0%"});
    $('#login-title').html('Sign up now');
    $('.login-subtitle').html('Fill in the form below to get instant access:');
    $("#login-type").attr('src','images/signup.png');
    $("#email").css({"display": "block"});
    $("#cpass").css({"display": "block"});
     $("#submita").css({"display": "block"});
$('#submita').attr('value','Sign me up!!');
        $("#submit").css({"display": "none"});
    //$('#submit').attr('value','Sign me up');

    $('.signup-text').html('Alrady have account?');
    $('#signup').css({"display": "none"});
    $('#login').css({"display": "inline"});
  });

  $('#login').click(function () {
    $('.center-container').css({"top":"10%"});
    $('#login-title').html('Login to our site');
    $('.login-subtitle').html('Enter your username and password to log on:');
    $("#login-type").attr('src','images/lock2.png');
    $("#email").css({"display": "none"});
    $("#cpass").css({"display": "none"});
    $("#submit").css({"display": "block"});
    $('#submit').attr('value','Log in!');
        $("#submita").css({"display": "none"});

       // $('#submita').attr('value','Sign me up!');

    $('#signup').css({"display": "inline"});
    $('.signup-text').html('New to Qisual?');
    $('#login').css({"display": "none"});
    $('#signup').css({"display": "inline"});
  });
</script>



</body>
</html>
