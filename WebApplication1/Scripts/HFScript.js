/*jslint browser:true */
function load_header() {
    "use strict";
    var outterDiv = document.createElement("div");
    outterDiv.classList.add("header");

    var logoA = document.createElement("a");
    logoA.classList.add("logo");
    logoA.href = "#default";
    logoA.appendChild(document.createTextNode("TwojeOgłoszenia.PL"));

    var innerDiv = document.createElement("div");
    innerDiv.classList.add("header-right");

    var logoInfo = document.createElement("a");
    logoInfo.href = "index.html";
    logoInfo.appendChild(document.createTextNode("Informacje"));

    var logoKonto = document.createElement("a");
    logoKonto.href = "person_form.html";
    logoKonto.appendChild(document.createTextNode("Konto"));

    var logoOgl = document.createElement("a");
    logoOgl.href = "ad_form.html";
    logoOgl.appendChild(document.createTextNode("Dodaj ogłoszenie"));

    var logoOglAll = document.createElement("a");
    logoOglAll.href = "ads.html";
    logoOglAll.appendChild(document.createTextNode("Ogłoszenia"));

    outterDiv.appendChild(logoA);

    innerDiv.appendChild(logoInfo);
    innerDiv.appendChild(logoKonto);
    innerDiv.appendChild(logoOgl);
    innerDiv.appendChild(logoOglAll);

    outterDiv.appendChild(innerDiv);

    document.getElementById("header").appendChild(outterDiv);
}

function createList() {
    "use strict";
    var list = document.links;
    var outterDiv = document.createElement("div");
    outterDiv.classList.add("center");
    Array.prototype.forEach.call(list, function (child) {
        var newA = document.createElement("a");
        newA.href = child.href;
        newA.appendChild(document.createTextNode("  #" + child.text));
        outterDiv.appendChild(newA);
    });

    document.getElementsByTagName("footer")[0].appendChild(outterDiv);
}

function changeCSS() {
    "use strict";
    var btn1 = document.createElement("button");
    var btn2 = document.createElement("button");
    document.getElementsByTagName("footer")[0].appendChild(btn1);
    document.getElementsByTagName("footer")[0].appendChild(btn2);
    btn1.appendChild(document.createTextNode("Tryb dzień"));
    btn2.appendChild(document.createTextNode("Tryb noc"));

    btn1.addEventListener("click", function () {
        document.getElementsByTagName("body")[0].className = "";
    });

    btn2.addEventListener("click", function () {
        document.getElementsByTagName("body")[0].className = "bodycls";
    });
}

function mouseOnHoverText() {
    "use strict";
    var stringList = document.getElementsByTagName("span");
    Array.prototype.forEach.call(stringList, function (string) {
        string.addEventListener("click", function (e) {
            if (e.shiftKey) {
                if (string.className === "") {
                    string.className = "highlight";
                } else {
                    string.className = "";
                }
            }
        });
    });
}


load_header();
createList();
changeCSS();
mouseOnHoverText();