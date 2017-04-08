package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<br></br>\n");
      out.write("<br></br>\n");
      out.write("<br></br>\n");
      out.write("<center><p>Search By E-mail...</p></center>\n");
      out.write("<form  action=\"_seearch.jsp\" method=\"post\">\n");
      out.write("<center>\n");
      out.write("<input type=\"text\" name=\"email\"/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("\n");
      out.write("\n");
      out.write("<input type=\"submit\" value=\"submit\"/>\n");
      out.write("<input type=\"reset\" value=\"reset\"/>\n");
      out.write("<br>\n");
      out.write("<a href=\"index1.jsp\" target=\"_blank\"><p>Click here to upload your C.V.</p></a>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("<style>\n");
      out.write("input[type=text] {\n");
      out.write("    width: 40%;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 2px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    font-size: 16px;\n");
      out.write("    background-color: white;\n");
      out.write("    \n");
      out.write("    background-position: 10px 10px; \n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding: 12px 20px 12px 40px;\n");
      out.write("     border-radius:40px; \n");
      out.write("}\n");
      out.write("input[type=submit] {\n");
      out.write("    width: 20%;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 5px solid red;\n");
      out.write("    \n");
      out.write("    border-radius:40px; \n");
      out.write("}\n");
      out.write("input[type=reset] {\n");
      out.write("    width: 20%;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 5px solid red;\n");
      out.write("    \n");
      out.write("    border-radius:40px; \n");
      out.write("}\n");
      out.write("p{\n");
      out.write("    color:red;\n");
      out.write("    font-size: 32px;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("body{\n");
      out.write("     background-image: url('light.jpg');\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</body>\n");
      out.write("</html>");
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
