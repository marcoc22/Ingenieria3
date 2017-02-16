var erroresDes = new Array();

$(document).ready(function () {
    $('#enviarActa_Des').click(function () {
        if (checkActaDes())
            enviarActaDes();
        else
            erroresActaDes();
    });
    putNumActaDestruccion(); 
});


function putNumActaDestruccion(){
    Proxy.ultimaActaDestruccion();
}

function checkActaDes(){
    var bool = true;
    if ($('#nom_policiaDes').val() === "") {
        bool = false;
        erroresDes.push("Por favor indique el nombre del policía a cargo de la devolución.");
    }
    if ($('#nombre_encargado').val() === "") {
        bool = false;
        erroresDes.push("Por favor indique el nombre de la persona a cargo de la destrucción.");
    }
    if ($('#fechaDes').val() === "") {
        bool = false;
        erroresDes.push("Por favor indique la fecha en que se realizó la destrucción.");
    }
    if ($('#nombre_testigo1').val() === "" || $('#apellido1_testigo1').val() === "" || $('#apellido2_testigo1').val() === "") {
        bool = false;
        erroresDes.push("Debe ingresar el nombre completo del testigo Nº1.");
    }
    if ($('#nombre_testigo2').val() === "" || $('#apellido1_testigo2').val() === "" || $('#apellido2_testigo2').val() === "") {
        bool = false;
        erroresDes.push("Debe ingresar el nombre completo del testigo Nº2.");
    }
    return bool;
}

function enviarActaDes() {  //Arreglar

    var pTestigo = document.getElementById("nombre_testigo");
    var idDecomiso = 0;

    var policia = new Policia("2", "a", "b", "c", 1);
    var testigo;
    if (pTestigo.selectedIndex === 1)
        testigo = new Testigo(1, $('#id_testigo').val(), $('#nombre_testigoText').val(), "asd", "asd");
    else
        testigo = new Testigo(1, " ", " ", " ", " ");
    var lugar = new Lugar(new Distrito(pDistrito.selectedIndex, pDistrito.options[pDistrito.selectedIndex].value), $('#direccion').val());
    var fechaDecomiso = $('#fecha').val();
    var horaDecomiso = $('#hora').val();
    var iDate = formatDate(new Date().getUTCDate());
    var interesado = new Interesado(1, $('#fechaNac').val() === "" ? iDate : $('#fechaNac').val(), lugar,
            $('#id_interesado').val() === "" ? "NA" : $('#id_interesado').val(), 
            $('#nombre_interesado').val() === "" ? "NA" : $('#nombre_interesado').val(),
            $('#apellido1_interesado').val() === "" ? "NA" : $('#apellido1_interesado').val(), 
            $('#apellido2_interesado').val() === "" ? "NA" : $('#apellido2_interesado').val());
    var decomisos = [new Decomiso(5, "a", 1, "xxx"), new Decomiso(6, "a", 1, "xxx")];
    var observaciones = $('#observaciones').val();
    // Decomiso(idDecomiso, nombre, cantidad, observaciones) 
    var actaDecomiso = new ActaDecomiso(0, policia, testigo, lugar,
            fechaDecomiso, horaDecomiso, interesado,
            decomisos, observaciones);
    Proxy.actaDecomiso(JSON.stringify(actaDecomiso, replacer));
}



function erroresActaDes(){
    $('#errorListDe').html(' ');
    $('#errorListDe').append("<strong>Atención, se presentaron los siguientes errores:\n</strong>");
    for (var i = 0; i < erroresDes.length; i++) {
        $('#errorListDe').append("<p>" + (i + 1) + ") " + erroresDes[i] + "</p>");
    }
    $('#errorListDe').show();
    $(window).scrollTop(0);
    erroresDes = [];
}