<%-- 
    Document   : HomePage
    Created on : Mar 1, 2024, 6:11:18 PM
    Author     : quang
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="entity.*" %>
<%@page import="controller.*" %>
<%
List<PetCategory> listP = (List<PetCategory>) request.getAttribute("listP");
User user = (User) session.getAttribute("user");
List<Product> list = (List<Product>) request.getAttribute("ListProduct");
%>
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
<!-- banner 1 mã giảm giá -->
<section id="banner" style="background: #F9F3EC;">
    <div class="container">
        <div class="swiper main-swiper">
            <div class="swiper-wrapper">

                <div class="swiper-slide py-5">
                    <div class="row banner-content align-items-center">
                        <div class="img-wrapper col-md-5">
                            <img src="images/banner-img.png" class="img-fluid">
                        </div>
                        <div class="content-wrapper col-md-7 p-5 mb-5">
                            <div class="secondary-font text-primary text-uppercase mb-4">Tiết kiệm đến 10%</div>
                            <h2 class="banner-title display-1 fw-normal">Cho các sản phẩm<span class="text-primary"> cho thú cưng</span>
                            </h2>
                            <a href="shop" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                                mua ngay
                                <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                                <use xlink:href="#arrow-right"></use>
                                </svg></a>
                        </div>

                    </div>
                </div>
                <div class="swiper-slide py-5">
                    <div class="row banner-content align-items-center">
                        <div class="img-wrapper col-md-5">
                            <img src="images//banner-img3.png" class="img-fluid">
                        </div>
                        <div class="content-wrapper col-md-7 p-5 mb-5">
                            <div class="secondary-font text-primary text-uppercase mb-4">Tiết kiệm đến 10%</div>
                            <h2 class="banner-title display-1 fw-normal">Cho các sản phẩm<span class="text-primary"> cho thú cưng</span>
                            </h2>
                            <a href="shop" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                                mua ngay
                                <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                                <use xlink:href="#arrow-right"></use>
                                </svg></a>
                        </div>

                    </div>
                </div>
                <div class="swiper-slide py-5">
                    <div class="row banner-content align-items-center">
                        <div class="img-wrapper col-md-5">
                            <img src="images/banner-img4.png" class="img-fluid">
                        </div>
                        <div class="content-wrapper col-md-7 p-5 mb-5">
                            <div class="secondary-font text-primary text-uppercase mb-4">Tiết kiệm đến 10%</div>
                            <h2 class="banner-title display-1 fw-normal">Cho các sản phẩm<span class="text-primary"> cho thú cưng</span>
                            </h2>
                            <a href="shop" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                                mua ngay
                                <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                                <use xlink:href="#arrow-right"></use>
                                </svg></a>
                        </div>

                    </div>
                </div>
            </div>

            <div class="swiper-pagination mb-5"></div>

        </div>
    </div>
</section>

<!-- icon đồ ăn và thể loại thú cưng -->
<section id="categories">
    <div class="container my-3 py-5">
        <div class="row my-5">
            <div class="col text-center">
                <a href="shop" class="categories-item">
                    <iconify-icon class="category-icon" icon="ph:bowl-food"></iconify-icon>
                    <h5>Đồ ăn</h5>
                </a>
            </div>
            <div class="col text-center">
                <a href="shop" class="categories-item">
                    <iconify-icon class="category-icon" icon="ph:dog"></iconify-icon>
                    <h5>Chó</h5>
                </a>
            </div>
            <div class="col text-center">
                <a href="shop" class="categories-item">
                    <iconify-icon class="category-icon" icon="ph:cat"></iconify-icon>
                    <h5>Mèo</h5>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Sản phẩm quần áo-->
<section id="clothing" class="my-5 overflow-hidden">
    <div class="container pb-5">
        <div class="section-header d-md-flex justify-content-between align-items-center mb-3">
            <h2 class="display-3 fw-normal">Sản phẩm mới</h2>
            <div>
                <a href="shop" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                    mua ngay
                    <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                    <use xlink:href="#arrow-right"></use>
                    </svg></a>
            </div>
        </div>
        <div class="products-carousel swiper">
            <div class="swiper-wrapper">
                <% for(Product p : list) { %>
                <div class="swiper-slide">
                    <div class="z-1 position-absolute rounded-3 m-3 px-3 border border-dark-subtle">Mới</div>
                    <div class="card position-relative">
                        <a href="detail?pid=<%=p.getId()%>"><img src="<%=request.getContextPath() + "/images/" + p.getImg()%>" class="img-fluid rounded-4" alt="image"></a>
                        <div class="card-body p-0">
                            <a href="detail?pid=<%=p.getId()%>">
                                <h3 class="card-title pt-4 m-0"><%=p.getName()%></h3>
                            </a>

                            <div class="card-text">
                                <div class="rating-container d-flex gap-0 align-items-center">
                                    <span class="rating secondary-font">
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        <iconify-icon icon="clarity:star-solid" class="text-primary"></iconify-icon>
                                        5.0</span>
                                </div>
                                <div class="product-price pt-3 pb-3">
                                <p class="text-primary display-6">Giá: <%=p.getPrice()%></p>
                                </div>
                                <div class="stock-number text-dark"><em>Còn: <%=p.getQuantity()%></em></div>
                                <div class="d-flex flex-wrap mt-3">
                                    <div class="d-flex flex-wrap mt-3">
                                        <form action="cart" method="post">
                                            <input type="hidden" name="cart" value="true">
                                            <button type="submit" class="btn btn-outline-primary">
                                                <h5 class="text-uppercase m-0"><a href="cart?id=<%=p.getId()%>">Add to Cart</a></h5>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</section>

<!-- ưu đãi dọn hàng -->
<section id="banner-2" class="my-3" style="background: #F9F3EC;">
    <div class="container">
        <div class="row flex-row-reverse banner-content align-items-center">
            <div class="img-wrapper col-12 col-md-6">
                <img src="images/banner-img2.png" class="img-fluid">
            </div>
            <div class="content-wrapper col-12 offset-md-1 col-md-5 p-5">
                <div class="secondary-font text-primary text-uppercase mb-3 fs-4">Giảm giá lên tới 40%</div>
                <h2 class="banner-title display-1 fw-normal">Xả kho !!!
                </h2>
                <a href="shop" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                    Mua ngay
                    <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                    <use xlink:href="#arrow-right"></use>
                    </svg></a>
            </div>
        </div>
    </div>
</section>

<!-- lời tựa -->
<section id="testimonial">
    <div class="container my-5 py-5">
        <div class="row">
            <div class="offset-md-1 col-md-10">
                <div class="swiper testimonial-swiper">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="row ">
                                <div class="col-2">
                                    <iconify-icon icon="ri:double-quotes-l" class="quote-icon text-primary"></iconify-icon>
                                </div>
                                <div class="col-md-10 mt-md-5 p-5 pt-0 pt-md-5">
                                    <p class="testimonial-content fs-2">Chúng tôi xin gửi lời cảm ơn chân thành đến quý khách hàng đã tin tưởng và lựa chọn Petshop là nơi chăm sóc cho thú cưng của mình. .</p>
                                    <p class="text-black">- Petshop</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="row ">
                                <div class="col-2">
                                    <iconify-icon icon="ri:double-quotes-l" class="quote-icon text-primary"></iconify-icon>
                                </div>
                                <div class="col-md-10 mt-md-5 p-5 pt-0 pt-md-5">
                                    <p class="testimonial-content fs-2"> Chúng tôi luôn nỗ lực để mang đến những dịch vụ tốt nhất, đảm bảo sức khỏe và hạnh phúc cho các bé. </p>
                                    <p class="text-black">- Petshop</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="row ">
                                <div class="col-2">
                                    <iconify-icon icon="ri:double-quotes-l" class="quote-icon text-primary"></iconify-icon>
                                </div>
                                <div class="col-md-10 mt-md-5 p-5 pt-0 pt-md-5">
                                    <p class="testimonial-content fs-2">Chúng tôi tin rằng, với sự đồng hành của quý khách, Petshop sẽ ngày càng phát triển và trở thành nơi nuôi dưỡng những ước mơ về một tương lai bền vững.</p>
                                    <p class="text-black">- Petshop</p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="swiper-pagination"></div>

                </div>
            </div>
        </div>
    </div>

</section>

<!-- ưu đãi đăng kí -->
<section id="register" style="background: url('images/background-img.png') no-repeat;">
    <div class="container ">
        <div class="row my-5 py-5">
            <div class="offset-md-3 col-md-6 my-5 ">
                <h2 class="display-3 fw-normal text-center">Giảm giá cho lần <span class="text-primary"> đầu mua hàng</span>
                </h2>
                <form action="login">
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-dark btn-lg rounded-1">Đăng kí ngay</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- bài viết gần đây nhất -->
<section id="latest-blog" class="my-5">
    <div class="container py-5 my-5">
        <div class="row mt-5">
            <div class="section-header d-md-flex justify-content-between align-items-center mb-3">
                <h2 class="display-3 fw-normal">Bài viết gần đây nhất</h2>
                <div>
                    <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                        Đọc tất cả
                        <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                        <use xlink:href="#arrow-right"></use>
                        </svg></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 my-4 my-md-0">
                <div class="z-1 position-absolute rounded-3 m-2 px-3 pt-1 bg-light">
                    <h3 class="secondary-font text-primary m-0">28</h3>
                    <p class="secondary-font fs-6 m-0">Feb</p>

                </div>
                <div class="card position-relative">
                    <a href=""><img src="images/blog1.jpg" class="img-fluid rounded-4" alt="image"></a>
                    <div class="card-body p-0">
                        <a href="">
                            <h3 class="card-title pt-4 pb-3 m-0">10 lý do để giúp đỡ bất kỳ loài động vật nào</h3>
                        </a>

                        <div class="card-text">

                            <a href="" class="blog-read">xem thêm</a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-4 my-4 my-md-0">
                <div class="z-1 position-absolute rounded-3 m-2 px-3 pt-1 bg-light">
                    <h3 class="secondary-font text-primary m-0">1</h3>
                    <p class="secondary-font fs-6 m-0">March</p>

                </div>
                <div class="card position-relative">
                    <a href=""><img src="images/blog2.jpg" class="img-fluid rounded-4" alt="image"></a>
                    <div class="card-body p-0">
                        <a href="">
                            <h3 class="card-title pt-4 pb-3 m-0">Các nhận biết thú cưng của bạn đang đói</h3>
                        </a>

                        <div class="card-text">
                            <a href="" class="blog-read">xem thêm</a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-4 my-4 my-md-0">
                <div class="z-1 position-absolute rounded-3 m-2 px-3 pt-1 bg-light">
                    <h3 class="secondary-font text-primary m-0">2</h3>
                    <p class="secondary-font fs-6 m-0">March</p>

                </div>
                <div class="card position-relative">
                    <a href=""><img src="images/blog3.jpg" class="img-fluid rounded-4" alt="image"></a>
                    <div class="card-body p-0">
                        <a href="">
                            <h3 class="card-title pt-4 pb-3 m-0">Đâu là ngôi nhà tốt nhất cho thú cưng của bạn</h3>
                        </a>

                        <div class="card-text">
                            <a href="" class="blog-read">xem thêm</a>
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
</body>
</html>
