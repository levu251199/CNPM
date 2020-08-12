<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="libs.Utils" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <!-- Libs -->
    <script src="../js/input-validate.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/login.css">
    <!-- Libs -->
</head>
<body onload="checkUsername(); checkPass()">
<%--<div id="fb-root"></div>--%>
<%--<script async defer crossorigin="anonymous"--%>
<%--        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=770462907055597"--%>
<%--        nonce="2JtEPSb0"></script>--%>

<%--<script>--%>
<%--    window.fbAsyncInit = function () {--%>
<%--        FB.init({--%>
<%--            appId: '770462907055597',--%>
<%--            cookie: true,--%>
<%--            xfbml: true,--%>
<%--            version: 'v8.0'--%>
<%--        });--%>

<%--        FB.AppEvents.logPageView();--%>

<%--    };--%>

<%--    FB.getLoginStatus(function (response) {--%>
<%--        statusChangeCallback(response);--%>
<%--    });--%>

<%--    function checkLoginState() {--%>
<%--        FB.getLoginStatus(function (response) {--%>
<%--            statusChangeCallback(response);--%>
<%--        });--%>
<%--    }--%>

<%--    (function (d, s, id) {--%>
<%--        var js, fjs = d.getElementsByTagName(s)[0];--%>
<%--        if (d.getElementById(id)) {--%>
<%--            return;--%>
<%--        }--%>
<%--        js = d.createElement(s);--%>
<%--        js.id = id;--%>
<%--        js.src = "https://connect.facebook.net/en_US/sdk.js";--%>
<%--        fjs.parentNode.insertBefore(js, fjs);--%>
<%--    }(document, 'script', 'facebook-jssdk'));--%>
<%--</script>--%>

<div class="container">
    <div id="login-wrap">
        <%--        <%String err = (String) request.getAttribute("err");%>--%>
        <%--        <%if (err != null) {%>--%>
        <%--        <span style="color: red;"><%=err%></span>--%>
        <%--        <%}%>--%>
        <!-- Image -->
        <div class="button" style="text-align: left;">
            <a href="<c:url value="/index.jsp"/>" id="back-button" style="text-decoration: none">
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
        <form id="login-form" action="Login?action=login" method="post">
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
            <div><a href="ChangePassword.jsp">Quên mật khẩu? Nhân vào đây</a></div>

            <!-- Captcha -->
            <%
                String error = (String) request.getSession().getAttribute("error");
                if (error != null && error.equals("Tên đăng nhập sai hoặc mật khẩu không đúng")) {
            %>
            <span style="color: mediumpurple; font-weight: bold">Tên đăng nhập sai hoặc mật khẩu không đúng</span>
            <%} else if (error != null) {%>
            <span style="color: mediumpurple; font-weight: bold">Tên đăng nhập sai hoặc mật khẩu không đúng</span>
            <div id="captcha-holder">
                <div>
                    <span style="font-weight: bold; color: darkgray">Mã bảo vệ</span>
                    <span style="font-weight: bold; color: darkgray">:</span>
                    <label>
                        <input id="captcha-input" name="captcha" type="text" required>
                    </label>
                </div>
                <div>
                    <span id="captcha-number"><%=error%></span>
                    <label>
                        <input name="re-captcha" style="display: none" value="<%=error%>">
                    </label>
                </div>
            </div>
            <%}%>
            <!-- Login button -->
            <div class="button">
                <button type="submit" id="login-button">Đăng nhập</button>
            </div>

            <div class="section-break">---------- Hoặc ----------</div>
        </form>
            <!-- Login with social media -->
        <div class="social-section">
            <a href="https://www.facebook.com/dialog/oauth?client_id=770462907055597&redirect_uri=https://learnmath.j.layershift.co.uk/fb-login"
               class="button">
                <button class="social-button" id="fb-button">
                    <i class="fab fa-facebook" aria-hidden="true"></i>
                    Đăng nhập bằng Facebook
                </button>
            </a>
            <%--            <div class="fb-login-button" data-size="large" data-button-type="login_with" data-layout="rounded"--%>
            <%--                 data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div>--%>

            <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=https://learnmath.j.layershift.co.uk/gg-login&response_type=code
    &client_id=433907476361-ku46m0kqe8mhid62pcoks8nkpqdhcso2.apps.googleusercontent.com&approval_prompt=force"
               class="button">
                <button class="social-button" id="gg-button">
                    <i class="fab fa-google" aria-hidden="true"></i>
                    Đăng nhập bằng Google+
                </button>
            </a>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    var onloadCallback = function () {
        alert("grecaptcha is ready!");
    };
</script>
</html>