<%@page import="model.Producto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KA Digital</title>
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
        <!-- Navbar -->

        <!-- carousel -->


        <!--Main layout-->
        <main>
            <div class="container" style="margin-top: 100px">
                <!-- Navbar -->
                
                <!-- Navbar -->

                <!-- Products -->
                <section>
                    <h2 class="text-center mb-4">Agregar Nuevo Producto</h2>
                    <div class="row">
                        <form action="${pageContext.request.contextPath}/ProductoCRUD?accion=agregar" method="POST">
                            <input type="hidden" name="action" value="create">
                            <div class="mb-3">
                                <label for="productImage" class="form-label">Imagen del Producto</label>
                                <input type="file" class="form-control" id="productImage" name="imagen" accept="image/*" required>
                                <div class="form-text">Selecciona una imagen del producto.</div>
                            </div>

                            <div class="mb-3">
                                <label for="productName" class="form-label">Nombre del producto</label>
                                <input type="text" class="form-control" id="productName" name="nombre" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="productMarca" class="form-label">Marca</label>
                                <input type="text" class="form-control" id="productMarca" name="marca" required>
                            </div>

                            <div class="mb-3">
                                <label for="productDescription" class="form-label">Descripción</label>
                                <textarea class="form-control" id="productDescription" name="descripcion" rows="3" required></textarea>
                            </div>
                            
                            <div class="mb-3">
                                <label for="productPrice" class="form-label">Precio del producto</label>
                                <input type="text" class="form-control" id="productPrice" name="precio" required>
                            </div>

                            <button type="submit" class="btn btn-primary">Agregar Producto</button>
                        </form>

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