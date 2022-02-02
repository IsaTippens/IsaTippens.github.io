function setYear() {
    let year = new Date().getFullYear();
    if (year > 2022)
        document.getElementById("year").innerHTML = "2022-" + year
    else
        document.getElementById("year").innerHTML = year
}

//https://stackoverflow.com/a/21984136
function getYearsSince(day, month, year) {
    var ageDifMs = Date.now() - new Date(year, month, day).getTime();
    var ageDate = new Date(ageDifMs);
    return Math.abs(ageDate.getUTCFullYear() - 1970);
}
function setAge() {
    document.getElementById("age").innerHTML = getYearsSince(1, 6, 2001)
}

function setCoding() {
    document.getElementById("coding").innerHTML = getYearsSince(1, 1, 2013)
}

function loadItAll() {
    setYear();
    setAge();
    setCoding();
}

window.onload = loadItAll
