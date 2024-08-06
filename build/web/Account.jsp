<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String errorMessage = (String) session.getAttribute("errorMessage");%>
<!DOCTYPE html>
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


<section id="banner" class="py-3" style="background: #F9F3EC;">
    <div class="container">
        <div class="hero-content py-5 my-3">
            <h2 class="display-1 mt-3 mb-0">Tài khoản</h2>
            
                <a class="breadcrumb-item nav-link" href="home">Trang chủ</a>
                <span class="breadcrumb-item active" aria-current="page">Tài khoản</span>
            
        </div>
    </div>
</section>
<!--login-->

<div class="container my-5 py-5">
    <div class="row">
        <div class="tabs-listing">
            <nav>
                <div class="nav nav-tabs d-flex justify-content-center border-dark-subtle mb-3" id="nav-tab" role="tablist">
                    <button class="nav-link mx-3 fs-3 border-bottom border-dark-subtle border-0 text-uppercase active" id="nav-sign-in-tab" data-bs-toggle="tab" data-bs-target="#nav-sign-in" type="button" role="tab" aria-controls="nav-sign-in" aria-selected="true">Đăng nhập</button>
                    <button class="nav-link mx-3 fs-3 border-bottom border-dark-subtle border-0 text-uppercase" id="nav-register-tab" data-bs-toggle="tab" data-bs-target="#nav-register" type="button" role="tab" aria-controls="nav-register" aria-selected="false" tabindex="-1">Tạo tài khoản</button>
                </div>

            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel" aria-labelledby="nav-sign-in-tab">
                    <div class="col-lg-8 offset-lg-2 mt-5">
                        <form id="login" class="form-group flex-wrap " action="login" method="Post">
                            <div class="form-input col-lg-12 my-4">
                                <input type="text" id="exampleInputUserName" name="username" placeholder="Nhập tài khoản" class="form-control mb-3 p-4">
                                <input type="password" id="inputPassword1" name="password" placeholder="Nhập mật khẩu" class="form-control mb-3 p-4" aria-describedby="passwordHelpBlock">
                                <% if (request.getAttribute("errorMessage") != null) { %>
                                <p id="errorMessage" class="alert alert-danger mt-3 text-center"><%= request.getAttribute("errorMessage") %></p>
                                <% } %>
                                <div class="d-grid my-3">
                                    <button type="submit" class="btn btn-dark btn-lg rounded-1">Đăng nhập</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-register">
                    <div class="col-lg-8 offset-lg-2 mt-5" id="nav-register-tab" role="tabpanel" aria-labelledby="nav-register-tab">
                        <form id="signup" class="form-group flex-wrap " action="signup" method="Post">
                            <div class="form-input col-lg-12 my-4">
                                <input type="text" id="InputName" name="name" placeholder="Họ và tên" class="form-control mb-3 p-4">
                                <input type="text" id="InputUserName" name="username" placeholder="Tài khoản" class="form-control mb-3 p-4">
                                <input type="password" id="InputPassword1" name="password1" placeholder="Nhập mật khẩu" class="form-control mb-3 p-4" aria-describedby="passwordHelpBlock">
                                <input type="password" id="InputPassword2" name="password2" placeholder="Nhập lại mật khấu" class="form-control mb-3 p-4" aria-describedby="passwordHelpBlock">
                                <input type="text" id="InputEmail" name="email" placeholder="Email" class="form-control mb-3 p-4">
                                <input type="text" id="InputAddress" name="address" placeholder="Địa chỉ" class="form-control mb-3 p-4">
                                <input type="text" id="InputPhone" name="phone" placeholder="Số điện thoại" class="form-control mb-3 p-4">
                                <input type="date" id="InputDob" name="dob" placeholder="Ngày sinh" class="form-control mb-3 p-4">
                                <div class="d-grid my-3">
                                    <button type="submit" class="btn btn-dark btn-lg rounded-1">Đăng ký</button>
                                </div>
                                <div class="d-grid my-3">
                                    <button type="submit" class="btn btn-dark btn-lg rounded-1">Quay lại đăng nhập</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="Footer.jsp"></jsp:include>
<!-- Script -->
<script>
    setTimeout(function () {
        var errorMessage = document.getElementById('errorMessage');
        var errMessage = document.getElementById('errMessage');
        if (errorMessage || errMessage) {
            errorMessage.style.display = 'none';
            errMessage.style.display = 'none';
        }
    }, 2000);

</script>

<script>
    ddocument.addEventListener('DOMContentLoaded', function () {
        var signupForm = document.getElementById("signup");
        var loginButton = document.getElementById("loginButton");

        signupForm.addEventListener("submit", function (event) {
            if (!isFormValid()) {
                event.preventDefault(); // Ngăn chặn việc submit form nếu form không hợp lệ
                displayErrorMessage();
            }
        });

        function isFormValid() {
            var inputs = signupForm.querySelectorAll("input");
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].value.trim() !== "") {
                    return true;
                }
            }
            return false;
        }

        function displayErrorMessage() {
            var errorDiv = document.createElement("div");
            errorDiv.classList.add("alert", "alert-danger");
            errorDiv.textContent = "Đăng ký không thành công. Vui lòng nhập đầy đủ thông tin.";
            var formContainer = document.getElementById("nav-register-tab");
            formContainer.insertBefore(errorDiv, signupForm);
            setTimeout(function () {
                errorDiv.remove();
            }, 2000);
        }

        loginButton.addEventListener("click", function () {
            window.location.href = "login.jsp"; // Chuyển hướng đến trang đăng nhập khi nhấn vào nút "Quay lại đăng nhập"
        });
    });


</script>



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

