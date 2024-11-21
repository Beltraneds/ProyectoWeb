<%-- 
    Document   : index.jsp
    Created on : 24-10-2024, 12:24:22
    Author     : PAAWSA03LC0504
--%>

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
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-mdb-ride="carousel">
            <div class="carousel-indicators">
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="0"
                    class="active"
                    aria-current="true"
                    aria-label="Slide 1"
                    ></button>
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="1"
                    aria-label="Slide 2"
                    ></button>
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="2"
                    aria-label="Slide 3"
                    ></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i0.wp.com/blog.vsgamers.es/wp-content/uploads/2022/06/setup_vsgamers_banner_blog.png?fit=832%2C554&ssl=1" class="d-block w-100" alt="Wild Landscape"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-sm-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg" class="d-block w-100" alt="Camera"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-md-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg" class="d-block w-100" alt="Exotic Fruits"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-md-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--Main layout-->
        <main>
            <div class="container">
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
                    <div class="text-center">
                        <div class="row">

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://centrale.cl/wp-content/uploads/Memoria-RAM-8GB-3200Mhz-DDR4-CL16-Corsair-Vengeance-RGB-PRO_wFjOX0l.webp"
                                             class="w-100" />
                                        <a href="#!">
                                            <div class="mask">
                                                <div class="d-flex justify-content-start align-items-end h-100">
                                                    <h5><span class="badge bg-dark ms-2">NEW</span></h5>
                                                </div>
                                            </div>
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Memoria RAM 8GB 3200Mhz DDR4 CL16 Corsair Vengeance RGB PRO</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Memorias</p>
                                        </a>
                                        <h6 class="mb-3 price">120$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://n1g.cl/Home/10994-large_default/hyte-y70-blackred-lcd-141-4k-infinite-touch-gabinete-atx-con-riser-pcie-40-incluido-cs-hyte-y70-br-l-.jpg"
                                             class="w-100" />
                                        <a href="#!">  
                                            <div class="mask">
                                                <div class="d-flex justify-content-start align-items-end h-100">
                                                    <h5><span class="badge bg-primary ms-2">bestseller</span></h5>
                                                </div>
                                            </div>
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">HYTE Y70 Black/Red LCD 14.1" 4K infinite touch Gabinete ATX con Riser PCIe 4.0 Incluido CS-HYTE-Y70-BR-L</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Gabinetes</p>
                                        </a>
                                        <h6 class="mb-3 price">139$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://prophonechile.cl/wp-content/uploads/2020/09/nox3.png"
                                             class="w-100" />
                                        <a href="#!">              
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Gabinete Gamer Nox Infinity Omega Rgb Gris - Prophone</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Gabinetes</p>
                                        </a>
                                        <h6 class="mb-3 price">99$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_989919-MLA50247469229_062022-O.webp"
                                             class="w-100" />
                                        <a href="#!">
                                            <div class="mask">
                                                <div class="d-flex justify-content-start align-items-end h-100">
                                                    <h5><span class="badge sale-badge ms-2">-10%</span></h5>
                                                </div>
                                            </div>
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Teclado gamer inalámbrico Redragon Deimos K599-KRS QWERTY Red inglés UK color negro con luz RGB</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Periféricos</p>
                                        </a>
                                        <h6 class="mb-3 price">
                                            <s>199$</s><strong class="ms-2 sale">179$</strong>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://www.centec.cl/cdn/shop/products/open-uri20220520-20794-30cfnw_bbfbfe7c-3bad-426f-aa49-423cd100a457.jpg?v=1666210585"
                                             class="w-100" />
                                        <a href="#!">              
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Mouse Gamer Cougar 700m Evo Esports</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Periféricos</p>
                                        </a>
                                        <h6 class="mb-3 price">139$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://media.solotodo.com/media/products/1569342_picture_1672268351.jpg"
                                             class="w-100" />
                                        <a href="#!">
                                            <div class="mask">
                                                <div class="d-flex justify-content-start align-items-end h-100">
                                                    <h5><span class="badge bg-success ms-2">Eco</span></h5>
                                                </div>
                                            </div>
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">AMD Ryzen 7 5700X [100-100000926WOF]</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Procesadores</p>
                                        </a>
                                        <h6 class="mb-3 price">99$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                                        <img src="https://cdn1.spider.cl/8157-large_default/procesador-intelcore-i7-9700k-36ghz-lga1151.jpg"
                                             class="w-100" />
                                        <a href="#!">              
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Procesador Intel Core i7-9700K 3.6Ghz LGA1151</h5>
                                        </a>
                                        <a href="" class="text-reset">
                                            <p>Procesadores</p>
                                        </a>
                                        <h6 class="mb-3 price">199$</h6>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6 mb-4">
                                <div class="card">
                                    <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                         data-mdb-ripple-color="light">
                                        <img src="https://cdn3.spider.cl/25840-large_default/placa-madre-gigabyte-b650-gaming-x-ax.jpg"
                                             class="w-100" />
                                        <a href="#!">              
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <a href="" class="text-reset">
                                            <h5 class="card-title mb-2">Placa Madre Gigabyte B650 GAMING X AX</h5>
                                        </a>
                                        <a href="" class="text-reset ">
                                            <p>Motherboard</p>
                                        </a>
                                        <h6 class="mb-3 price">120$</h6>
                                    </div>
                                </div>
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