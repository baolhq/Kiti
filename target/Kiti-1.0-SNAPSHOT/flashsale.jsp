<%@ page import="java.util.ArrayList" %>
<%@ page import="com.kiti.models.Product" %>

<!-- In memory data for testing purpose only -->
<%
    ArrayList<Product> products = new ArrayList<>();
    products.add(new Product("Fancy Product", 5, 40, 80, false));
    products.add(new Product("Special Item", 4, 20, 18, true));
    products.add(new Product("Sale Item", 3, 50, 25, true));
    products.add(new Product("Popular Item", 4, 40, 40, false));
    products.add(new Product("Sale Item", 4, 50, 25, true));
    products.add(new Product("Fancy Product", 5, 40, 80, false));
    products.add(new Product("Special Item", 4, 20, 18, true));
    products.add(new Product("Fancy Product", 5, 40, 80, false));
    products.add(new Product("Sale Item", 3, 50, 25, true));
%>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/06/2021
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Flashsale - Kiti</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
    />

    <!-- Fontawesome CDN -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Open+Sans&family=Raleway&display=swap" rel="stylesheet">

    <!-- Custom CSS -->
    <jsp:include page="_styles.jsp"/>

    <style>
        #flashsale-jumbotron {
            background-image: url("https://i.pinimg.com/originals/4b/ef/93/4bef93c1e03f32271c59bcc4cda3353c.jpg");
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav
            class="
            navbar navbar-expand-lg navbar-light
            shadow-sm
            bg-white
            rounded
            sticky-top
          "
    >
        <a class="navbar-brand mt-1 py-0" href="${pageContext.request.contextPath}/">Kiti </a>
        <button
                class="navbar-toggler py-2"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link py-2" href="${pageContext.request.contextPath}/">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active py-2" href="${pageContext.request.contextPath}/FlashSale">FLASHSALE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link py-2" href="${pageContext.request.contextPath}/Voucher">VOUCHER</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link py-2 dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        CATEGORY
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Sneakers</a>
                        <a class="dropdown-item" href="#">Clothes</a>
                        <a class="dropdown-item" href="#">Jawelry</a>
                    </div>
                </li>
            </ul>
            <form
                    class="form-inline my-2 my-lg-0"
                    style="border: 1px solid rgb(190, 190, 190); border-radius: 5px"
            >
                <div class="input-group">
                    <input
                            class="form-control"
                            type="search"
                            placeholder="Search"
                            aria-label="Search"
                            style="border: 0"
                            accesskey="s"
                    />
                    <div class="input-group-append">
                        <button class="btn" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <a class="btn py-2 ml-2" href="cart.jsp">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count">3</span>
            </a>
            <a href="#" class="btn py-2">
                <i class="fas fa-adjust"></i>
            </a>
            <a href="#" class="btn py-2">
                <i class="fas fa-globe-asia"></i>
            </a>
            <a class="btn text-muted py-2" href="${pageContext.request.contextPath}/Login">Login</a>
        </div>
    </nav>

    <!-- Grid body -->
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row justify-content-center">
            <div class="col-sm-12">
                <div
                        class="jumbotron bg-dark text-white d-flex justify-content-center align-items-start"
                        id="flashsale-jumbotron"
                        style="flex-direction: column"
                >
                    <h3>Flashsale</h3>
                    <h4 id="countdown"></h4>
                </div>
            </div>
            <%
                for (Product product: products) {
            %>


            <div class="col-sm-4 mb-5">
                <div class="card h-100">
                    <%
                        if (product.isSale()) {
                    %>
                    <!-- Sale badge-->
                    <div
                            class="badge bg-dark text-white position-absolute"
                            style="top: 0.5rem; right: 0.5rem"
                    >
                        Sale
                    </div>

                    <%
                        }
                    %>
                    <!-- Product image-->
                    <img
                            class="card-img-top"
                            src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                            alt="..."
                    />
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder"><%= product.getName() %></h5>
                            <!-- Product reviews-->
                            <div
                                    class="d-flex justify-content-center small text-warning mb-2"
                            >
                                <%
                                    for (int i = 0; i < product.getRatings(); i++) {
                                %>
                                <i class="fas fa-star"></i>
                                <%
                                    }
                                %>
                            </div>
                            <!-- Product price-->
                            $<%= product.getOriginalPrice() %> - $<%= product.getNewPrice() %>
                        </div>
                    </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center">
                            <a class="btn btn-outline-dark mt-auto" href="#"
                            >View options</a
                            >
                        </div>
                    </div>
                </div>
            </div>

            <%
                }
            %>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center text-muted shadow-lg bg-white rounded mt-5">
        <!-- Section: Social media -->
        <section
                class="
              d-flex
              justify-content-center
              align-items-center
              p-4
              border-bottom
            "
        >
            <!-- Left -->
            <div class="mr-3 d-none d-lg-block">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div class="contact-links">
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="btn btn-outline-secondary text-reset">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <a
                                    class="mt-1 text-reset"
                                    href="#"
                                    title="Kiti"
                                    style="font-family: 'Great Vibes', sans-serif"
                            >Kiti</a
                            >
                            <span>&nbsp; Kiti</span>
                        </h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            Curabitur ornare scelerisque ultrices. Mauris magna neque,
                            placerat a rutrum a, mattis eu ligula.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Products</h6>
                        <p>
                            <a href="#!" class="text-reset">Sneakers</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Clothes</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Jawelry</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
                        <p>
                            <a href="#!" class="text-reset">Pricing</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">About us</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Term & Privacy</a>
                        </p>
                        <p>
                            <a href="#!" class="text-reset">Help</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                        <p><i class="fas fa-home me-3"></i> FPT Can Tho University</p>
                        <p>
                            <i class="fas fa-envelope me-3"></i>
                            contact@fpt.edu.vn
                        </p>
                        <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                        <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4">
            © 2021
            <a class="text-reset fw-bold" href="https://mdbootstrap.com/">Kiti.</a>
            All rights reserved
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"
    ></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"
    ></script>

    <!-- Countdown Timer -->
    <script>
        // Set the date we're counting down to
        let countDownDate = new Date("July 21, 2021 15:37:25").getTime();

        // Update the count down every 1 second
        let x = setInterval(function () {
            // Get today's date and time
            let now = new Date().getTime();

            // Find the distance between now and the count down date
            let distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            let days = Math.floor(distance / (1000 * 60 * 60 * 24));
            let hours = Math.floor(
                (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
            );
            let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            let seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Display the result in the element with id="countdown"
            document.getElementById("countdown").innerHTML =
                days + "d " + hours + "h " + minutes + "m " + seconds + "s ";

            // If the count down is finished, write some text
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("countdown").innerHTML = "EXPIRED";
            }
        }, 1000);
    </script>

    <script src="../scripts/all.js" defer></script>
</body>
</html>
