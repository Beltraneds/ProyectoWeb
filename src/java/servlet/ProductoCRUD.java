package servlet;

import dao.DaoProducto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Producto;

public class ProductoCRUD extends HttpServlet {
    

    DaoProducto daoProducto = new DaoProducto();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null && accion.equals("listar")) {
            List<Producto> productos = daoProducto.seleccionar();
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("listar.jsp").forward(request, response);

        } else {
            List<Producto> productos = daoProducto.seleccionar();
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*String accion = request.getParameter("accion");

        if (accion.equals("agregar")) {
            String imagen = request.getParameter("imagen");
            String nombre = request.getParameter("nombre");
            String marca = request.getParameter("marca");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");

            //Videojuego video = new Videojuego(idActual++, imagen, titulo, descripcion);
            productos.add(new Producto(idActual++, imagen, nombre, marca, descripcion, precio));
            response.sendRedirect("ProductoCRUD?accion=listar");
        } else if (accion.equals("actualizar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Producto producto = productos.stream()
                    .filter(p -> p.getId() == id)
                    .findFirst()
                    .orElse(null);

            if (producto != null) {
                producto.setImagen(request.getParameter("imagen"));
                producto.setNombre(request.getParameter("nombre"));
                producto.setMarca(request.getParameter("marca"));
                producto.setDescripcion(request.getParameter("descripcion"));
                producto.setPrecio(request.getParameter("precio"));
            }

            response.sendRedirect("ProductoCRUD?accion=listar");
        }*/
    }
}
