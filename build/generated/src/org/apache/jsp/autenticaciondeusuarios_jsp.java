package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class autenticaciondeusuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"javascript/jquery-1.11.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Autenticación usuario</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <center>\n");
      out.write("                        <h1>Autenticación de usuarios</h1>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("                    <center> \n");
      out.write("                        <img src=\"imagenes/iniciar-sesion.png\" alt=\"\"/>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form action=\"/Effective/IniciarSesion\" method=\"post\" class=\"cold-12\">\n");
      out.write("                        <h5>N°identificación</h5>\n");
      out.write("                        <input type=\"text\" name=\"identificacion\" class=\"form-control\" placeholder=\"Ingrese su número de identificación\">\n");
      out.write("                        <br>\n");
      out.write("                        <h5>Clave</h5>\n");
      out.write("                        <input type=\"password\" name=\"clave\" class=\"form-control\" placeholder=\"Ingrese su clave\"> \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <br>\n");
      out.write("                            <center>\n");
      out.write("                                <button class=\"btn btn-success\" >Ingresar</button>\n");
      out.write("\n");
      out.write("                            </center>  \n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <label>\n");
      out.write("                            Si usted ya se ha registrado anteriormente digite su número de identificación y clave y presione ingresar, caso\n");
      out.write("                            contrario debe antes registrarse presionando el botón de <a href=\"../registrarusuarios.jsp\">Registrase.</a>\n");
      out.write("                        </label>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-image: url(imagenes/imagencuatro.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 120%;\n");
      out.write("                font-family: Gungsuh;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1{\n");
      out.write("\n");
      out.write("                color: whitesmoke; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .modal-content{\n");
      out.write("\n");
      out.write("                background-color: #494f54;\n");
      out.write("                opacity: .95;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h5{\n");
      out.write("                color: whitesmoke;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1{\n");
      out.write("                text-shadow: 1px 1px 5px black;\n");
      out.write("                color: #000;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            label{\n");
      out.write("                \n");
      out.write("                 color: whitesmoke;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>    \n");
      out.write("\n");
      out.write("    </body>\n");
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
