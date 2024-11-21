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
        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
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
                    <a class="navbar-brand mt-2 mt-sm-0" href="https://mdbootstrap.com/">
                        <img
                            src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
                            height="20"
                            alt="MDB Logo"
                            loading="lazy"
                            />
                    </a>
                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link " href="https://mdbootstrap.com/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ProductoCRUD?accion=listar">Listar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://mdbootstrap.com/docs/standard/getting-started/installation/">Free download</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://mdbootstrap.com/education/bootstrap/">Free tutorials</a>
                        </li>
                    </ul>
                    <!-- Left links -->      
                </div>
                <!-- Collapsible wrapper -->

                <!-- Right elements -->
                <div class="d-flex align-items-center">
                    <!-- Icon -->
                    <a class="nav-link me-3" href="#">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="badge rounded-pill badge-notification bg-danger">1</span>
                    </a>

                    <a class="nav-link me-3" href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="nav-link me-3" href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="border rounded px-2 nav-link"
                       target="_blank">
                        <i class="fab fa-github me-2"></i>MDB GitHub
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
            <div class="container" style="margin-top: 80px">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #00b5d9">
                    <!-- Container wrapper -->
                    <div class="container-fluid">

                        <!-- Navbar brand -->
                        <a class="navbar-brand" href="#">Categorías:</a>

                        <!-- Toggle button -->
                        <button 
                            class="navbar-toggler" 
                            type="button" 
                            data-mdb-toggle="collapse" 
                            data-mdb-target="#navbarSupportedContent2" 
                            aria-controls="navbarSupportedContent2" 
                            aria-expanded="false" 
                            aria-label="Toggle navigation">
                            <i class="fas fa-bars"></i>
                        </button>

                        <!-- Collapsible wrapper -->
                        <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                                <!-- Link -->
                                <li class="nav-item acitve">
                                    <a class="nav-link text-white" href="#">Todo</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Memorias</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Periféricos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Gabinetes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Procesadores</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#">Motherboard</a>
                                </li>

                            </ul>

                            <!-- Search -->
                            <form class="w-auto py-1" style="max-width: 12rem">
                                <input type="search" class="form-control rounded-0" placeholder="Buscar" aria-label="Search">
                            </form>

                        </div>
                    </div>
                    <!-- Container wrapper -->
                </nav>
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