<%@ page import="libs.Utils" %><%--
  Created by IntelliJ IDEA.
  User: MTGR
  Date: 8/2/2020
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head >
    <title>Thay đổi mật khẩu</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <script src="../js/input-validate.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/ChangePassword.css">
    <!-- Libs -->
</head>
<body onload="checkPass();checkRePass()">
<div class="container">
    <div id="ChangePass-wrap">
            <%String err = (String) request.getAttribute("err");%>
            <%if (err != null) {%>
        <span style="color: red;"><%=err%></span>
            <%}%>
        <!-- Image -->
        <div class="button" style="text-align: left;">
            <a href="<%=Utils.fullPath("frontend/html/Verification.jsp")%>" id="back-button" style="text-decoration: none">
                <i class="fa fa-arrow-left" aria-hidden="true"></i>
                &nbsp; Trang Nhập Mã Xác Nhận
            </a>
        </div>
        <form id="changePass-form" action="<%=Utils.fullPath("frontend/html/ChangePassword.jsp")%>?action=register" method="post">

    <div>
        <h4> THAY ĐỔI MẬT KHẨU</h4>
    </div>
        <div>
    <input class="input" type="password" id="pass-input" name="pass-input" placeholder="Mật khẩu" >
            <div id="pass-validate" style="text-align: center">
                <h6>Mật khẩu phải bao gồm những điều kiện sau:</h6>
                <p id="length" class="invalid">Mật khẩu <b>không được bỏ trống</b></p>
                <p id="letter" class="invalid">Phải có ít nhất một <b>chữ thường</b></p>
                <p id="capital" class="invalid">Phải có ít nhất một <b>chữ in hoa</b></p>
                <p id="number" class="invalid">Phải có ít nhất một <b>chữ số</b></p>
            </div>
        </div>
        <div>
    <input class="input" type="password" id="repass-input" name="repass-input" placeholder=" Nhập lại Mật khẩu" >
            <div id="repass-validate" style="text-align: center">
                <p id="matchPass" class="invalid"> Mật khẩu không trùng khớp</p>

            </div>
        </div>
            <div>
                <input class="button1" type="button" id="button-continue" value="Xác Nhận" onclick="nonfitication()">
            </div>
            <div>
                <input class="button1" type="button" id="button-cancel " value="Hủy" onclick="cancelNonfitication()" >
            </div>


        </form>
    </div>


</div>
</body>
</html>
