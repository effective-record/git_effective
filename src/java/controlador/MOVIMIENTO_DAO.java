
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.MOVIMIENTO;


public class MOVIMIENTO_DAO {
    
    public String Adicionarmovimiento(MOVIMIENTO movimiento) {

        String miRespuesta;
        conexion miConexion = new conexion();
        Connection nuevaCon;
        nuevaCon = miConexion.getConn();

        PreparedStatement sentencia;

        try {

            String Query = "Insert into MOVIMIENTO (numero_de_documento,fecha,subtotal,total_iva,descuento,total_factura,FORMAS_DE_PAGO_id_forma_de_pago,TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable,USUARIOS_id_usuario)" + "values (?,?,?,?,?,?,?,?,?);";
            sentencia = nuevaCon.prepareStatement(Query);
            sentencia.setString(1, movimiento.getNumero_de_documento());
            sentencia.setString(2, movimiento.getFecha());
            sentencia.setInt(3, movimiento.getSubtotal());
            sentencia.setInt(4, movimiento.getTotal_iva());
            sentencia.setInt(5, movimiento.getDescuento());
            sentencia.setInt(6, movimiento.getTotal_factura());
            sentencia.setInt(7, movimiento.getFORMAS_DE_PAGO_id_forma_de_pago());
            sentencia.setInt(8, movimiento.getTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable());
            sentencia.setInt(9, movimiento.getUSUARIOS_id_usuario());
            sentencia.execute();
            miRespuesta = "";

        } catch (Exception ex) {

            miRespuesta = ex.getMessage();
            System.out.println("Ocurrio un error en AdicionarDetalle_Movimiento\n" + miRespuesta);

        }

        return miRespuesta;

    }
    public String ModificarMovimiento(MOVIMIENTO Movimiento) {

        String miRespuesta;
        conexion miConexion = new conexion();
        Connection nuevaCon;
        nuevaCon = miConexion.getConn();

        PreparedStatement sentencia;

        try {

            String Query = "update MOVIMIENTO set numero_de_documento=?,fecha=?,subtotal=?,total_iva=?,descuento=?,total_factura=?,FORMAS_DE_PAGO_id_forma_de_pago=?,TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable=?,USUARIOS_id_usuario=? where numero_de_documento=?";
            sentencia = nuevaCon.prepareStatement(Query);
            sentencia.setString(1, Movimiento.getNumero_de_documento());
            sentencia.setString(2, Movimiento.getFecha());
            sentencia.setInt(3, Movimiento.getSubtotal());
            sentencia.setInt(4, Movimiento.getTotal_iva());
            sentencia.setInt(5, Movimiento.getDescuento());
            sentencia.setInt(6, Movimiento.getTotal_factura());
            sentencia.setInt(7, Movimiento.getFORMAS_DE_PAGO_id_forma_de_pago());
            sentencia.setInt(8, Movimiento.getTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable());
            sentencia.setInt(9, Movimiento.getUSUARIOS_id_usuario());
            sentencia.setString(10, Movimiento.getNumero_de_documento());
            sentencia.executeUpdate();
            miRespuesta = "";

        } catch (Exception ex) {

            miRespuesta = ex.getMessage();
            System.out.println("Ocurrio un error en ModificarEstado_usuario_ESTADO_USUARIO_DAO_MODIFICAR\n" + miRespuesta);

        }

        return miRespuesta;

    }
    public MOVIMIENTO ConsultarMovimiento(String numero_de_documento) {

        MOVIMIENTO mimoviento = null;

        conexion miConexion = new conexion();
        Connection nuevaCon;
        nuevaCon = miConexion.getConn();

        try {

            Statement sentencia = nuevaCon.createStatement();

            String Query = "select id_movimiento,numero_de_documento,fecha,subtotal,descuento,total_iva,total_factura,FORMAS_DE_PAGO_id_forma_de_pago,TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable,USUARIOS_id_usuario from MOVIMIENTO where numero_de_documento = " + numero_de_documento; 
            ResultSet rs = sentencia.executeQuery(Query);

            while (rs.next()) {

                mimoviento = new MOVIMIENTO();
                mimoviento.setId_movimiento(rs.getInt(1));
                mimoviento.setNumero_de_documento(rs.getString(2));
                mimoviento.setFecha(rs.getString(3));
                mimoviento.setSubtotal(rs.getInt(4));
                mimoviento.setTotal_iva(rs.getInt(5));
                mimoviento.setDescuento(rs.getInt(6));
                mimoviento.setTotal_factura(rs.getInt(7));
                mimoviento.setFORMAS_DE_PAGO_id_forma_de_pago(rs.getInt(8));
                mimoviento.setTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable(rs.getInt(9));
                mimoviento.setUSUARIOS_id_usuario(rs.getInt(10));
                

            }
            return mimoviento;

        } catch (Exception ex) {

            System.out.println("ocurrio un problema en la consultaConsultarMovimiento_MOVIMIENTO_DAO_CONSULTAR\n" + ex.getMessage());
            return mimoviento;

        }

    }
    public ArrayList <MOVIMIENTO> ConsultarListadoMovimiento (String numero_de_documento,String fecha){
        ArrayList<MOVIMIENTO>mi_lista_movimiento =new ArrayList<MOVIMIENTO>();
        MOVIMIENTO mi_movimiento;
        
        conexion miConexion = new conexion();
        Connection nuevaCon;
        nuevaCon = miConexion.getConn();
        
        
                System.out.println("Buscando Parametro" + numero_de_documento);
                
     try{
       Statement sentencia= nuevaCon.createStatement(); 
       String Query =" select id_movimiento,numero_de_documento,fecha, "
               + " subtotal,total_iva,descuento,total_factura, "
               + " FORMAS_DE_PAGO_id_forma_de_pago,TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable,USUARIOS_id_usuario "
               + " from MOVIMIENTO "
               + " where numero_de_documento like '%" + numero_de_documento + "%' "
               + " or (fecha) like ('%" + fecha + "%') ORDER BY numero_de_documento; "; 
       ResultSet rs= sentencia.executeQuery(Query);
       
       while (rs.next()){
           
           mi_movimiento =new  MOVIMIENTO();
           mi_movimiento.setId_movimiento(rs.getInt(1));
           mi_movimiento.setNumero_de_documento(rs.getString(2));
           mi_movimiento.setFecha(rs.getString(3));
           mi_movimiento.setSubtotal(rs.getInt(4));
           mi_movimiento.setTotal_iva(rs.getInt(5));
           mi_movimiento.setDescuento(rs.getInt(6));
           mi_movimiento.setTotal_factura(rs.getInt(7));
           mi_movimiento.setTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable(rs.getInt(8));
           mi_movimiento.setFORMAS_DE_PAGO_id_forma_de_pago(rs.getInt(9));
           mi_movimiento.setUSUARIOS_id_usuario(rs.getInt(10));
           mi_lista_movimiento.add(mi_movimiento);
           
                   }
       return mi_lista_movimiento;
       
     }catch (Exception ex){
         System.out.println("Error en la consulta de movimiento " +ex.getMessage());
         return mi_lista_movimiento;
     }
    }
    public String EliminarMovimiento (MOVIMIENTO movimiento ) {

        String miRespuesta;

        conexion miConexion = new conexion();
        Connection nuevaCon;
        nuevaCon = miConexion.getConn();

        PreparedStatement sentencia;

        try {

            String Query = "delete from MOVIMIENTO where numero_de_documento = ? and fecha = ? ;";
            sentencia = nuevaCon.prepareStatement(Query);
            sentencia.setString(1, movimiento.getNumero_de_documento());
            sentencia.setString(2, movimiento.getFecha());
            sentencia.execute();
            miRespuesta = "";

        } catch (Exception ex) {

            miRespuesta = ex.getMessage();
            System.err.println("Ocurrio un error en MOVIMIENTO_DAO.EliminarMovimiento" + ex.getMessage());
        }
        return miRespuesta;

    }

}

    



    



       

