<%@ page import="libs.Utils" %><%--
  Created by IntelliJ IDEA.
  User: MTGR
  Date: 8/2/2020
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <title> Mã xác nhận </title>
    <script src="../js/input-validate.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/Verification.css">
    <!-- Libs -->
</head>
<body>
<div class="container">
<div id="login-wrap">
        <%String err = (String) request.getAttribute("err");%>
        <%if (err != null) {%>
    <span style="color: red;"><%=err%></span>
        <%}%>
    <div class="button" style="text-align: left;">
        <a href="<%=Utils.fullPath("frontend/html/register.jsp")%>" id="back-button" style="text-decoration: none">
            <i class="fa fa-arrow-left" aria-hidden="true"></i>
            &nbsp; Trang Đăng Ký
        </a>
    </div>
    <form id="verification-form">

    <div id="verification-section" >

        <h4>NHẬP MÃ XÁC NHẬN</h4>
        <input class="input" type="text" id="verification-input" name="vefification-input" >

        <div class="button">
            <button type="button" id="continue-button" onclick=" checkVerification()"  > Xác Nhận </button>
        </div>
    </div>
    </form>
</div>
</div>
</body>
</html>
