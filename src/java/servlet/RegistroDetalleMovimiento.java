/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controlador.DETALLE_MOVIMIENTO_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DETALLE_MOVIMIENTO;

/**
 *
 * @author AndresSaenz
 */
@WebServlet(name = "RegistroDetalleMovimiento", urlPatterns = {"/RegistroDetalleMovimiento"})
public class RegistroDetalleMovimiento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Cantidad = request.getParameter("cantidad");
        String Precio_productos = request.getParameter("precio_productos");
        String Iva_productos = request.getParameter("iva_productos");
        String Total_productos = request.getParameter("total_productos");
        String PRODUCTOS_id_producto = request.getParameter("PRODUCTOS_id_producto");
        String MOVIMIENTO_id_movimiento = request.getParameter("MOVIMIENTO_id_movimiento");
        String BanderaEstado = request.getParameter("banderaRegistro");
        
        int cantidad = Integer.parseInt(Cantidad);
        double precio_productos = Integer.parseInt(Precio_productos);
        double iva_productos = Integer.parseInt(Iva_productos);
        double total_productos = Integer.parseInt(Total_productos);
        int id_producto = Integer.parseInt(PRODUCTOS_id_producto);
        int id_movimiento = Integer.parseInt(MOVIMIENTO_id_movimiento);
        
        DETALLE_MOVIMIENTO_DAO detalleMovimientoDao = new DETALLE_MOVIMIENTO_DAO();
        DETALLE_MOVIMIENTO mi_detalle_movimiento = new DETALLE_MOVIMIENTO();
        
        mi_detalle_movimiento.setCantidad(cantidad);
        mi_detalle_movimiento.setPrecio_productos(precio_productos);
        mi_detalle_movimiento.setIva_productos(iva_productos);
        mi_detalle_movimiento.setTotal_productos(total_productos);
        mi_detalle_movimiento.setPRODUCTOS_id_producto(id_producto);
        mi_detalle_movimiento.setMOVIMIENTO_id_movimiento(id_movimiento);
        
        System.out.println("El valor es " + BanderaEstado);
        if (BanderaEstado.equals("Correcto")) {
            String respuestaRegistrada = detalleMovimientoDao.AdicionarDetalle_movimiento(mi_detalle_movimiento);
            System.out.println("Res " + respuestaRegistrada);
            System.out.println("Res " + respuestaRegistrada.length());
            if (respuestaRegistrada.length() == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('" + "Detalle movimiento Registrado con éxito." + "');");
                out.println("window.location.href = '/Effective/menu.jsp';");
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                //out.println("alert('" + respuestaRegistrada + "');");
                out.println("alert('" + "Error encontrado: " + respuestaRegistrada.replace("'", "") + "');");
                out.println("window.history.back();");
                out.println("</script>");

            }
        } else {
            System.out.println("El valor no es correcto " + BanderaEstado);
        } 
        
        
           
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
