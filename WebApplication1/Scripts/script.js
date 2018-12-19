/*jslint browser:true */

function checkTime(i) {
    "use strict";
    if (i < 10) {
        i = "0" + i;
    }
    // add zero in front of numbers < 10
    return i;
}

function startTime() {
    "use strict";
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById("clock").innerHTML = (h + ":" + m + ":" + s);
    setTimeout(startTime, 500);
}

function downloadJSAtOnload(script_name) {
    "use strict";
    var element = document.createElement("script");
    element.src = script_name;
    document.body.appendChild(element);
}

function usersCount() {
    "use strict";
    var count = document.getElementById("usersCount");
    var random = Math.floor(Math.random() * 1001);
    count.innerHTML = count.innerHTML + random;
}

function meterGrow() {
    "use strict";
    var i = 0;
    var meterValue = document.getElementById("meterValue");
    meterValue.value = 0;
    while (i <= 70) {
        meterValue.value = i / 100;
        i += 1;
    }
}

function fireFunctions() {
    "use strict";
    startTime();
    usersCount();
}
