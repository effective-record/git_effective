package modelo;

public class MOVIMIENTO {
    
    
    
    
    private int id_movimiento;
    private String numero_de_documento;
    private String fecha;
    private int subtotal;
    private int total_iva;
    private int descuento;
    private int total_factura;
    private int FORMAS_DE_PAGO_id_forma_de_pago;
    private int TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable;
    private int USUARIOS_id_usuario;

   


    public int getId_movimiento() {
        return id_movimiento;
    }

    public void setId_movimiento(int id_movimiento) {
        this.id_movimiento = id_movimiento;
    }

    public String getNumero_de_documento() {
        return numero_de_documento;
    }

    public void setNumero_de_documento(String numero_de_documento) {
        this.numero_de_documento = numero_de_documento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(int subtotal) {
        this.subtotal = subtotal;
    }

    public int getTotal_iva() {
        return total_iva;
    }

    public void setTotal_iva(int total_iva) {
        this.total_iva = total_iva;
    }

    public int getDescuento() {
        return descuento;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public int getTotal_factura() {
        return total_factura;
    }

    public void setTotal_factura(int total_factura) {
        this.total_factura = total_factura;
    }

    public int getFORMAS_DE_PAGO_id_forma_de_pago() {
        return FORMAS_DE_PAGO_id_forma_de_pago;
    }

    public void setFORMAS_DE_PAGO_id_forma_de_pago(int FORMAS_DE_PAGO_id_forma_de_pago) {
        this.FORMAS_DE_PAGO_id_forma_de_pago = FORMAS_DE_PAGO_id_forma_de_pago;
    }

    public int getTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable() {
        return TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable;
    }

    public void setTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable(int TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable) {
        this.TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable = TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable;
    }

    public int getUSUARIOS_id_usuario() {
        return USUARIOS_id_usuario;
    }

    public void setUSUARIOS_id_usuario(int USUARIOS_id_usuario) {
        this.USUARIOS_id_usuario = USUARIOS_id_usuario;
    }
    
    
}
