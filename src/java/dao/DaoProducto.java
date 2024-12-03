package dao;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Categoria;
import model.Marca;
import model.Producto;

public class DaoProducto implements IDao<Producto> {

    final String SELECCIONAR = "SELECT * FROM producto LEFT JOIN marca ON producto.id_marca = marca.id_marca LEFT JOIN categoria ON producto.id_categoria = categoria.id_categoria";
    Marca marca = new Marca();
    Categoria categoria = new Categoria();

    @Override
    public int agregar(Producto o) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int editar(Producto o) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int eliminar(Producto o) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Producto> seleccionar() {
        List<Producto> productos = new ArrayList<>();
        Producto prod;

        try {
            PreparedStatement st = null;

            Conexion conexion = new Conexion();
            Connection connection = conexion.getConnection();
            st = connection.prepareStatement(SELECCIONAR);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Marca marca = new Marca();
                Categoria categoria = new Categoria();
                
                prod = new Producto();

                prod.setId(rs.getInt("id"));
                prod.setNombre(rs.getString("nombre"));
                
                marca.setId_marca(rs.getInt("id_marca")); // Asigna el ID a la marca
                marca.setNombre_marca(rs.getString("nombre_marca")); // Asigna el ID a la marca
                prod.setId_marca(marca);
                
                prod.setPrecio(rs.getInt("precio"));
                prod.setDescripcion(rs.getString("descripcion"));
                
                categoria.setId_categoria(rs.getInt("id_categoria")); // Asigna el ID a la categoría
                categoria.setNombre_cat(rs.getString("nombre_cat"));
                prod.setId_categoria(categoria);
                
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImagen(rs.getString("imagen"));
                prod.setStock(rs.getShort("stock"));
                prod.setCapacidad(rs.getString("capacidad"));
                prod.setCod_producto(rs.getString("cod_producto"));

                productos.add(prod);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return productos;
    }

    @Override
    public Producto seleccionarUno(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
