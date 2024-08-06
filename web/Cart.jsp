<%-- 
    Document   : Cart.jsp
    Created on : Mar 4, 2024, 9:55:22 PM
    Author     : quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="entity.*" %>
<%@page import="controller.*" %>
<%
    List<Product> cList = (List<Product>) session.getAttribute("cartList");
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
    <link href="https://fonts.googleapis.com/css2?family=Chilanka&family=Montserrat:wght@300;400;500&display=swap"
          rel="stylesheet">

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
<jsp:include page="Header.jsp"></jsp:include>
    <section id="banner" class="py-3" style="background: #F9F3EC;">
        <div class="container">
            <div class="hero-content py-5 my-3">
                <h2 class="display-1 mt-3 mb-0">Giỏ hàng</h2>
                <nav class="breadcrumb">
                    <a class="breadcrumb-item nav-link" href="home">Trang chủ</a>
                    <span class="breadcrumb-item active" aria-current="page">Giỏ hàng</span>
                </nav>
            </div>
        </div>
    </section>

    <!-- thanh toán chính -->
    <section id="cart" class="my-5 py-5">
        <div class="container">
            <div class="row g-md-5">
                <div class="col-md-8 pe-md-5">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col" class="card-title text-uppercase">Image</th>
                                <th scope="col" class="card-title text-uppercase">Name</th>
                                <th scope="col" class="card-title text-uppercase">Quantity</th>
                                <th scope="col" class="card-title text-uppercase">Price</th>
                                <th scope="col" class="card-title text-uppercase">Subtotal</th>
                                <th scope="col" class="card-title text-uppercase">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <% for(Product p: cList){%> 
                        <tr>
                            <td >
                                <div scope="row" class="py-4">
                                    <div class="cart-info d-flex flex-wrap align-items-center ">
                                        <div class="col-lg-3">
                                            <div class="card-image">
                                                <img src="<%=request.getContextPath() + "/images/" + p.getImg()%>" alt="img" width="50" height="50">
                                            </div>
                                        </div>  
                                    </div>

                            </td>
                            <td>
                                <div class="col-lg-9">
                                    <div class="card-detail ps-3">
                                        <h5 class="card-title">
                                            <a class="text-decoration-none"><%=p.getName()%></a>
                                        </h5>
                                    </div>
                                </div>
                                </div>
                            </td>
                            <td class="py-4 align-middle">
                                <div class="input-group product-qty align-items-center w-50">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn btn-light btn-number" data-type="minus">
                                            <svg width="16" height="16">
                                            <use xlink:href="#minus"></use>
                                            </svg>
                                        </button>
                                    </span>
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number text-center p-2 mx-1" value="<%=p.getQuantity()%>">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn-light btn-number" data-type="plus" data-field="">
                                            <svg width="16" height="16">
                                            <use xlink:href="#plus"></use>
                                            </svg>
                                        </button>
                                    </span>
                                </div>
                            </td>
                            <td class="py-4 align-middle">
                                <div class="total-price">
                                    <span class="secondary-font"><%=p.getPrice()%> vnđ</span>
                                </div>
                            </td>
                            <td class="py-4 align-middle">
                                <div class="sub-total-price">
                                    <span class="secondary-font"><%=p.getPrice()*p.getQuantity()%>vnđ</span>
                                </div>
                            </td>
                            <td class="py-4 align-middle">
                                <div class="cart-remove">
                                    <a href="cart?action=remove&id=<%=p.getId()%>" class="remove-product">
                                        <svg width="24" height="24">
                                        <use xlink:href="#trash"></use>
                                        </svg>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>

                <div class="col-md-4">
                    <div class="cart-totals">
                        <h2 class="pb-4">Tổng đơn</h2>
                        <div class="total-price pb-4">
                            <table class="table text-uppercase">
                                <tbody>
                                    <%float totalSubtotal = 0;
                                        for (int i = 0; i < cList.size(); i++) {
                                            Product p = cList.get(i);
                                            float subtotal = p.getPrice() * p.getQuantity();
                                            totalSubtotal += subtotal;}%>
                                    <tr class="subtotal pt-2 pb-2 border-top border-bottom">
                                        <th>Tổng giá</th>
                                        <td data-title="Subtotal">
                                            <span class="price-amount amount text-dark ps-5">
                                                <bdi>
                                                    <span class="price-currency-symbol"><%= totalSubtotal %> vnđ</span>
                                                </bdi>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr class="order-total pt-2 pb-2 border-bottom">
                                        <th>Thành tiền</th>
                                        <td data-title="Total">
                                            <span class="price-amount amount text-dark ps-5">
                                                <bdi>
                                                    <span class="price-currency-symbol"><%= totalSubtotal %> vnđ</span>
                                                </bdi>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="button-wrap row g-2">
                            <div class="col-md-6"><button class="btn btn-dark btn-lg rounded-1 fs-6 p-3 w-100">Update giỏ hàng</button>
                            </div>
                            <div class="col-md-6"><a href="shop" class="btn btn-dark btn-lg rounded-1 fs-6 p-3 w-100">Tiếp tục mua sắm</a></div>
                            <div class="col-md-12"><a href="checkout?totalmoney=<%=totalSubtotal%>" class="btn btn-primary p-3 text-uppercase rounded-1 w-100">Thanh toán.</a>
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
    // JavaScript để xử lý sự kiện khi người dùng bấm vào biểu tượng rác
    document.querySelectorAll('.remove-product').forEach(function (item) {
        item.addEventListener('click', function (event) {
            event.preventDefault(); // Ngăn chặn hành động mặc định của thẻ <a>
            var productId = this.dataset.productId; // Lấy ID của sản phẩm từ thuộc tính dataset

            // Gửi yêu cầu cập nhật giỏ hàng đến servlet
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'cart?action=remove&id=' + productId, true);
            xhr.send();

            // Cập nhật lại trang Cart.jsp
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                    window.location.reload(); // Tải lại trang để hiển thị thông tin sản phẩm đã được cập nhật
                }
            };
        });
    });
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
    }
    );
</script>

</body>

</html>
