/*jslint browser:true */

var submitMessage = document.getElementById("submitMessage");
var email;

function getEmail() {
    "use strict";
    email = window.prompt("Podaj swój e-mail w celu kontaktu");
    document.writeln("email do kontaktu: " + email);
}

submitMessage.addEventListener("click", getEmail);