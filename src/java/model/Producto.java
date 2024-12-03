
package model;


public class Producto {
    private int id;
    private String nombre;
    private Marca id_marca;
    private int precio;
    private String descripcion;
    private Categoria id_categoria;
    private String dimensiones;
    private String imagen;
    private short stock;
    private String capacidad;
    private String cod_producto;

    public Producto() {
    }

    public Producto(int id, String nombre, Marca id_marca, int precio, String descripcion, Categoria id_categoria, String dimensiones, String imagen, short stock, String capacidad, String cod_producto) {
        this.id = id;
        this.nombre = nombre;
        this.id_marca = id_marca;
        this.precio = precio;
        this.descripcion = descripcion;
        this.id_categoria = id_categoria;
        this.dimensiones = dimensiones;
        this.imagen = imagen;
        this.stock = stock;
        this.capacidad = capacidad;
        this.cod_producto = cod_producto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Marca getId_marca() {
        return id_marca;
    }

    public void setId_marca(Marca id_marca) {
        this.id_marca = id_marca;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Categoria getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(Categoria id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getDimensiones() {
        return dimensiones;
    }

    public void setDimensiones(String dimensiones) {
        this.dimensiones = dimensiones;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public short getStock() {
        return stock;
    }

    public void setStock(short stock) {
        this.stock = stock;
    }

    public String getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(String capacidad) {
        this.capacidad = capacidad;
    }

    public String getCod_producto() {
        return cod_producto;
    }

    public void setCod_producto(String cod_producto) {
        this.cod_producto = cod_producto;
    }

    
}
