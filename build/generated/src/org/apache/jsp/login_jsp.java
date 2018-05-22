package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");

    if( !(request.getParameter("nickname")+"").equals("") && !(request.getParameter("password")+"").equals("")){
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/spotynovi", "root", "vertrigo");
        String nickname = request.getParameter("nickname");         
        String password = request.getParameter("password"); 
        boolean enter = false;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT password FROM utenti WHERE nickname='"+nickname+"' ");
        
        while(rs.next())
        {   
            enter = true;
            String passwordDB = rs.getString("password");
            if(passwordDB.equals(password))
            {
                response.sendRedirect("index.jsp");
                
            }
            else
            {
                
      out.write("<h1>password errata</h1>");

            }
        }
        if(!enter)
        {
            
      out.write("<h1>nome utente errato</h1>");

        }
        
    }


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>SpotyNovi</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"GET\" action=\"login.jsp\">\n");
      out.write("            nickname <input type=\"text\" name=\"nickname\"> \n");
      out.write("            password <input type=\"text\" name=\"password\">\n");
      out.write("            <input type=\"submit\" name=\"login\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        <a href=\"registrazione.jsp\">registrati</a>\n");
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
