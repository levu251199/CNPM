function checkUsername(){
    var username = document.getElementById("id-input");
    var blankUsername = document.getElementById("blank-username");
    var check = document.getElementById("check-username");
    var usernameCheck = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    // When the user clicks on the email field, show the message box
    username.onfocus = function() {
        document.getElementById("username-validate").style.display = "block";
    }
    // When the user clicks outside of the email field, hide the message box
    username.onblur = function() {
        document.getElementById("username-validate").style.display = "none";
    }
    username.onkeyup = function() {
        //Validate format
        if(usernameCheck.test(username.value)) {
            check.classList.remove("invalid");
            check.classList.add("valid");
        } else {
            check.classList.remove("valid");
            check.classList.add("invalid");
        }

        // Validate blank
        if(username.value.length >= 1) {
            blankUsername.classList.remove("invalid");
            blankUsername.classList.add("valid");
        } else {
            blankUsername.classList.remove("valid");
            blankUsername.classList.add("invalid");
        }
    }
}

function checkPass(){
    var pass = document.getElementById("pass-input");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");
    // When the user clicks on the password field, show the message box
    pass.onfocus = function() {
        document.getElementById("pass-validate").style.display = "block";
    }
    // When the user clicks outside of the password field, hide the message box
    pass.onblur = function() {
        document.getElementById("pass-validate").style.display = "none";
    }
    // When the user starts to type something inside the password field
    pass.onkeyup = function() {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-z]/g;
        if(pass.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if(pass.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if(pass.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
        }

        // Validate length
        if(pass.value.length >= 1) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }
}
function checkName () {
    var name = document.getElementById("name-input")
    var school = document.getElementById("school-input")

    var blankName = document.getElementById("blank-name")
    var checkSymbol = document.getElementById("check-symbol")
    var blankName2 = document.getElementById("blank-name2");
    var checkSymbol2 = document.getElementById("check-symbol2");

    //when click field, show message box
    name.onfocus = function() {
        document.getElementById("name-validate").style.display = "block";
    }
    // When click outside field, hide the message box
    name.onblur = function() {
        document.getElementById("name-validate").style.display = "none";
    }
    name.onkeyup = function () {
        if(name.value == ""){
            blankName.classList.remove("valid");
            blankName.classList.add("invalid");
        }else{
            blankName.classList.remove("invalid");
            blankName.classList.add("valid");
        }
        var s = /^[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]*$/
        if(name.value.match(s)){
            checkSymbol.classList.remove("valid");
            checkSymbol.classList.add("invalid");
        }
        else {
            checkSymbol.classList.remove("invalid");
            checkSymbol.classList.add("valid");
        }
    }
    //when click field, show message box
    school.onfocus = function() {
        document.getElementById("school-validate").style.display = "block";
    }
    // When click outside field, hide the message box
    school.onblur = function() {
        document.getElementById("school-validate").style.display = "none";
    }

    school.onkeyup=function () {
        if(school.value == ""){
            blankName2.classList.remove("valid");
            blankName2.classList.add("invalid");
        }else{
            blankName2.classList.remove("invalid");
            blankName2.classList.add("valid");
        }
        var s = /^[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]*$/
        if(school.value.match(s)){
            checkSymbol2.classList.remove("valid");
            checkSymbol2.classList.add("invalid");
        }
        else {
            checkSymbol2.classList.remove("invalid");
            checkSymbol2.classList.add("valid");
        }
    }


}
//------------------------------------------------------------------------------
function checkPhone() {
    var phone = document.getElementById("phone-input")
    var blankPhone = document.getElementById("blank-phone");
    var checkPhone = document.getElementById("check-phone")
    //when click field, show message box
    phone.onfocus = function () {
        document.getElementById("phone-validate").style.display = "block";
    }
    // When click outside field, hide the message box
    phone.onblur = function () {
        document.getElementById("phone-validate").style.display = "none";
    }

    phone.onkeyup = function () {
        if (phone.value == "") {
            blankPhone.classList.remove("valid");
            blankPhone.classList.add("invalid");
        } else {
            blankPhone.classList.remove("invalid");
            blankPhone.classList.add("valid");
        }
        var number = /[0-9]/g;
        if (phone.value.match(number)) {
            checkPhone.classList.remove("invalid");
            checkPhone.classList.add("valid");
        } else {
            checkPhone.classList.remove("valid");
            checkPhone.classList.add("invalid");
        }
    }
}
//---------------------------------------------------------------------------------------------------
function checkEmail() {
    var mail = document.getElementById("mail-input");
    var blankMail = document.getElementById("blank-mail");
    var checkMail = document.getElementById("check-mail");
    var symbolCheck = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    // When the user clicks on the email field, show the message box
    mail.onfocus = function() {
        document.getElementById("email-validate").style.display = "block";
    }
    // When the user clicks outside of the email field, hide the message box
    mail.onblur = function() {
        document.getElementById("email-validate").style.display = "none";
    }
    mail.onkeyup = function() {
        if (mail.value == ""){
            blankMail.classList.remove("valid");
            blankMail.classList.add("invalid");
        }else {
            blankMail.classList.remove("invalid");
            blankMail.classList.add("valid")
        }
        if(symbolCheck.test(mail.value)) {
            checkMail.classList.remove("invalid");
            checkMail.classList.add("valid");
        } else {
            checkMail.classList.remove("valid");
            checkMail.classList.add("invalid");
        }

        }
}
//-------------------------------------------------------------------------------------------------
function buttonRegister() {
    var name = document.getElementById("name-input")
    var school = document.getElementById("school-input")
    var phone = document.getElementById("phone-input")
    var mail = document.getElementById("mail-input");
    if(name.value && school.value && phone.value && mail.value !=""  ){
        alert("Nhận mã xác nhận qua email vừa đăng ký")
        location.href="http://localhost:8080/LearnMath/frontend/html/Verification.jsp"
    }else {
        alert("Kiểm tra lại thông tin")
    }

}
//---------------------------------------------------------------------------------------------------
//trang ma xac nhan
function checkVerification() {
        var veriPass = document.getElementById("verification-input")

        if (veriPass.value == "") {
            alert("Chưa nhập mã xác nhận")
        } else {
            location.href = "http://localhost:8080/LearnMath/frontend/html/ChangePassword.jsp"
        }
    }
    //-----------------------------------------------------------------------------------------------
// trang doi mat khau
    function checkRePass() {
        var pass = document.getElementById("pass-input")
        var rePass = document.getElementById("repass-input")
        var matchPass = document.getElementById("matchPass")
        // When the user clicks on the password field, show the message box
        rePass.onfocus = function () {
            document.getElementById("repass-validate").style.display = "block";
        }
        // When the user clicks outside of the password field, hide the message box
        rePass.onblur = function () {
            document.getElementById("repass-validate").style.display = "none";
        }
        rePass.onkeyup = function () {

            if (pass.value != rePass.value) {
                matchPass.classList.remove("valid");
                matchPass.classList.add("invalid");
            } else {
                matchPass.classList.remove("invalid");
                matchPass.classList.add("valid");
            }
        }
    }

//funcition button trang thay đỏi mat khau
//funcition nut đk
    function nonfitication() {
        var pass = document.getElementById("pass-input")
        var rePass = document.getElementById("repass-input")
        if (rePass.value == "") {
            alert("Chưa nhập mật khẩu")
        }
        if (pass.value != rePass.value) {
            alert("Mật khẩu không trùng khớp")
        }
        if (pass.value == rePass.value) {
            alert("Hoàn thành đăng ký ")
        }
    }

//funcition nút hủy
    function cancelNonfitication() {
        alert("Xác nhận hủy đăng ký")
    }