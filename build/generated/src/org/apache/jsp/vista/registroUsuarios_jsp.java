package org.apache.jsp.vista;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.GENERO_USUARIO;
import controlador.GENERO_USUARIO_DAO;
import modelo.ESTADO_USUARIO;
import controlador.ESTADO_USUARIO_DAO;
import modelo.TIPO_DOC_IDENTIFICACION_USUARIO;
import controlador.TIPO_DOC_IDENTIFICACION_USUARIO_DAO;
import modelo.TIPO_USUARIO;
import java.util.ArrayList;
import controlador.TIPO_USUARIO_DAO;
import modelo.USUARIOS;
import java.util.ArrayList;
import controlador.USUARIOS_DAO;

public final class registroUsuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../javascript/jquery-1.11.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../javascript/RegistroUsuarios.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../javascript/validacionCorreo.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../javascript/visualizaOculta.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"../css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Gestión de usuarios</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body onload=\"visualizaOculta('");
      out.print(request.getParameter("Vista"));
      out.write("');\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
 String buscando = request.getParameter("buscando");
            if (buscando == null) {
                buscando = "";
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row justify-content-md-center sticky-top\">\n");
      out.write("            <div class=\"btn-group\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-toggle=\"dropdown\"\n");
      out.write("                        aria-haspopup=\"true\" aria-expanded=\"false\"\n");
      out.write("                        onClick=\"visualizaOculta('Registrar')\">\n");
      out.write("                    Registrar\n");
      out.write("                </button>\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" data-toggle=\"dropdown\"\n");
      out.write("                        aria-haspopup=\"true\" aria-expanded=\"false\"\n");
      out.write("                        onClick=\"visualizaOculta('Listado')\">\n");
      out.write("                    Consultar\n");
      out.write("                </button>\n");
      out.write("                <button type=\"button\" class=\"btn btn-secondary\" ><a href=\"../vista/menu.jsp\" class=\"text-decoration-none\" style=\"color: white\">Volver al inicio</a></button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"Registrar\" class=\"bd-example d-none\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"modal-content\">      \n");
      out.write("                    <center>\n");
      out.write("                        <h1>Registrar Usuarios</h1>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("                    <center>\n");
      out.write("                        <img src=\"../imagenes/agregar-usuario.png\" alt=\"\"/>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("                    <form action=\"/Effective/RegistroUsuarios\" method=\"post\" onsubmit=\"return RegistroUsuarios()\" class=\"col-12\" class=\"row g-3\">\n");
      out.write("                        <div class=\"form-row\"> \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Nombres</h5>\n");
      out.write("                                <input type=\"text\" name=\"nombres_usuario\" class=\"form-control\" placeholder=\"Nombres\" id=\"txt_nombres_usuario_reg\"> \n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Apellidos</h5>\n");
      out.write("                                <input type=\"text\" name=\"apellidos_usuario\" class=\"form-control\" placeholder=\"Apellidos\" id=\"txt_apellidos_usuario_reg\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"form-row\"> \n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Clave</h5>\n");
      out.write("                                <input type=\"password\" name=\"clave\" class=\"form-control\" placeholder=\"clave\" id=\"txt_clave_reg\">\n");
      out.write("                                <br>                                           \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Telefono</h5>\n");
      out.write("                                <input type=\"text\" name=\"telefono_usuario\" class=\"form-control\" placeholder=\"Telefono\" id=\"txt_telefono_usuario_reg\">\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Dirección</h5>\n");
      out.write("                                <input type=\"text\" name=\"direccion_usuario\" class=\"form-control\" placeholder=\"Direccion\" id=\"txt_direccion_usuario_reg\">\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-row\"> \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Correo</h5>\n");
      out.write("                                <div class=\"input-group flex-nowrap\">\n");
      out.write("                                    <span class=\"input-group-text\" id=\"addon-wrapping\">@</span>\n");
      out.write("                                    <input type=\"email\" name=\"correo_usuario\" class=\"form-control\" placeholder=\"Correo\" id=\"txt_correo_usuario_reg\" aria-describedby=\"addon-wrapping\">\n");
      out.write("                                </div>\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">   \n");
      out.write("                                <h5>Identificación</h5>\n");
      out.write("                                <input type=\"text\" name=\"identificacion_usuario\" class=\"form-control\" placeholder=\"Numero identificación\" id=\"txt_identificacion_usuario_reg\">\n");
      out.write("                                <br>\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-row\">   \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdTipoDocumento\"><h5>Tipo Documento</h5></label>\n");
      out.write("                                <input id=\"txt_TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario_reg\" type=\"text\" class=\"form-control d-none\" name= \"TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario\"/> \n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                ");

                                    TIPO_DOC_IDENTIFICACION_USUARIO_DAO tipoDocumento_dao = new TIPO_DOC_IDENTIFICACION_USUARIO_DAO();
                                    ArrayList<TIPO_DOC_IDENTIFICACION_USUARIO> mitipoDocumento = tipoDocumento_dao.ConsultarListadoTipo_doc_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectTipoDocumento' size = '1' >");
                                    out.println("<option onclick='setIdTipoDocumentoo(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (TIPO_DOC_IDENTIFICACION_USUARIO C : mitipoDocumento) {
                                        out.println("<option onclick='setIdTipoDocumento(\"" + C.getId_doc_identificacion_usuario() + "\")'>" + C.getTipo_doc_identificacion_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                
      out.write("\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">  \n");
      out.write("                                <label for=\"IdTipoUsuario\"><h5>Tipo Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_TIPO_USUARIO_id_tipo_usuario_reg\" type=\"text\" class=\"form-control d-none\" name= \"TIPO_USUARIO_id_tipo_usuario\"/> \n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                ");

                                    TIPO_USUARIO_DAO tipoUsuario_dao = new TIPO_USUARIO_DAO();
                                    ArrayList<TIPO_USUARIO> mitipoUsuario = tipoUsuario_dao.ConsultarListarTipo_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectTipoUsuario' size = '1' >");
                                    out.println("<option onclick='setIdTipoUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (TIPO_USUARIO C : mitipoUsuario) {
                                        out.println("<option onclick='setIdTipoUsuario(\"" + C.getId_tipo_usuario() + "\")'>" + C.getDescripcion_tipo_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                
      out.write("\n");
      out.write("                                <br>\n");
      out.write("                            </div>                                    \n");
      out.write("                        </div>                         \n");
      out.write("                        <div class=\"form-row\">                                                                  \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdEstadoUsuario\"><h5>Estado Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_ESTADO_USUARIO_id_estado_usuario_reg\" type=\"text\" class=\"form-control d-none\" name= \"ESTADO_USUARIO_id_estado_usuario\"/> \n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                ");

                                    ESTADO_USUARIO_DAO tipoEstado_dao = new ESTADO_USUARIO_DAO();
                                    ArrayList<ESTADO_USUARIO> mitipoEstado = tipoEstado_dao.ConsultarListarEstado_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectEstadoUsuario' size = '1' >");
                                    out.println("<option onclick='setIdEstadoUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (ESTADO_USUARIO C : mitipoEstado) {
                                        out.println("<option onclick='setIdEstadoUsuario(\"" + C.getId_estado_usuario() + "\")'>" + C.getDescripcion_estado_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                
      out.write("     \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdGeneroUsuario\"><h5>Genero Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_GENERO_USUARIO_id_genero_usuario_reg\" type=\"text\" class=\"form-control d-none\" name= \"GENERO_USUARIO_id_genero_usuario\"/> \n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                                ");

                                    GENERO_USUARIO_DAO tipoGenero_dao = new GENERO_USUARIO_DAO();
                                    ArrayList<GENERO_USUARIO> mitipoGenero = tipoGenero_dao.ConsultarListarGenero_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectGeneroUsuario' size = '1' >");
                                    out.println("<option onclick='setIdGeneroUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (GENERO_USUARIO C : mitipoGenero) {

                                        out.println("<option onclick='setIdGeneroUsuario(\"" + C.getId_genero_usuario() + "\")'>" + C.getDescripcion_genero_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                
      out.write("     \n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"controlRegistro\" class=\"bd-example d-none\">\n");
      out.write("                            <input id=\"txt_bandera_reg\" type=\"text\" class=\"form-control\" name=\"banderaRegistro\">\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <center> \n");
      out.write("                            <button class=\"btn btn-primary me-md-2 botoncito\" type=\"submit\">Registrar</button>\n");
      out.write("                            <button class=\"btn btn-danger me-md-2 botoncito\" type=\"reset\">Limpiar</button>\n");
      out.write("                        </center>\n");
      out.write("                        <br> \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"Actualizar\" class=\"bd-example d-none\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"modal-content\">      \n");
      out.write("                    <center>\n");
      out.write("                        <h1>Actualización Usuarios</h1>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("                    <center>\n");
      out.write("                        <img src=\"../imagenes/agregar-usuario.png\" alt=\"\"/>\n");
      out.write("                    </center>\n");
      out.write("                    <br>\n");
      out.write("                    <form action=\"/Effective/ActualizarUsuario\" method=\"post\" onsubmit=\"return RegistroUsuariosAct()\" class=\"col-12\" class=\"row g-3\">\n");
      out.write("                        <div class=\"form-row\"> \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Nombres</h5>\n");
      out.write("                                <input type=\"text\" name=\"nombres_usuario\" class=\"form-control\" placeholder=\"Nombres\" id=\"txt_nombres_usuario_Act\" value=\"");
      out.print(request.getParameter("Nombres"));
      out.write("\"/> \n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Apellidos</h5>\n");
      out.write("                                <input type=\"text\" name=\"apellidos_usuario\" class=\"form-control\" placeholder=\"Apellidos\" id=\"txt_apellidos_usuario_Act\" value=\"");
      out.print(request.getParameter("Apellidos"));
      out.write("\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"form-row\"> \n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Clave</h5>\n");
      out.write("                                <input type=\"password\" name=\"clave\" class=\"form-control\" placeholder=\"clave\" id=\"txt_clave_Act\" value=\"");
      out.print(request.getParameter("Clave"));
      out.write("\">\n");
      out.write("                                <br>                                           \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Telefono</h5>\n");
      out.write("                                <input type=\"text\" name=\"telefono_usuario\" class=\"form-control\" placeholder=\"Telefono\" id=\"txt_telefono_usuario_Act\" value=\"");
      out.print(request.getParameter("Telefono"));
      out.write("\">\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <h5>Dirección</h5>\n");
      out.write("                                <input type=\"text\" name=\"direccion_usuario\" class=\"form-control\" placeholder=\"Direccion\" id=\"txt_direccion_usuario_Act\" value=\"");
      out.print(request.getParameter("Direccion"));
      out.write("\">\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h5>Correo</h5>\n");
      out.write("                                <div class=\"input-group flex-nowrap\">\n");
      out.write("                                    <span class=\"input-group-text\" id=\"addon-wrapping\">@</span>\n");
      out.write("                                    <input type=\"email\"  name=\"correo_usuario\" class=\"form-control\" placeholder=\"Correo\" id=\"txt_correo_usuario_Act\" aria-describedby=\"addon-wrapping\" value=\"");
      out.print(request.getParameter("Correo"));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">   \n");
      out.write("                                <h5>Identificación</h5>\n");
      out.write("                                <input type=\"text\" name=\"identificacion_usuario\" class=\"form-control\" placeholder=\"Numero identificación\" id=\"txt_identificacion_usuario_Act\" value=\"");
      out.print(request.getParameter("Identificacion"));
      out.write("\">\n");
      out.write("                                <br>\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-row\">   \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdTipoDocumento\"><h5>Tipo Documento</h5></label>\n");
      out.write("                                <input id=\"txt_TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario_Act\" type=\"text\" class=\"form-control\" name= \"TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario\" value=\"");
      out.print(request.getParameter("Tipo_doc"));
      out.write("\"/> \n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">  \n");
      out.write("                                <label for=\"IdTipoUsuario\"><h5>Tipo Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_TIPO_USUARIO_id_tipo_usuario_Act\" type=\"text\" class=\"form-control\" name= \"TIPO_USUARIO_id_tipo_usuario\" value=\"");
      out.print(request.getParameter("Tipo_usuario"));
      out.write("\"/> \n");
      out.write("                                <br> \n");
      out.write("                            </div>                                    \n");
      out.write("                        </div>                         \n");
      out.write("                        <div class=\"form-row\">                                                                  \n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdEstadoUsuario\"><h5>Estado Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_ESTADO_USUARIO_id_estado_usuario_Act\" type=\"text\" class=\"form-control\" name= \"ESTADO_USUARIO_id_estado_usuario\" value=\"");
      out.print(request.getParameter("Estado_usuario"));
      out.write("\"/> \n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label for=\"IdGeneroUsuario\"><h5>Genero Usuario</h5></label>\n");
      out.write("                                <input id=\"txt_GENERO_USUARIO_id_genero_usuario_Act\" type=\"text\" class=\"form-control\" name= \"GENERO_USUARIO_id_genero_usuario\" value=\"");
      out.print(request.getParameter("Genero_usuario"));
      out.write("\"/> \n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"controlRegistro\" class=\"bd-example d-none\">\n");
      out.write("                            <input id=\"txt_bandera_reg\" type=\"text\" class=\"form-control\" name=\"banderaRegistro\">\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <center> \n");
      out.write("                            <button class=\"btn btn-primary me-md-2 botoncito\">Registrar</button>\n");
      out.write("                            <button class=\"btn btn-danger me-md-2 botoncito\" type=\"reset\">Limpiar</button>\n");
      out.write("                        </center>\n");
      out.write("                        <br> \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <form action=\"/Effective/ConsultarUsuario\" method=\"post\">\n");
      out.write("                <div class=\"row justify-content-md-center\">\n");
      out.write("                    <div id=\"Listado\" class=\"bd-example\">\n");
      out.write("\n");
      out.write("                        <div id=\"ControlRegistro\" class=\"input-group\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <input id=\"txt_Id_Consultado\" type=\"text\" class=\"form-control\" name=\"IdConsultado\" value=\"");
      out.print(buscando);
      out.write("\" autofocus placeholder=\"Buscar por Identificaciín, Nombres y Apellidos...\"/>\n");
      out.write("                            <button type=\"button\" class=\"btn btn-info\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\" onclick=\"realizarBusqueda()\">Buscar</button>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("\n");
      out.write("                        <div>\n");
      out.write("                            <h1>Listado Usuarios</h1>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                            <div id=\"Tabla_Usuarios\"></div>\n");
      out.write("\n");
      out.write("                            ");

                                USUARIOS_DAO usuario_dao = new USUARIOS_DAO();
                                ArrayList<USUARIOS> usuarioList = new ArrayList<USUARIOS>();
                                usuarioList = usuario_dao.ConsultarListadoUsuario(buscando, buscando, buscando);
                                out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger'><tr><td>Identificación</td><td>Nombres</td><td>Apellidos</td><td>Clave</td><td>Telefono</td><td>Direccion</td><td>Correo</td><td>Tipo Usuario</td><td>Estado</td><td>Genero</td><td>Tipo_doc</td><td>Actualizar</td><td>Eliminar</td>");

                                for (USUARIOS U : usuarioList) {

                                    out.println("<tr>");
                                    out.println("<td>" + U.getIdentificacion_usuario() + "</td>");
                                    out.println("<td>" + U.getNombres_usuario() + "</td>");
                                    out.println("<td>" + U.getApellidos_usuario() + "</td>");
                                    out.println("<td>" + U.getClave() + "</td>");
                                    out.println("<td>" + U.getTelefono_usuario() + "</td>");
                                    out.println("<td>" + U.getDireccion_usuario() + "</td>");
                                    out.println("<td>" + U.getCorreo_usuario() + "</td>");
                                    out.println("<td>" + U.getTIPO_USUARIO_id_tipo_usuario() + "</td>");
                                    out.println("<td>" + U.getESTADO_USUARIO_id_estado_usuario() + "</td>");
                                    out.println("<td>" + U.getGENERO_USUARIO_id_genero_usuario() + "</td>");
                                    out.println("<td>" + U.getTIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario() + "</td>");

                                    out.println("<td>" + "<input type = 'submit' class='btn btn-primary form-control btn btn-login' value='Actualizar'name='Actualizar'onclick='SetIdConsulta(" + U.getIdentificacion_usuario() + ")'/>" + "</td>");
                                    out.println("<td>" + "<input type = 'submit' class='btn btn-danger form-control btn btn-login' value='Eliminar'name='Eliminar'onclick='SetIdConsulta(" + U.getIdentificacion_usuario() + ")'/>" + "</td>");
                                    out.println("</tr>");

                                }

                                out.println("</table>");

                            
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            body{\n");
      out.write("                background-image: url(../imagenes/imagensitanueve.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 110%;\n");
      out.write("                font-family: 'Acme', sans-serif;\n");
      out.write("                font-size: 20px;\n");
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
      out.write("                opacity: .92;\n");
      out.write("                padding: 30px;\n");
      out.write("                display: flex;\n");
      out.write("                margin-top: 120px;\n");
      out.write("                margin-left: 150px;\n");
      out.write("                border-radius: 3%;\n");
      out.write("                width: 70%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h5{\n");
      out.write("                color: whitesmoke;\n");
      out.write("                font-size: 25px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1{\n");
      out.write("                text-shadow: 1px 1px 5px black;\n");
      out.write("                color: lightsteelblue;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .botoncito{\n");
      out.write("\n");
      out.write("                width: 90px;\n");
      out.write("                height: 50px;\n");
      out.write("                margin: 10px 10px 10px 10px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-danger:hover {\n");
      out.write("                background-color: red;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .btn-primary:hover{\n");
      out.write("\n");
      out.write("                background-color: blue;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("    </body>                            \n");
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
