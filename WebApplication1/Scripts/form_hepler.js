/*jslint browser:true */
var textList =
    [
        "Tutaj wprowadź Twoje imię. Inforamcja ta będzie służyła do identyfikacji Ciebie jako użytkownika.",
        "Tutaj wprowadź Twoje nazwisko. Inforamcja ta będzie służyła do identyfikacji Ciebie jako użytkownika.",
        "Tutaj wprowadź Twoją datę urodzin. Przez to będziemy wiedzieli czy możesz pełnoprawnie korzystać z serwisu.",
        "Tutaj wprowadź Twój adres E-Mail. Przez adres E-Mail będą mogli kontatkować się z Tobą potencjalni kupcy lub sprzedawcy.",
        "Tutaj wprowadź Twój numer telefonu. Przez numer telefonu będą mogli kontatkować się z Tobą potencjalni kupcy lub sprzedawcy."
    ];

var textHelp;

function registerFocusAndBlur(object, messageNumber) {
    "use strict";
    object.addEventListener("focus", function () {
        textHelp.innerHTML = textList[messageNumber];
    }, false);

    object.addEventListener("blur", function () {
        textHelp.innerHTML = "";
    }, false);

}

function showHelper() {
    "use strict";
    textHelp = document.getElementById("textHelper");
    registerFocusAndBlur(document.getElementById("imie"), 0);
    registerFocusAndBlur(document.getElementById("nazwisko"), 1);
    registerFocusAndBlur(document.getElementById("miesiac"), 2);
    registerFocusAndBlur(document.getElementById("email"), 3);
    registerFocusAndBlur(document.getElementById("telefon"), 4);

    var myForm = document.getElementById("myForm");
    myForm.addEventListener("submit", function () {
        return confirm("Czy chcesz założyć konto?");
    },
        false);

    myForm.addEventListener("reset", function () {
        return confirm("Czy chcesz zresetować wszystkie pola?");
    },
        false);
}

showHelper();