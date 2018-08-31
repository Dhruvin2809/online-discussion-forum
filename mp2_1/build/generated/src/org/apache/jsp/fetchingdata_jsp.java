package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class fetchingdata_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        ");
 
            
            
            
            try {
            Class.forName("com.mysql.jdbc.Driver");
            
           
        } catch (ClassNotFoundException ex) {
            out.print(ex);
            
        }  
            try{
                int j=0,k=0;
                
            Connection con123=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                
        String passwordLogin="Dhrhuvin";
        
         String usernameLogin=(String)session.getAttribute("username");
         
      out.print(usernameLogin);
        
             PreparedStatement ps= con123.prepareStatement( "SELECT ID FROM name_password WHERE username='"+usernameLogin+"'");
         ResultSet rs=ps.executeQuery( "SELECT ID from name_password WHERE username='"+usernameLogin+"'");
          
            while(rs.next()){
              k=rs.getInt("ID");
            }
            
          //  out.print(k);
              
         
         ps.close();
         rs.close();
       
         
         
        try {
            
            ps = con123.prepareStatement( "SELECT ID FROM name_password WHERE password='"+passwordLogin+"'");
            rs=ps.executeQuery( "SELECT ID from name_password WHERE password=md5('"+passwordLogin+"')");
         
            while(rs.next()){
              j=rs.getInt("ID");
            }
           // out.println(j);
              
         
            ps.close();
            rs.close();
       
         
            if( k==j && (k!=0 || j!=0) ){ 
                 session.setAttribute("userid",k);
          
      out.write("\n");
      out.write("          <script>\n");
      out.write("          // window.location=\"home_page.jsp\";\n");
      out.write("          </script>\n");
      out.write("          ");

        }
        else if(k!=j || k==0 || j==0){
            
      out.write("\n");
      out.write("             <script>\n");
      out.write("            window.alert(\"username or password is incorrect\");\n");
      out.write("           // window.location=\"login.jsp\";\n");
      out.write("          </script>\n");
      out.write("            \n");
      out.write("         ");

        }
            
        } catch (SQLException ex) {
            out.print(ex);
        }
        
         }catch(Exception e){
            out.println(e);
        }
       
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
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
