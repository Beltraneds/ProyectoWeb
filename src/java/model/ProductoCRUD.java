package model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductoCRUD extends HttpServlet {

    List<Producto> productos = new ArrayList<>();
    int idActual = 1;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");

        if (accion.equals("listar")) {
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("listar.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if (accion.equals("agregar")) {
            String imagen = request.getParameter("imagen");
            String nombre = request.getParameter("nombre");
            String marca = request.getParameter("marca");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");
            
            //Videojuego video = new Videojuego(idActual++, imagen, titulo, descripcion);
            
            productos.add(new Producto(idActual++, imagen, nombre, marca, descripcion, precio));
            response.sendRedirect("index.jsp");
        }
    }
}


