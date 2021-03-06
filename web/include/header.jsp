<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="libs.Utils" %>
<%@ page import="backend.model.Account" %>
<%@ page import="backend.model.SocialAccount" %><%--
  Created by IntelliJ IDEA.
  User: LeVu
  Date: 7/26/2020
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Logo -->
        <div id="logo-section">
            <a id="logo" href="#" style="text-decoration: none">
                <img alt="Logo" src="../frontend/img/logo.png" width="50" height="50">
                <span id="logo-text">LearnMath</span>
            </a>
        </div>
        <!-- Navigation button -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Đăng ký lớp học</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Tìm giáo trình</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Làm bài tập</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Làm bài thi</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Hướng dẫn
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Sử dụng cơ bản</a>
                        <a class="dropdown-item" href="#">Cách đăng ký bài học và tra cứu thông tin học tập</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Về chúng tôi</a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- Login + SignUp -->
        <%Account acc = (Account) request.getSession().getAttribute("account");%>
        <%SocialAccount socialAcc = (SocialAccount) request.getSession().getAttribute("social-account");%>
        <%if (acc == null && socialAcc == null) { %>
        <div id="account-section">
            <a style="text-decoration: none" class="account-btn btn btn-link" id="sign-in"
               href="frontend/html/Login">Đăng nhập</a>
            <a style="text-decoration: none" class="account-btn btn btn-primary" id="sign-up"
               href="<c:url value="/frontend/html/register.jsp"/>">Đăng ký</a>
        </div>
        <%} else if (socialAcc != null && acc == null){%>
        <div id="account-section">
            <span>Xin chào, <%=socialAcc.getName()%></span>
            <a style="text-decoration: none" class="account-btn btn btn-link"
               href="frontend/html/Login?action=logout">Đăng xuất</a>
        </div>
        <%} else {%>
        <div id="account-section">
            <span>Xin chào, <%=acc.getUsername()%></span>
            <a style="text-decoration: none" class="account-btn btn btn-link"
               href="frontend/html/Login?action=logout">Đăng xuất</a>
        </div>
        <%}%>
    </nav>
</div>