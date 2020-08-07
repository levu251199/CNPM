<%@ page import="libs.Utils" %><%--
  Created by IntelliJ IDEA.
  User: MTGR
  Date: 8/2/2020
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng Ký</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <!-- Libs -->
    <script src="../js/input-validate.js"></script>
    <link rel="stylesheet" href="../lib/bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <script src="../lib/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/fontawesome/css/all.min.css">
    <script src="../lib/fontawesome/js/all.min.js"></script>
    <link rel="stylesheet" href="../css/register.css">
    <!-- Libs -->

</head>
<body onload="checkName(); checkPhone(); checkEmail()">

<div class="container">
<div id="Register-wrap">
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
    <!-- Form Login -->
    <form id="register-form" action="<%=Utils.fullPath("frontend/html/register.jsp")%>?action=register" method="post">
        <!-- tao name-->
        <h3> FORM ĐĂNG KÝ</h3>
        <div id="name-section">
            <%--@declare id="id-input"--%><label class="icon" for="id-input"><i class="far fa-address-card fa-lg"
                                                  style="color:#7abaff"></i></label>
            <input class="input" type="text" id="name-input" name="name-input" placeholder="Họ Tên">
            <div id="name-validate" style="text-align: center">
                <p id="blank-name" class="invalid"> không được bỏ trống</p>
                <p id="check-symbol" class="invalid">  không nhập ký tự đặc biệt</p>
            </div>
        </div>
        <!--Tao icon date -->
        <div id="date-section">
            <label class="icon" for ="date-input"><i class="far fa-calendar fa-lg"style="color:#7abaff"></i></label>
            <input class="input" type="date" id="date-input" name="date-input" >
        </div>
        <!-- tao icon gioi tinh-->
        <div id="sex-section">
            <label class=" icon" for="sex-input" ><i class="fa fa-male fa-lg" style="color:#7abaff"></i></label>
            <input class = "input" type="radio" id="sex-input" name="sex-input" value="" checked  > Nam
            <input class=" input" type = "radio" id="sex1-input" name="sex-input" value=" " > Nữ
        </div>
        <!--tao icon lop-->
        <div id="class-section">
            <%--@declare id="class-input"--%><label class="icon" for="class-input"  ><i class="fa fa-book fa-lg" style="color:#7abaff"></i></label>
            <select id="lop" name="lop"  >
                <option value="ChonLop">---Chọn Lớp---</option>
                <option value="1"> 1 </option>
                <option value="1"> 2 </option>
                <option value="1"> 3 </option>
                <option value="1">4</option>
                <option value="1">5</option>
                <option value="1">6</option>
                <option value="1">7</option>
                <option value="1">8</option>
                <option value="1">9</option>
                <option value="1">10</option>
                <option value="1">11</option>
                <option value="1">12</option>
            </select>
        </div>
            <!--Truong-->
            <div id ="school-section">
                <label class="icon" for="school-input"><i class="fa fa-school"style="color:#7abaff"></i ></label>
                <input class="input" type="text" id="school-input" name="school-input" placeholder="Trường">
               <div id="school-validate" style="text-align: center">
                    <p id="blank-name2" class="invalid">không được bỏ trống</p>
                    <p id="check-symbol2" class="invalid"> không nhập ký tự đặc biệt</p>
                </div>
            </div>
            <!-- tao phone-->
            <div id ="phone-section">
                <label class="icon" for="phone-input"><i class="fa fa-phone fa-lg"style="color:#7abaff"></i ></label>
                <input class="input" type="text" id="phone-input" name="phone-input" placeholder="Số Điện Thoại" value="+84 ">
                <div id="phone-validate" style="text-align: left;">
                    <p id="blank-phone" class="invalid">không được bỏ trống</p>
                    <p id="check-phone" class="invalid"> chỉ nhập số</p>
                </div>
            </div>
                <!--email-->
                <div id ="mail-section">
                    <label class="icon" for="mail-input"><i class="fa fa-mail-bulk fa-lg"style="color:#7abaff"></i ></label>
                    <input class="input" type="text" id="mail-input" name="mail-input" placeholder="Email">
                    <div id="email-validate" style="text-align: left;">
                        <p id="blank-mail" class="invalid">Email không được bỏ trống<</p>
                        <p id="check-mail" class="invalid"> Email phải theo dạng <b>abc_123@xyz.com</b></p>
                    </div>
                </div>
                <div class="button">
                    <button type="button" id="register-button" onclick="buttonRegister()" >ĐĂNG KÝ</button>
                </div>
    </form>

</div>
</div>


</body>
</html>
