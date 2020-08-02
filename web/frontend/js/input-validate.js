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