package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class insertData_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href= \"QISUAL-LOGO.png\"/>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write(" ");

             int flag=0,flag1=0;
     
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
                  Class.forName("com.mysql.jdbc.Driver");
                String insertUsername="";
                String usernameFromSignUp=request.getParameter("username");
                out.println(usernameFromSignUp);
              
                
                String passwordFromSignUp=request.getParameter("password");
                 out.println(passwordFromSignUp);
                //String confirmPassword=confirm_password.getText();
                String e=request.getParameter("email");
                 out.println(e);
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                  window.alert(\"hiii\");</script>      ");

                
                 Statement st=con.createStatement();
                 
                  ResultSet rs=st.executeQuery("select * from name_password where username='"+usernameFromSignUp+"'");
                   
                    int count=0;
                    
                     while(rs.next()){
                            count++;
                     }
                     st.close();
                   st=con.createStatement();
                  rs=st.executeQuery("select * from name_password where email='"+e+"'");
                     
                    int count1=0;
                    
                    
                     while(rs.next()){
                            count1++;
                     }
                     //st.close();
                    
                    
                        if(count==0 && count1==0 ){
            
                          st.execute("INSERT INTO name_password (username,email,password) VALUES ('"+usernameFromSignUp+"','"+e+"',md5('"+passwordFromSignUp+"'))");
                          
  
                           
      out.write("\n");
      out.write("                          <script>\n");
      out.write("                              window.location=\"signUP.jsp\";\n");
      out.write("                          </script>\n");
      out.write("                           \n");
      out.write("                     ");
}
                     else {
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        window.alert(\"this username or email ID is already exist please enter another username or email ID\");\n");
      out.write("                        window.location=\"login.jsp\";\n");
      out.write("                        \n");
      out.write("                    </script>\n");
      out.write("                     ");
}
                     
                   
    
         
            
      out.write("\n");
      out.write("            \n");
      out.write("                </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
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
