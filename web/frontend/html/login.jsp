<%@ page import="libs.Utils" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <!-- Libs -->
    <script src="../js/input-validate.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/login.css">
    <!-- Libs -->
</head>
<body onload="checkUsername(); checkPass()">
<div class="container">
    <div id="login-wrap">
        <%String err = (String) request.getAttribute("err");%>
        <%if (err != null) {%>
        <span style="color: red;"><%=err%></span>
        <%}%>
        <!-- Image -->
        <div class="button" style="text-align: left;">
            <a href="<%=Utils.fullPath("index.jsp")%>" id="back-button" style="text-decoration: none">
                <i class="fa fa-arrow-left" aria-hidden="true"></i>
                &nbsp; Trang chủ
            </a>
        </div>
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
                <div id="username-validate" style="text-align: left;">
                    <p id="blank-username" class="invalid">Email <b>không được bỏ trống</b></p>
                    <p id="check-username" class="invalid">Email phải theo dạng <b>abc_123@xyz.com</b></p>
                </div>
            </div>
            <div id="pass-section">
                <label class="icon" for="pass-input"><i class="fas fa-key fa-lg" style="color:#7abaff"></i></label>
                <input class="input" type="password" id="pass-input" name="pass-input" placeholder="Mật khẩu">
                <div id="pass-validate" style="text-align: left;">
                    <h6>Mật khẩu phải bao gồm những điều kiện sau:</h6>
                    <p id="length" class="invalid">Mật khẩu <b>không được bỏ trống</b></p>
                    <p id="letter" class="invalid">Phải có ít nhất một <b>chữ thường</b></p>
                    <p id="capital" class="invalid">Phải có ít nhất một <b>chữ in hoa</b></p>
                    <p id="number" class="invalid">Phải có ít nhất một <b>chữ số</b></p>
                </div>
            </div>
            <div id="confirm-section">
                <input type="checkbox" name="status" id="status">
                <label for="status" id="status-text">Duy trì đăng nhập</label>
            </div>
            <div class="button">
                <button type="submit" id="login-button">Đăng nhập</button>
            </div>

            <!-- Login with social media -->
            <div class="section-break">---------- Hoặc ----------</div>
            <div class="social-section">
                <div class="button">
                    <button class="social-button" id="fb-button">
                        <i class="fab fa-facebook" aria-hidden="true"></i>
                        Đăng nhập bằng Facebook
                    </button>
                </div>
                <div class="button">
                    <button class="social-button" id="gg-button">
                        <i class="fab fa-google" aria-hidden="true"></i>
                        Đăng nhập bằng Google+
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>