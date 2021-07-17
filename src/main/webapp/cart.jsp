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
    <title>Cart - Kiti</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
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
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Open+Sans&family=Raleway&display=swap"
          rel="stylesheet">

    <!-- Custom CSS -->
    <jsp:include page="_styles.jsp"/>
    <style>
        .title {
            margin-top: 30px;
            margin-bottom: 10px;
        }

        .card {
            margin: auto;
            margin-top: 30px;
            max-width: 950px;
            width: 90%;
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.247);
            border: transparent;
        }

        @media (max-width: 767px) {
            .card {
                margin: 3vh auto;
            }
        }

        @media (max-width: 767px) {
            .cart {
                padding: 4vh;
                border-bottom-left-radius: unset;
                border-top-right-radius: 1rem;
            }
        }

        .summary {
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.5);
            background-color: rgb(37, 33, 33);
            padding: 3vh;
            color: rgb(255, 255, 255);
        }

        .summary .col-2 {
            padding: 0;
        }

        .summary .col-10 {
            padding: 0;
        }

        .row {
            margin: 0;
        }

        .title b {
            font-size: 1.5rem;
        }

        .main {
            margin: 0;
            padding: 2vh 0;
            width: 100%;
        }

        .col-2,
        .col {
            padding: 0 1vh;
        }

        .close {
            margin-left: auto;
            font-size: 0.7rem;
        }

        img {
            width: 3.5rem;
        }

        .back-to-shop {
            margin-top: 4.5rem;
            margin-bottom: 1.5rem;
        }

        h5 {
            margin-top: 4vh;
        }

        .sign {
            font-size: 24px;
            height: 30px;
            line-height: 0;
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
                <a class="nav-link py-2" href="${pageContext.request.contextPath}/FlashSale">FLASHSALE</a>
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
        <a class="btn py-2 ml-2" href="${pageContext.request.contextPath}/Cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count">3</span>
        </a>
        <a href="#" class="btn py-2">
            <i class="fas fa-adjust"></i>
        </a>
        <a href="#" class="btn py-2">
            <i class="fas fa-globe-asia"></i>
        </a>

        <%
            String username = null;

            try {
                username = request.getSession().getAttribute("username").toString();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            if (username != null) {
        %>
        <a class="btn text-muted py-2" href="#"><%= username %></a>
        <a href="<%= request.getContextPath() + "/Logout" %>" class="btn text-muted py-2">Logout</a>
        <%
        } else {
        %>
        <a class="btn text-muted py-2" href="${pageContext.request.contextPath}/Login">Login</a>
        <%
            }
        %>
    </div>
</nav>

<!-- Cart Page -->
<div class="card">
    <div class="row">
        <div class="col-md-8 cart">
            <div class="title">
                <div class="row">
                    <div class="col">
                        <h4><b>Shopping Cart</b></h4>
                    </div>
                    <div class="col align-self-center text-right text-muted">
                        3 items
                    </div>
                </div>
            </div>
            <div class="row border-top border-bottom">
                <div class="row main align-items-center">
                    <div class="col-2">
                        <img class="img-fluid" src="https://i.imgur.com/1GrakTl.jpg" />
                    </div>
                    <div class="col">
                        <div class="row text-muted">Shirt</div>
                        <div class="row">Cotton T-shirt</div>
                    </div>
                    <div class="col">
                        <button class="btn btn-outline-secondary btn-sm sign">-</button>
                        <span class="text-muted quantity m-2">1</span>
                        <button class="btn btn-outline-secondary btn-sm sign">+</button>
                    </div>
                    <div class="col">
                        &euro; 44.00 <span class="close">&#10005;</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row main align-items-center">
                    <div class="col-2">
                        <img class="img-fluid" src="https://i.imgur.com/ba3tvGm.jpg" />
                    </div>
                    <div class="col">
                        <div class="row text-muted">Shirt</div>
                        <div class="row">Cotton T-shirt</div>
                    </div>
                    <div class="col">
                        <button class="btn btn-outline-secondary btn-sm sign">-</button>
                        <span class="text-muted quantity m-2">1</span>
                        <button class="btn btn-outline-secondary btn-sm sign">+</button>
                    </div>
                    <div class="col">
                        &euro; 44.00 <span class="close">&#10005;</span>
                    </div>
                </div>
            </div>
            <div class="row border-top border-bottom">
                <div class="row main align-items-center">
                    <div class="col-2">
                        <img class="img-fluid" src="https://i.imgur.com/pHQ3xT3.jpg" />
                    </div>
                    <div class="col">
                        <div class="row text-muted">Shirt</div>
                        <div class="row">Cotton T-shirt</div>
                    </div>
                    <div class="col">
                        <button class="btn btn-outline-secondary btn-sm sign">-</button>
                        <span class="text-muted quantity m-2">1</span>
                        <button class="btn btn-outline-secondary btn-sm sign">+</button>
                    </div>
                    <div class="col">
                        &euro; 44.00 <span class="close">&#10005;</span>
                    </div>
                </div>
            </div>
            <div class="back-to-shop">
                <a href="${pageContext.request.contextPath}/"> <i class="fas fa-arrow-left"></i> </a
                ><span class="text-muted">Back to shop</span>
            </div>
        </div>
        <div class="col-md-4 summary">
            <div>
                <h5><b>Summary</b></h5>
            </div>
            <hr />
            <div class="row">
                <div class="col" style="padding-left: 0">ITEMS 3</div>
                <div class="col text-right">&euro; 132.00</div>
            </div>
            <form class="mt-3">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">SHIPPING</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Current location</option>
                        <option>Location 1</option>
                        <option>Location 2</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="code">VOUCHER</label>
                    <input
                            type="text"
                            id="code"
                            class="form-control"
                            placeholder="Enter your code"
                    />
                </div>
            </form>
            <div
                    class="row"
                    style="border-top: 1px solid rgba(0, 0, 0, 0.1); padding: 2vh 0"
            >
                <div class="col">TOTAL PRICE</div>
                <div class="col text-right">&euro; 137.00</div>
            </div>
            <button class="btn btn-block btn-dark">CHECKOUT</button>
        </div>
    </div>
</div>

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

<script>
    $(".sign").click(function () {
        switch ($(this).html()) {
            case "-":
                if (parseInt($(this).parent().find($("span")).html()) > 0) {
                    $(this)
                        .parent()
                        .find($("span"))
                        .html(parseInt($(this).parent().find($("span")).html()) - 1);
                }
                break;
            case "+":
                $(this)
                    .parent()
                    .find($("span"))
                    .html(parseInt($(this).parent().find($("span")).html()) + 1);
                console.log("+");
        }
    });
</script>

<jsp:include page="_footer.jsp"/>
</body>
</html>
