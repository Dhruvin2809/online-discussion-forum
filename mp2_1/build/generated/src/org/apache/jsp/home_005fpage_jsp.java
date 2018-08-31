package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class home_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/css/style.css");
  }

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

      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home page</title>\n");
      out.write("       <link rel=\"icon\" type=\"image/png\" href= \"images/QISUAL-LOGO.png\"/>\n");
      out.write("       <style type=\"text/css\">  \n");
      out.write("    ");
      out.write("/* =============================================================================\r\n");
      out.write("   HTML5 CSS Reset Minified - Eric Meyer\r\n");
      out.write("   ========================================================================== */\r\n");
      out.write("\r\n");
      out.write("html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,abbr,address,cite,code,del,dfn,em,img,ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,figcaption,figure,footer,header,hgroup,menu,nav,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;outline:0;font-size:100%;vertical-align:baseline;background:transparent}\r\n");
      out.write("body{line-height:1}\r\n");
      out.write("article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}\r\n");
      out.write("nav ul{list-style:none}\r\n");
      out.write("blockquote,q{quotes:none}\r\n");
      out.write("blockquote:before,blockquote:after,q:before,q:after{content:none}\r\n");
      out.write("a{margin:0;padding:0;font-size:100%;vertical-align:baseline;background:transparent;text-decoration:none}\r\n");
      out.write("mark{background-color:#ff9;color:#000;font-style:italic;font-weight:bold}\r\n");
      out.write("del{text-decoration:line-through}\r\n");
      out.write("abbr[title],dfn[title]{border-bottom:1px dotted;cursor:help}\r\n");
      out.write("table{border-collapse:collapse;border-spacing:0}\r\n");
      out.write("hr{display:block;height:1px;border:0;border-top:1px solid #ccc;margin:1em 0;padding:0}\r\n");
      out.write("input,select{vertical-align:middle}\r\n");
      out.write("li{list-style:none}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* =============================================================================\r\n");
      out.write("   My CSS\r\n");
      out.write("   ========================================================================== */\r\n");
      out.write("\r\n");
      out.write("/* ---- base ---- */\r\n");
      out.write("\r\n");
      out.write("html,body{ \r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\theight:100%;\r\n");
      out.write("\tbackground:#111;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("html{\r\n");
      out.write("  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("  font:normal 75% Arial, Helvetica, sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("canvas{\r\n");
      out.write("  display:block;\r\n");
      out.write("  vertical-align:bottom;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* ---- particles.js container ---- */\r\n");
      out.write("\r\n");
      out.write("#particles-js{\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("   filter:hue-rotate(0deg);\r\n");
      out.write("  background:linear-gradient(45deg,#0f8,#08f);\r\n");
      out.write("  animation:hue 30000ms infinite linear;\r\n");
      out.write("  /*background-image: url('');*/\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("  background-position: 50% 50%;\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/*@keyframes hue{\r\n");
      out.write("  0%{filter: hue-rotate(0deg);}\r\n");
      out.write("  100%{filter:hue-rotate(360deg);}\r\n");
      out.write("  \r\n");
      out.write("}*/\r\n");
      out.write("\r\n");
      out.write(".center-container {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\tleft: 0;\r\n");
      out.write("\tright:0;\r\n");
      out.write("\ttop: 10%;\r\n");
      out.write("\tbottom: 0;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tpadding-top: 2%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".title {\r\n");
      out.write("\tmargin-bottom: 10px;\r\n");
      out.write("\tfont-size: 5.6em;\r\n");
      out.write("\tletter-spacing: 1px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".half-hr {\r\n");
      out.write("\tborder-top: 2px solid white;\r\n");
      out.write("\twidth: 25%;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tleft: 38%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-form {\r\n");
      out.write("\ttext-align: left;\r\n");
      out.write("\twidth: 30%;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tleft: 33%;\r\n");
      out.write("\tpadding: 30px 30px;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("\tbackground: #252525;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-title\r\n");
      out.write("{\r\n");
      out.write("\tfont-size: 19px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-form form {\r\n");
      out.write("\tpadding-top: 40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-form form input {\r\n");
      out.write("\tpadding: 11px 10px;\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("\twidth: 90%;\r\n");
      out.write("\tmargin-bottom: 10px;\r\n");
      out.write("\tborder-radius: 4px;\r\n");
      out.write("}\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("#submit{\r\n");
      out.write("\twidth: 96%;\r\n");
      out.write("\tbackground-color: blue;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\tmargin-top: 14px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("#submit:hover {\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("#s:hover {\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("}\r\n");
      out.write(".signup a {\r\n");
      out.write("\tcolor: #18d241;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-with {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\ttop: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#submita,#email,#cpass,#login{\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".signup-link {\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#signup-field {\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#signup-field2 {\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".signup-with-box {\r\n");
      out.write("\tmargin-left: 50px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".signup-with-box {\r\n");
      out.write("\tdisplay: inline;\r\n");
      out.write("\tmargin-right: 20px;\r\n");
      out.write("\tmargin-top: 20px;\r\n");
      out.write("\tborder: 1px solid white;\r\n");
      out.write("\tpadding: 8px 20px;\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-options {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\ttop: 35px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-options li:nth-child(1){\r\n");
      out.write("\tmargin-left: 30px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-options li{\r\n");
      out.write("\tdisplay: inline;\r\n");
      out.write("\tmargin-right: 20px;\r\n");
      out.write("\tborder: 1px solid black;\r\n");
      out.write("\tbackground: #252525;\r\n");
      out.write("\tpadding: 10px 21px;\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".fa-icon {\r\n");
      out.write("\tpadding-right: 6px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-options li a { \r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write(".a{\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("}\r\n");
      out.write(".b{\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\theight:80px;\r\n");
      out.write("\tbackground-color:#ffd633;\r\n");
      out.write("\tborder:1px solid silver;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write(".c{\r\n");
      out.write("\twidth:175px;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\tborder:solid #ffd633 ;\r\n");
      out.write("\theight:75px;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write(".d{\r\n");
      out.write("\tfont-size:60px;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tfont-family:Arial, Helvetica, sans-serif;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\tmargin-top:-1px;\r\n");
      out.write("\tmargin-left:70px\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("\t\tcolor:red;\r\n");
      out.write("\t\tmargin-top:30px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write(".e{\r\n");
      out.write("\tmargin-top:40px;\r\n");
      out.write("\tpadding-left:30px;\r\n");
      out.write("\tcolor:red;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("}\r\n");
      out.write(".f{\r\n");
      out.write("\theight:500px;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\t\r\n");
      out.write("\twidth:20%;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".g{\r\n");
      out.write("\tmargin-top:30px;\r\n");
      out.write("\tfloat:left;\r\n");
      out.write("\tmargin-left:50px;\r\n");
      out.write("\tpadding-right:-10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".h{\r\n");
      out.write("\tmargin-left:-50px;\r\n");
      out.write("}\r\n");
      out.write(".i{\r\n");
      out.write("\tfloat:right;\r\n");
      out.write("\tmargin-top:40px;\r\n");
      out.write("\tcolor:red;\r\n");
      out.write("\tmargin-right:10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("     body{\n");
      out.write("                font-family:Arial;\n");
      out.write("                font-size:.93em;\n");
      out.write("            }\n");
      out.write("            #content-box{\n");
      out.write("                margin-left:250px;\n");
      out.write("                background-color:white;\n");
      out.write("                overflow:scroll;\n");
      out.write("                width:760px;\n");
      out.write("            }\n");
      out.write("            #content-box p{\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("    </style>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $contentLoadTriggered = false;\n");
      out.write("                $(\"#content-box\").scroll(function(){\n");
      out.write("                    if($(\"#content-box\").scrollTop() >= ($(\"#content-wrapper\").height() - $(\"#content-box\").height()) && $contentLoadTriggered == false)\n");
      out.write("                    {\n");
      out.write("                        $contentLoadTriggered = true;\n");
      out.write("                        $.get(\"infinitContentServlet\", function(data){\n");
      out.write("                            $(\"#content-wrapper\").append(data);\n");
      out.write("                            $contentLoadTriggered = false;\n");
      out.write("                        });\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("   \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <form name=\"check\" action=\"enterQuestion.jsp\" method=\"post\">\n");
      out.write("           \n");
      out.write("    \n");
      out.write("        <div class=\"a\">\n");
      out.write("            <div class=\"b\">\n");
      out.write("                <div class=\"c\"></div>\n");
      out.write("                <div>  \n");
      out.write("                    <a href=\"home_page.jsp\"><h1 class=\"d\"> QISUAL </h1></a>\n");
      out.write("               </div>\n");
      out.write("                \n");
      out.write("                <div> \n");
      out.write("                   \n");
      out.write("                  <div> <h3 class=\"i\">Hello user <a href=\"signUP_Page.jsp\" style=\"text-decoration:none\" onclick=\"f()\"> Log Out</a></h3></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"float:left;width: 300px;margin-left: -470px;margin-top: 50px;\"> <a href=\"myQuestions.jsp\" style=\"text-decoration:none;\"> <h3 style=\"text-decoration: underline;color:orange;font-size: 30px\">My questions</h3>  </a></div>\n");
      out.write("        <div>\n");
      out.write("         <div class=\"g\" style=\"margin-left:250px\"> \n");
      out.write("              \n");
      out.write("                <textarea placeholder=\"Drop your question here\" style=\"border:none;margin-right:15px;font-size: 30px\" id=\"q\" name=\"q\" rows=\"1\" cols=\"40\"></textarea>\n");
      out.write("                <h3></h3>\n");
      out.write("                <input type=\"file\" name=\"add-image\" id=\"file\" accept=\"image/*\"  />\n");
      out.write("                <input type=\"submit\" onclick=\"return func()\" value=\"POST YOUR QUESTION \" style=\"cursor:pointer;background-color:orange\" name=\"submit\" />\n");
      out.write("                <hr>\n");
      out.write("         </div>\n");
      out.write("            <div id=\"content-box\">\n");
      out.write("            <div id=\"content-wrapper\">\n");
      out.write("                ");

                   try {
            Class.forName("com.mysql.jdbc.Driver");
            /* Set the Nimbus look and feel */
        } catch (ClassNotFoundException ex) {
           
        }
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                    
        try {
           
            String usernameForQuestion=null;
            String k=null;
            String qid=null;
            int count2=0;
           int uid;
            int count=1;    
            PreparedStatement ps= con.prepareStatement( "SELECT * FROM question ORDER BY questionID DESC");
           
         ResultSet rs=ps.executeQuery( "SELECT * from question ORDER BY questionID DESC");
          PreparedStatement ps1;
           
         ResultSet rs1;
        
         
         while(rs.next())
         {
             count2=0;
              k=rs.getString("questionText");
              qid=rs.getString("questionID");
              uid=rs.getInt("userId");
              ps1=con.prepareStatement("select username from name_password where ID='"+uid+"'");
              rs1=ps1.executeQuery("select username from name_password where ID='"+uid+"'");
              while(rs1.next()){
             usernameForQuestion=rs1.getString("username");
              }
              ps1=con.prepareStatement("select answerId from answer where questionID='"+qid+"'");
              rs1=ps1.executeQuery("select answerId from answer where questionID='"+qid+"'");
              while(rs1.next()){
             count2++;
              }
              
              
      out.write("\n");
      out.write("              <p style=\"font-size:30px;margin:30px 0px 0px 0px\"> <span><img src=\"images/index.png\" style=\"height:30px;width:30px\" alt=\"no image\"></span> <a style=\"text-decoration:none ;color:orange;\" href=\"writeAnswer.jsp?value= ");
      out.print(qid);
      out.write("\"> ");
 out.println(k); 
      out.write(" </a><span style=\"font-size:10px\">posted by ");
      out.print(usernameForQuestion);
      out.write("</span> </p>\n");
      out.write("             ");

             if(count2==0){
                 
      out.write("\n");
      out.write("              <span style=\"color:black;\">No answer yet</span>\n");
      out.write("              ");
    
             }
             if(count2!=0){
                 
      out.write("\n");
      out.write("               <span style=\"color:black;\">");
      out.print(count2);
      out.write(" answers are available</span>\n");
      out.write("              ");

             }
             
             
      out.write("\n");
      out.write("              \n");
      out.write("             \n");
      out.write("             ");

            
             count++;
             
              
         }
         if(count==1)
         {
             
      out.write("\n");
      out.write("             <p style=\"font-size:50px\"><span>No question to display </span>\n");
      out.write("              ");

         }
         ps.close();
         rs.close();
        
        }
        catch (SQLException ex) {
        }    
                    
            
                
      out.write("\n");
      out.write(" </div>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("  </form>  \n");
      out.write("            \n");
      out.write("       \n");
      out.write("        <script> \n");
      out.write("            function f(){\n");
      out.write("                var hi= confirm(\"Do you really want to log out?\");\n");
      out.write("    if (hi===true){\n");
      out.write("        window.location=\"signUP.java\";\n");
      out.write("    }\n");
      out.write("    if(hi!==true){\n");
      out.write("        window.location=\"home_page.jsp\";\n");
      out.write("    }\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("            <script>\n");
      out.write("        function func() {\n");
      out.write("           var ques=document.getElementById(\"q\").value;\n");
      out.write("           ques=ques.trim();\n");
      out.write("                    if(ques===\"\")\n");
      out.write("                    {\n");
      out.write("                        alert(\"please enter the question\");\n");
      out.write("                        return false;\n");
      out.write("                       \n");
      out.write("                    }\n");
      out.write("                   if(ques!==\"\"){\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("        <div style=\"margin-top:50px\" class=\"b\" >\n");
      out.write("            \n");
      out.write("            <h3 style=\"text-align: center;color:white;\">COPYRIGHT 2018 QISUAL ALL RIGHTS RESERVED</h3>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
