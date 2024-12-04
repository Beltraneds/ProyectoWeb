<%@page import="model.Producto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de productos KA</title>
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
                        <a class="nav-link" href="/ProyectoWeb" style="font-weight: bold;color: white; font-family: 'Arial', sans-serif; font-size: 16px;">Inicio</a>
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
        <!-- Navbar -->

        <!-- carousel -->


        <!--Main layout-->
        <main>
            <div class="container" style="margin-top: 100px">
                <!-- Navbar -->
                
                <!-- Navbar -->

                <!-- Products -->
                <h2 class="text-center mb-4">Lista de productos</h2>
                <section>
                    <div class="card">
                        <div class="card-body">
                            <div class="row" >

                                <table class="table table-borderless" >
                                    <thead class="table" style="background-color: #00b5d9">
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Marca</th>
                                            <th scope="col">Precio</th>
                                            <th scope="col">Descripción</th>
                                            <th scope="col">Categoría</th>
                                            <th scope="col">Dimensiones</th>
                                            <th scope="col">Imágen</th>
                                            <th scope="col">Stock</th>
                                            <th scope="col">Capacidad</th>
                                            <th scope="col">Cod. Producto</th>
                                            <th scope="col">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Producto> productos = (List<Producto>)request.getAttribute("productos");

                                            for (Producto prod : productos) {
                                        %>
                                        <tr>
                                            <td><%= prod.getId() %></td>
                                            <td><%= prod.getNombre() %></td>                     
                                            <td><%= prod.getId_marca() != null ? prod.getId_marca().getNombre_marca(): "Sin marca" %></td>
                                            <td><%= prod.getPrecio() %></td>
                                            <td><%= prod.getDescripcion() %></td>
                                            <td><%= prod.getId_categoria() != null ? prod.getId_categoria().getNombre_cat(): "Sin categoría" %></td>
                                            <td><%= prod.getDimensiones() %></td>
                                            <td><%= prod.getImagen() %></td>
                                            <td><%= prod.getStock() %></td>
                                            <td><%= prod.getCapacidad() %></td>
                                            <td><%= prod.getCod_producto() %></td>
                                            <td>
                                                <a href="ProductoCRUD?accion=editar&id=<%= prod.getId()%>" class="btn btn-warning">Editar</a>
                                                <a href="ProductoCRUD?accion=eliminar&id=<%= prod.getId()%>" class="btn btn-danger">Eliminar</a>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>

                                </table>
                                <a href="agregar.jsp" class="btn btn-success">Nuevo Producto</a>
                            </div>

                        </div>                        
                    </div>
                </section>

                <!-- Pagination -->
                <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>  
                <!-- Pagination -->  
            </div>
        </main>
        <!--Main layout-->

        <footer class="text-center text-white mt-4" style="background-color: #607D8B">

            <!--Call to action-->
            <div class="pt-4 pb-2">
                <a class="btn btn-outline-white footer-cta mx-2" href="https://mdbootstrap.com/docs/jquery/getting-started/download/" target="_blank" role="button">Download MDB
                    <i class="fas fa-download ms-2"></i>
                </a>
                <a class="btn btn-outline-white footer-cta mx-2" href="https://mdbootstrap.com/education/bootstrap/" target="_blank" role="button">Start free tutorial
                    <i class="fas fa-graduation-cap ms-2"></i>
                </a>
            </div>
            <!--/.Call to action-->

            <hr class="text-dark">

            <div class="container">
                <!-- Section: Social media -->
                <section class="mb-3">

                    <!-- Facebook -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-facebook-f"></i
                        ></a>

                    <!-- Twitter -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-twitter"></i
                        ></a>

                    <!-- Google -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-google"></i
                        ></a>

                    <!-- Instagram -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- YouTube -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-youtube"></i
                        ></a>
                    <!-- Github -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-github"></i
                        ></a>
                </section>
                <!-- Section: Social media -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2); text-color: #E0E0E0">
                © 2022 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>