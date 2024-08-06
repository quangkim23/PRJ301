
<%-- 
    Document   : Checkout.jsp
    Created on : Mar 6, 2024, 7:57:06 PM
    Author     : quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="author" content="">
  <meta name="keywords" content="">
  <meta name="description" content="">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/vendor.css"><link rel="stylesheet" type="text/css" href="style.css">
      <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
                        <link href="https://fonts.googleapis.com/css2?family=Chilanka&amp;family=Montserrat:wght@300;400;500&amp;display=swap" rel="stylesheet">
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
            <section id="banner" class="py-3" style="background: #F9F3EC;">
                    <div class="container">
                        <div class="hero-content py-5 my-3">
                            <h2 class="display-1 mt-3 mb-0">Thanh toán</h2>
                                <nav class="breadcrumb">
                                    <a class="breadcrumb-item nav-link" href="home">Trang chủ</a>
                                    <span class="breadcrumb-item active" aria-current="page">Thanh toán</span>
                                 </nav>
                        </div>
                    </div>
                </section>
            <section class="shopify-cart checkout-wrap">
                <div class="container py-5 my-5">
                  <form class="form-group">
                    <div class="row d-flex flex-wrap">
                      <div class="col-lg-6">
                        <h2 class="text-dark pb-3">Chi tiết hóa đơn</h2>
                        <div class="billing-details">
                          <label for="name">Họ và tên</label>
                          <input type="text" id="name" name="name" class="form-control mt-2 mb-4 ps-3">
                           <label for="email">Số điện thoại</label>
                          <input type="text" id="phone" name="phone" class="form-control mt-2 mb-4 ps-3">
                          <label for="email">Email</label>
                          <input type="text" id="email" name="email" class="form-control mt-2 mb-4 ps-3">
                          <label for="state">Tỉnh / Thành phố</label>
                            <select class="form-select form-control mt-2 mb-4" aria-label="Default select example">
                                <option selected="" hidden="">Hà Nội</option>
                                <option value="1">Hồ Chí Minh</option>
                                <option value="2">Đà Nẵng</option>
                                <option value="3">Hải Phòng</option>
                                <option value="4">Cần Thơ</option>
                                <option value="5">An Giang</option>
                                <option value="6">Bà Rịa - Vũng Tàu</option>
                                <option value="7">Bắc Giang</option>
                                <option value="8">Bắc Kạn</option>
                                <option value="9">Bạc Liêu</option>
                                <option value="10">Bắc Ninh</option>
                                <option value="11">Bến Tre</option>
                                <option value="12">Bình Định</option>
                                <option value="13">Bình Dương</option>
                                <option value="14">Bình Phước</option>
                                <option value="15">Bình Thuận</option>
                                <option value="16">Cà Mau</option>
                                <option value="17">Cao Bằng</option>
                                <option value="18">Đắk Lắk</option>
                                <option value="19">Đắk Nông</option>
                                <option value="20">Điện Biên</option>
                                <option value="21">Đồng Nai</option>
                                <option value="22">Đồng Tháp</option>
                                <option value="23">Gia Lai</option>
                                <option value="24">Hà Giang</option>
                                <option value="25">Hà Nam</option>
                                <option value="26">Hà Tĩnh</option>
                                <option value="27">Hải Dương</option>
                                <option value="28">Hậu Giang</option>
                                <option value="29">Hòa Bình</option>
                                <option value="30">Hưng Yên</option>
                                <option value="31">Khánh Hòa</option>
                                <option value="32">Kiên Giang</option>
                                <option value="33">Kon Tum</option>
                                <option value="34">Lai Châu</option>
                                <option value="35">Lâm Đồng</option>
                                <option value="36">Lạng Sơn</option>
                                <option value="37">Lào Cai</option>
                                <option value="38">Long An</option>
                                <option value="39">Nam Định</option>
                                <option value="40">Nghệ An</option>
                                <option value="41">Ninh Bình</option>
                                <option value="42">Ninh Thuận</option>
                                <option value="43">Phú Thọ</option>
                                <option value="44">Quảng Bình</option>
                                <option value="45">Quảng Nam</option>
                                <option value="46">Quảng Ngãi</option>
                                <option value="47">Quảng Ninh</option>
                                <option value="48">Quảng Trị</option>
                                <option value="49">Sóc Trăng</option>
                                <option value="50">Sơn La</option>
                                <option value="51">Tây Ninh</option>
                                <option value="52">Thái Bình</option>
                                <option value="53">Thái Nguyên</option>
                                <option value="54">Thanh Hóa</option>
                                <option value="55">Thừa Thiên Huế</option>
                                <option value="56">Tiền Giang</option>
                                <option value="57">Trà Vinh</option>
                                <option value="58">Tuyên Quang</option>
                                <option value="59">Vĩnh Long</option>
                                <option value="60">Vĩnh Phúc</option>
                                <option value="61">Yên Bái</option>
                                <option value="62">Phú Yên</option>
                                <option value="63">Đồng Nai</option>
                            </select>
                          <label for="city">Quận / Huyện</label>
                          <input type="text" id="city" name="city" placeholder="Quận huyện, thị trấn" class="form-control mt-3 ps-3 mb-4">
                          <label for="address">Địa chỉ</label>
                          <input type="text" id="adr" name="address" placeholder="Số nhà và tên đường" class="form-control mt-3 ps-3 mb-3">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <h2 class="text-dark pb-3">Thông tin thêm</h2>
                        <div class="billing-details">
                          <textarea class="form-control pt-3 pb-3 ps-3 mt-2" placeholder="Ghi chú về đơn đặt hàng của bạn. "></textarea>
                        </div>
                        <div class="your-order mt-5">
                          <h2 class="display-7 text-dark pb-3">Cart Totals</h2>
                          <div class="total-price">
                            <table cellspacing="0" class="table">
                              <tbody>
                                <tr class="subtotal border-top border-bottom pt-2 pb-2 text-uppercase">
                                  <th>Đơn giá</th>
                                  <td data-title="Subtotal">
                                    <span class="price-amount amount ps-5">
                                      <bdi>
                                        <span class="price-currency-symbol"><%= request.getAttribute("totalmoney") %> vnđ</span></bdi>
                                    </span>
                                  </td>
                                </tr>
                                <tr class="order-total border-bottom pt-2 pb-2 text-uppercase">
                                  <th>Tổng đơn</th>
                                  <td data-title="Total">
                                    <span class="price-amount amount ps-5">
                                      <bdi>
                                        <span class="price-currency-symbol"><%= request.getAttribute("totalmoney") %> vnđ</span></bdi>
                                    </span>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="list-group mt-5 mb-3">
                              <label class="list-group-item d-flex gap-2 border-0">
                                <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios1" value="" checked="">
                                <span>
                                  <strong class="text-uppercase">Thanh toán chuyển khoản</strong>
                                </span>
                              </label>
                              <label class="list-group-item d-flex gap-2 border-0">
                                <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios2" value="">
                                <span>
                                    <strong class="text-uppercase">Thanh toán qua bưu điện</strong></span>
                              </label>
                              <label class="list-group-item d-flex gap-2 border-0">
                                <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios3" value="">
                                <span>
                                  <strong class="text-uppercase">Thanh toán khi nhận hàng</strong>
                                </span>
                              </label>
                              <label class="list-group-item d-flex gap-2 border-0">
                                <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios3" value="">
                                <span>
                                  <strong class="text-uppercase">Thẻ ngân hàng</strong>
                                </span>
                              </label>
                            </div>
                           <form action="checkout" method="post">
                            <input type="hidden" name="action" value="placeOrder"> <!-- Thêm input ẩn để gửi hành động "placeOrder" -->
                            <button type="submit" class="btn btn-dark btn-lg rounded-1 w-100">Tiến hành đặt hàng</button>
                        </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
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
