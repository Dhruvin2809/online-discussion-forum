package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.jms.Session;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>particles.js</title>\n");
      out.write("  <meta name=\"description\" content=\"particles.js is a lightweight JavaScript library for creating particles.\">\n");
      out.write("  <meta name=\"author\" content=\"Vincent Garreau\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"css/style.css\">\n");
      out.write("  \n");
      out.write("  <style>\n");
      out.write("      #submita{\n");
      out.write("\twidth: 96%;\n");
      out.write("\tbackground-color: blue;\n");
      out.write("\tborder: none;\n");
      out.write("\tcolor: white;\n");
      out.write("\tmargin-top: 14px;\n");
      out.write("        display: none;\n");
      out.write("}\n");
      out.write("#submita:hover{\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("      </style>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- particles.js container -->\n");
      out.write("<div id=\"particles-js\">\n");
      out.write("  <div class=\"center-container\">\n");
      out.write("    <div class=\"title\">Qisual</div>\n");
      out.write("    <br>\n");
      out.write("    <div class=\"login-form\">\n");
      out.write("      <div class=\"login-title\"><span id=\"login-title\">Login to our site </span><img id=\"login-type\" src=\"images/lock2.png\" width=\"45\" style=\"float: right\"></div>\n");
      out.write("      <br>\n");
      out.write("      <div class=\"login-subtitle\">Enter your username and password to log on:</div>\n");
      out.write("    \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <form method=\"post\" action=\"fetchingdata.jsp\"> \n");
      out.write("        <input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Username\" required>\n");
      out.write("        <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("        <input id=\"email\" type=\"email\" name=\"email\" placeholder=\"Email\">\n");
      out.write("        <input id=\"cpass\" type=\"password\" name=\"cpass\" placeholder=\"Confirm password\">\n");
      out.write("        <input id=\"submit\" type=\"submit\" onclick=\"return funct()\" name=\"submit\" value=\"Log in!\">\n");
      out.write("        <input id=\"submita\" type=\"submit\" name=\"submita\" onclick=\"return func()\" formaction=\"insertData.jsp\" value=\"Sign in!\">\n");
      out.write("      </form>\n");
      out.write("      <div class=\"signup\"><span class=\"signup-text\">New to Qisual?</span> \n");
      out.write("        <a href=\"javascript:void(0)\">\n");
      out.write("          <span id=\"signup\">Sign up now »</span>\n");
      out.write("          <span id=\"login\">Login now»</span>\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"signup-with\">\n");
      out.write("      <span class=\"login-with\">..or Login With:</span>\n");
      out.write("      <ul class=\"login-options\" type=\"none\"> \n");
      out.write("        <li> <a href=\"\"><i class=\"fa fa-google-plus fa-icon\" aria-hidden=\"true\"></i>Google</a></li>\n");
      out.write("        <li> <a href=\"\"><i class=\"fa fa-twitter fa-icon\" aria-hidden=\"true\"></i>Twitter</a></li>\n");
      out.write("        <li> <a href=\"\"><i class=\"fa fa-facebook fa-icon\" aria-hidden=\"true\"></i>Facebook</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("<script>\n");
      out.write("    function funct()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if(document.getElementById(\"email\").value===\"\" && document.getElementById(\"cpass\").value===\"\" && document.getElementById(\"password\").value!==\"\" && document.getElementById(\"username\").value!==\"\" )\n");
      out.write("        {\n");
      out.write("           return true;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    function func{\n");
      out.write("        if(document.getElementById('email').value!==\"\" && document.getElementById('cpass').value!==\"\" && document.getElementById('password').value!==\"\" && document.getElementById('username').value!==\"\" )\n");
      out.write("        {\n");
      out.write("            \n");
      out.write("            if(document.getElementById('password').value===document.getElementById('cpass').value)\n");
      out.write("            {\n");
      out.write("               return true;\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("                window.alert(\"password and correct password is not matching\");\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("<!-- scripts -->\n");
      out.write("\n");
      out.write("<script src=\"js/jquery-3.1.1.min.js\"></script>\n");
      out.write("<script src=\"js/particles.js\"></script>\n");
      out.write("<script src=\"js/app.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Function for signup -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("  $('#signup').click(function () {\n");
      out.write("    $('.center-container').css({\"top\":\"0%\"});\n");
      out.write("    $('#login-title').html('Sign up now');\n");
      out.write("    $('.login-subtitle').html('Fill in the form below to get instant access:');\n");
      out.write("    $(\"#login-type\").attr('src','images/signup.png');\n");
      out.write("    $(\"#email\").css({\"display\": \"block\"});\n");
      out.write("    $(\"#cpass\").css({\"display\": \"block\"});\n");
      out.write("     $(\"#submita\").css({\"display\": \"block\"});\n");
      out.write("$('#submita').attr('value','Sign me up!!');\n");
      out.write("        $(\"#submit\").css({\"display\": \"none\"});\n");
      out.write("    //$('#submit').attr('value','Sign me up');\n");
      out.write("\n");
      out.write("    $('.signup-text').html('Alrady have account?');\n");
      out.write("    $('#signup').css({\"display\": \"none\"});\n");
      out.write("    $('#login').css({\"display\": \"inline\"});\n");
      out.write("  });\n");
      out.write("\n");
      out.write("  $('#login').click(function () {\n");
      out.write("    $('.center-container').css({\"top\":\"10%\"});\n");
      out.write("    $('#login-title').html('Login to our site');\n");
      out.write("    $('.login-subtitle').html('Enter your username and password to log on:');\n");
      out.write("    $(\"#login-type\").attr('src','images/lock2.png');\n");
      out.write("    $(\"#email\").css({\"display\": \"none\"});\n");
      out.write("    $(\"#cpass\").css({\"display\": \"none\"});\n");
      out.write("    $(\"#submit\").css({\"display\": \"block\"});\n");
      out.write("    $('#submit').attr('value','Log in!');\n");
      out.write("        $(\"#submita\").css({\"display\": \"none\"});\n");
      out.write("\n");
      out.write("       // $('#submita').attr('value','Sign me up!');\n");
      out.write("\n");
      out.write("    $('#signup').css({\"display\": \"inline\"});\n");
      out.write("    $('.signup-text').html('New to Qisual?');\n");
      out.write("    $('#login').css({\"display\": \"none\"});\n");
      out.write("    $('#signup').css({\"display\": \"inline\"});\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
