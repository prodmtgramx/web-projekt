/*jslint browser:true */

var searchButton = document.getElementById("searchButton");
var searchItem = document.getElementById("searchItem");

function checkIfEmpty() {
    "use strict";
    if (searchItem.value === "") {
        window.alert("Nie wpisałeś czego szukasz!");
    }
}

searchButton.addEventListener("click", checkIfEmpty);