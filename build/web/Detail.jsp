<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="entity.*" %>
<%@page import="controller.*" %>
<% Product detail = (Product) request.getAttribute("detail"); %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chilanka&family=Montserrat:wght@300;400;500&display=swap"rel="stylesheet">
    </head>
<body>
    <!-- Biểu tượng -->
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <defs>
<symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
    <path fill="currentColor" d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
    <path fill="currentColor" d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
    <path fill="currentColor" d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
    <path fill="currentColor" d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
    <path fill="currentColor" d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
    <path fill="currentColor" d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
    <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
    <path fill="currentColor" d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
    <path fill="currentColor" d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
    <path fill="currentColor" d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
    <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
    <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
    <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
    <path fill="currentColor" d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z"></path>
</symbol>
<symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
    <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"></path>
</symbol>

</defs>
</svg>
<div class="preloader-wrapper">
    <div class="preloader">
    </div>
</div>
<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasCart" aria-labelledby="My Cart">
    <div class="offcanvas-header justify-content-center">
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
</div>
<!-- header -->
<jsp:include page="Header.jsp"></jsp:include>
    <body>
        <section id="banner" class="py-3" style="background: #F9F3EC;">
            <div class="container">
                <div class="hero-content py-5 my-3">
                    <h2 class="display-1 mt-3 mb-0"><span class="text-primary">Chi tiết sản phẩm</span> </h2>
                    <nav class="breadcrumb">
                        <a class="breadcrumb-item nav-link" href="home">Trang chủ</a>
                        <span class="breadcrumb-item active" aria-current="page">Chi tiết sản phẩm</span>
                    </nav>
                </div>
            </div>
        </section>
        <!--chi tiết sản phẩm-->
        <section id="selling-product">
            <div class="container my-md-5 py-5">
                <div class="row g-md-5">
                     <div class="col-lg-6 mt-5">
                            <!-- product-large-slider -->
                            <div class="col-md-12">
                                <div class="swiper product-large-slider swiper-fade swiper-initialized swiper-horizontal swiper-watch-progress swiper-backface-hidden">
                                    <div class="swiper-wrapper" id="swiper-wrapper-8bb71677d5be012c" aria-live="polite">
                                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" role="group" aria-label="1 / 4" style="width: 620px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                            <img src="<%=request.getContextPath() + "/images/" + detail.getImg()%>" class="img-fluid" style="width: 100%; height: auto;">
                                        </div>
                                    </div>
                                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                </div>
                            </div>
                        </div>
                    <div class="col-lg-6 mt-5 ">
                        <div class="product-info">
                            <div class="element-header">
                                <h2 itemprop="name" class="display-6"><%=detail.getName()%></h2>
                                <div class="rating-container d-flex gap-0 align-items-center">
                                    <span class="rating secondary-font">
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        5.0</span>
                                </div>
                            </div>
                            <div class="product-price pt-3 pb-3">
                                <strong class="text-primary display-6 fw-bold">Giá: <%=detail.getPrice()%></strong><del class="ms-2"><%=detail.getPrice() + 100000%></del>
                            </div>
                            <div class="cart-wrap">
                                <div class="product-quantity pt-2">
                                    <div class="stock-number text-dark"><em>Còn: <%=detail.getQuantity()%></em></div>
                                    <div class="stock-button-wrap">
                                        <div class="input-group product-qty align-items-center w-25">
                                            <span class="input-group-btn">
                                                <button type="button" class="quantity-left-minus btn btn-light btn-number" data-type="minus">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#minus">-</use>
                                                    </svg>
                                                </button>
                                            </span>
                                            <input type="text" id="quantity" name="quantity" class="form-control input-number text-center p-2 mx-1" value="1">
                                            <span class="input-group-btn">
                                                <button type="button" class="quantity-right-plus btn btn-light btn-number" data-type="plus" data-field="">
                                                    <svg width="16" height="16">
                                                    <use xlink:href="#plus">+</use>
                                                    </svg>
                                                </button>
                                            </span>
                                        </div>
                                        <form action="cart" method="post">
                                            <input type="hidden" name="cart" value="true">
                                            <button type="submit" class="btn btn-outline-primary">
                                                <h5 class="text-uppercase m-0"><a href="cart?id=<%=detail.getId()%>">Add to Cart</a></h5>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="meta-product pt-4">
                                <div class="meta-item d-flex align-items-baseline">
                                    <h6 class="item-title fw-bold no-margin pe-2">Mã sản phẩm:</h6>
                                    <ul class="select-list list-unstyled d-flex">
                                        <li data-value="S" class="select-item"><%=detail.getId()%></li>
                                    </ul>
                                </div>
                                <div class="meta-item d-flex align-items-baseline">
                                    <h6 class="item-title fw-bold no-margin pe-2">Thể loại:</h6>
                                    <ul class="select-list list-unstyled d-flex">
                                        <li data-value="S" class="select-item">
                                           Dành cho <a href="shop"><%=detail.getPet_Id()%></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="meta-item d-flex align-items-baseline">
                                    <h6 class="item-title fw-bold no-margin pe-2">Tags:</h6>
                                    <ul class="select-list list-unstyled d-flex">
                                        <li data-value="S" class="select-item">
                                            <a href="shop"><%=detail.getCategory_Id()%></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="js/jquery-1.11.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
        <script src="js/plugins.js"></script>
        <script src="js/script.js"></script>
        <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var quantityInput = document.getElementById("quantity");
                var maxQuantity = <%= detail.getQuantity() %>;

                // Hàm cập nhật số lượng
                function updateQuantity(newQuantity) {
                    if (newQuantity <= maxQuantity) {
                        quantityInput.value = newQuantity;
                    } else {
                        quantityInput.value = maxQuantity;
                        alert("Vượt quá số lượng!");
                    }
                }

                // Xử lý sự kiện khi nhấn nút plus
                document.querySelector(".quantity-right-plus").addEventListener("click", function () {
                    var newQuantity = parseInt(quantityInput.value) + 1;
                    updateQuantity(newQuantity);
                });

                // Xử lý sự kiện khi nhấn nút minus
                document.querySelector(".quantity-left-minus").addEventListener("click", function () {
                    var newQuantity = parseInt(quantityInput.value) - 1;
                    if (newQuantity >= 1) {
                        updateQuantity(newQuantity);
                    }
                });

                // Xử lý sự kiện khi người dùng nhập số lượng vào ô input
                quantityInput.addEventListener("change", function () {
                    var newQuantity = parseInt(quantityInput.value);
                    if (newQuantity < 1 || isNaN(newQuantity)) {
                        newQuantity = 1;
                    }
                    updateQuantity(newQuantity);
                });
            });
        </script>
    </body>
</html>