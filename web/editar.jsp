<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Producto"%>
<%
    Producto producto = (Producto) request.getAttribute("producto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background: linear-gradient(20deg, #b6eeae, #275b22);">
            <!-- Container wrapper -->
            <div class="container">    
                <!-- Toggle button -->
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarSupportedContent1"
                    aria-controls="navbarSupportedContent1"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">      
                    <!-- Navbar brand -->
                    <a class="navbar-brand mt-2 mt-sm-0" href="index.jsp">
                        <img
                            src="img/logo.png"
                            height="60
                            alt="Mi Logo"
                            loading="lazy"
                        />
                    </a>

                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp" style="font-weight: bold;color: white; font-family: 'Arial', sans-serif; font-size: 16px;">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ProductoCRUD?accion=listar" style="font-weight: bold;color: white; font-family: 'Arial', sans-serif; font-size: 16px;">Productos</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="https://mdbootstrap.com/docs/standard/getting-started/installation/" style="font-weight: bold;color: white; font-family: 'Arial', sans-serif; font-size: 16px;">Registrarme</a>
                    </li>
                </ul>

                    <!-- Left links -->      
                </div>
                <!-- Collapsible wrapper -->

                <!-- Right elements -->
                <div class="d-flex align-items-center">       
                <a class="nav-link me-3" href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="nav-link me-3" href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="btn btn-warning btn-lg" style="color: white; font-weight: bold"
                       target="_blank">
                        <i>Iniciar sesión</i>
                    </a>
                </div>
                <!-- Right elements -->

            </div>
            <!-- Container wrapper -->
        </nav>
        <main>
            
            <div class="container" style="margin-top: 100px">
           
            <h2 class="text-center mb-4">Editar Producto</h2>
            <form action="ProductoCRUD" method="post">
                <input type="hidden" name="accion" value="actualizar">
                <input type="hidden" name="id" value="<%= producto.getId()%>">


                <div class="mb-3">
                    <label for="imagen" class="form-label">Imagen del Producto: <%= producto.getImagen()%></label>
                    <input type="file" class="form-control" id="imagen" name="imagen" accept="image/*" required value="<%= producto.getImagen()%>">
                    <div class="form-text">Selecciona una imagen del producto.</div>
                </div>
                
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="<%= producto.getNombre()%>">
                </div>
                <div class="mb-3">
                    <label for="marca" class="form-label">Marca</label>
                    <input type="text" class="form-control" id="marca" name="marca" value="<%= producto.getMarca()%>">
                </div>
                <div class="mb-3">
                    <label for="descripcion" class="form-label">Descripción</label>
                    <textarea class="form-control" id="descripcion" name="descripcion"><%= producto.getDescripcion()%></textarea>
                </div>
                <div class="mb-3">
                    <label for="precio" class="form-label">Precio</label>
                    <input type="text" class="form-control" id="precio" name="precio" value="<%= producto.getPrecio()%>">
                </div>
                <button type="submit" class="btn btn-primary">Actualizar</button>
                <a type="button" class="btn btn-primary" href="ProductoCRUD?accion=listar">Atras</a>
            </form>
        </div>
        </main>
        
    </body>
</html>
