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
    final String SELECCIONARUNO = "SELECT * FROM producto WHERE id = ?";

    final String INSERTAR = "INSERT INTO producto (nombre, id_marca, precio, "
            + "                                    descripcion, id_categoria, "
            + "                                    dimensiones, imagen, stock, "
            + "                                    capacidad, cod_producto) VALUES (?,?,?,?,?,?,?,?,?,?)";

    final String EDITAR = "UPDATE producto SET nombre=?, id_marca=?, precio=?, descripcion=?,"
            + "                                id_categoria=?, dimensiones=?, imagen=?, stock=?, capacidad=?, cod_producto=?"
            + "                                WHERE id = ?";

    final String ELIMINAR = "DELETE FROM producto WHERE id = ?";

    Marca marca = new Marca();
    Categoria categoria = new Categoria();

    @Override
    public int agregar(Producto o) {
        try {
            PreparedStatement st = null;

            Conexion conexion = new Conexion();
            Connection connection = conexion.getConnection();
            st = connection.prepareStatement(INSERTAR);

            st.setString(1, o.getNombre());
            st.setInt(2, o.getId_marca().getId_marca());
            st.setInt(3, o.getPrecio());
            st.setString(4, o.getDescripcion());
            st.setInt(5, o.getId_categoria().getId_categoria());
            st.setString(6, o.getDimensiones());
            st.setString(7, o.getImagen());
            st.setInt(8, o.getStock());
            st.setString(9, o.getCapacidad());
            st.setString(10, o.getCod_producto());

            return st.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        return 0;
    }

    @Override
    public int editar(Producto o) {
        try {
            PreparedStatement st = null;

            Conexion conexion = new Conexion();
            Connection connection = conexion.getConnection();
            st = connection.prepareStatement(EDITAR);

            st.setString(1, o.getNombre());
            st.setInt(2, o.getId_marca().getId_marca());
            st.setInt(3, o.getPrecio());
            st.setString(4, o.getDescripcion());
            st.setInt(5, o.getId_categoria().getId_categoria());
            st.setString(6, o.getDimensiones());
            st.setString(7, o.getImagen());
            st.setInt(8, o.getStock());
            st.setString(9, o.getCapacidad());
            st.setString(10, o.getCod_producto());
            st.setInt(11, o.getId());

            return st.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        return 0;
    }

    @Override
    public int eliminar(Producto o) {
        try {
            PreparedStatement st = null;

            Conexion conexion = new Conexion();
            Connection connection = conexion.getConnection();
            st = connection.prepareStatement(ELIMINAR);

            st.setInt(1, o.getId());

            return st.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        return 0;
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
        Producto producto = new Producto();

        try {
            PreparedStatement st = null;

            Conexion conexion = new Conexion();
            Connection connection = conexion.getConnection();
            st = connection.prepareStatement(SELECCIONARUNO);
            
            st.setInt(1, id);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Marca marca = new Marca();
                Categoria categoria = new Categoria();

                producto.setId(rs.getInt("id"));
                producto.setNombre(rs.getString("nombre"));

                marca.setId_marca(rs.getInt("id_marca")); // Asigna el ID a la marca
                marca.setNombre_marca(rs.getString("nombre_marca")); // Asigna el ID a la marca
                producto.setId_marca(marca);

                producto.setPrecio(rs.getInt("precio"));
                producto.setDescripcion(rs.getString("descripcion"));

                categoria.setId_categoria(rs.getInt("id_categoria")); // Asigna el ID a la categoría
                categoria.setNombre_cat(rs.getString("nombre_cat"));
                producto.setId_categoria(categoria);

                producto.setDimensiones(rs.getString("dimensiones"));
                producto.setImagen(rs.getString("imagen"));
                producto.setStock(rs.getShort("stock"));
                producto.setCapacidad(rs.getString("capacidad"));
                producto.setCod_producto(rs.getString("cod_producto"));

            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return producto;
    }

}
