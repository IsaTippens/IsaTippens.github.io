function setYear() {
    let year = new Date().getFullYear();
    if (year > 2020)
        document.getElementById("year").innerHTML = "2020-" + year
    else
        document.getElementById("year").innerHTML = year
}

window.onload = setYear;
