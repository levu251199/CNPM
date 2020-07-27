<%@ page import="libs.Utils" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <!-- Libs -->
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/login.css">
    <!-- Libs -->
</head>
<body>
<div class="container">
    <div id="login-wrap">
        <!-- Image -->
        <div id="img-section">
            <a id="anchor-img">
                <img alt="Login" src="../img/fit.png" width="280px" height="280px">
            </a>
        </div>
        <!-- Form Login -->
        <form id="login-form" action="<%=Utils.fullPath("frontend/html/Login")%>?action=login" method="post">
            <div id="id-section">
                <label class="icon" for="id-input"><i class="far fa-address-card fa-lg"
                                                      style="color:#7abaff"></i></label>
                <input class="input" type="text" id="id-input" name="id-input" placeholder="Email">
            </div>
            <div id="pass-section">
                <label class="icon" for="pass-input"><i class="fas fa-key fa-lg" style="color:#7abaff"></i></label>
                <input class="input" type="text" id="pass-input" name="pass-input" placeholder="Mật khẩu">
            </div>
            <div id="confirm-section">
                <input type="checkbox" name="status" id="status">
                <label for="status" id="status-text">Duy trì đăng nhập</label>
            </div>
            <div class="button">
                <button type="submit" id="login-button">Đăng nhập</button>
            </div>
            <div class="button">
                <a href="<%=Utils.fullPath("index.jsp")%>" id="back-button">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                    &nbsp; Trở về trang chủ
                </a>
            </div>
        </form>
    </div>
</div>
</body>
</html>