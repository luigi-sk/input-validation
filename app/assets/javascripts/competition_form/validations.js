//
//
//
//
//

function numbersonly(e, textik) {
    var unicode=e.charCode ? e.charCode : e.keyCode;


    if (unicode==43) {
        if (textik.replace(/ /gi,"") == "") {
            return true;
        } else return false;
    }

    if (unicode!=8 && unicode!=9 && unicode!=35 && unicode!=36 && unicode!=37 && unicode!=39 && unicode!=46) {
        if (unicode<48||unicode>57) return false;
    }

    return true;
}
function bezdiakritiky(e, txtPrvok) {

    var unicode=e.charCode ? e.charCode : e.keyCode;

    if (unicode == 225) {
        document.getElementById(txtPrvok).value = document.getElementById(txtPrvok).value + "a";
        return false;
    }

    if (unicode == 237) {
        document.getElementById(txtPrvok).value = document.getElementById(txtPrvok).value + "i";
        return false;
    }

    if (unicode == 243) {
        document.getElementById(txtPrvok).value = document.getElementById(txtPrvok).value + "o";
        return false;
    }

    if (unicode == 250) {
        document.getElementById(txtPrvok).value = document.getElementById(txtPrvok).value + "u";
        return false;
    }

    return true;
}

function is_email(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}