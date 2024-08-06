<%-- 
    Document   : Header
    Created on : Mar 10, 2024, 12:50:58 PM
    Author     : quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <div class="container py-2">
        <div class="row py-4 pb-0 pb-sm-4 align-items-center">
            <div class="col-sm-4 col-lg-3 text-center text-sm-start">
                <div class="main-logo">
                    <a href="home">
                        <img src="images/logo.png" alt="logo" class="img-fluid">
                    </a>
                </div>
            </div>
            <!-- search header -->
            <div class="col-sm-6 offset-sm-2 offset-md-0 col-lg-5 d-none d-lg-block">
                <div class="search-bar border rounded-2 px-3 border-dark-subtle">
                    <form id="search-form" class="text-center d-flex align-items-center" action="search" method="Post">
                        <input type="text" class="form-control border-0 bg-transparent" name="txt" action="search" placeholder="Tìm kiếm sản phẩm" />
                        <button type="submit" class="search-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
                            </svg>
                        </button>
                    </form>
                </div>
            </div>
            <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-5 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
                <div class="d-none d-lg-flex align-items-end">
                    <ul class="d-flex justify-content-end list-unstyled m-0">
                        <c:if test="${sessionScope.user != null}"><!--đăng xuất-->
                            <li>
                                <a href="logout" class="mx-3"> Đăng xuất</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                            <li> <!-- đăng nhập -->
                                <a href="login" class="mx-3" action="login"> Đăng nhập</a>
                            </li>
                        </c:if>
                            <li class="cart-info">
                                <a href="cart">
                                    <iconify-icon icon="mdi:cart" class="fs-4 position-relative"></iconify-icon>
                                </a>
                            </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <hr class="m-0">
    </div>
    <!-- thanh container chính -->
   <div class="container">
        <nav class="main-menu d-flex navbar navbar-expand-lg ">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-body justify-content-between">
                    <ul class="navbar-nav menu-list list-unstyled d-flex gap-md-3 mb-0">
                        <li class="nav-item"><a href="home" class="nav-link active">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" role="button" id="pages" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu" aria-labelledby="pages">
                                <li><a href="shop" class="dropdown-item">Shop</a></li>
                                <li><a href="cart" class="dropdown-item">Cart</a></li>
                                <li><a href=""      class="dropdown-item">Blog</a></li>
                                <li><a href="login" class="dropdown-item">Account</a></li>
                                <li><a href="checkout" class="dropdown-item">Checkout</a></li>
                                <li><a href="Contact.jsp" class="dropdown-item">Contact</a></li>
                                <li><a href="AboutUs.jsp" class="dropdown-item">About Us</a></li>
                            </ul></li>
                        <li class="nav-item"><a class="nav-link" href="shop" >Shop</a></li>
                        <li class="nav-item"><a href="AboutUs.jsp"  class="nav-link" >About Us</a></li>
                        <li class="nav-item"> <a href="Contact.jsp" class="nav-link">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

</header>
