var erroresDev = new Array();

$(document).ready(function () {
    $('#enviarActa_Dev').click(function () {
        if (checkActaDev())
            enviarActaDev();
        else
            erroresActaDev();
    });
    putNumActaDevolucion(); 
});

function putNumActaDevolucion(){
    Proxy.ultimaActaDevolucion();
}

function checkActaDev(){
    var bool = true;
    if ($('#num_acta_dec2').val() === "") {
        bool = false;
        erroresDev.push("El campo del número de Acta de Decomiso relacionada con el acta actual no puede estar en blanco");
    }
    if ($('#nom_policiaDev').val() === "") {
        bool = false;
        erroresDev.push("Por favor indique el nombre del policía a cargo de la destrucción.");
    }
    if ($('#id_interesadoDev').val() === "") {
        bool = false;
        erroresDev.push("Debe proveer una identificación para el interesado(a).");
    }
    if ($('#fecha_dev').val() === "") {
        bool = false;
        erroresDev.push("Por favor indique la fecha en que se realizó la devolución.");
    }
    return bool;
}



function enviarActaDevolucion(){
    //var actaDecomiso = $('#num_acta_dec2').val();
    var nomPolicia = $('#nom_policiaDev').val();
    var policia = new Policia("2", nomPolicia, "b", "c", 1); 
    var id = $('#id_interesadoDev').val();
    var fecha= $('#fecha_dev').val();
    var interesado = new Interesado(1, "02201990", "jfnjj" ,id, "fndjf", "jfjdf", "fmnfm", "dn dfndf ds");
    var test = new Testigo(1, " ", " ", " ", " ");
    var acta = new ActaDecomiso(1, policia, test, "" ,fecha, " ", interesado, " ", " ");
    var actaDevolucion = new ActaDevolucion(0, policia, acta, interesado, fecha); 
    Proxy.actaDevolucion(JSON.stringify(actaDevolucion, replacer));
}


function actaDevolucionModal() {
    $('#exitoDev').modal('show');
    window.setTimeout(hide_modalDev, 2000);
    document.getElementById("acta_devolucion").reset();
}


function hide_modalDev() {
    $('#exitoDev').modal('hide');
}



function erroresActaDev(){
    $('#errorListDev').html(' ');
    $('#errorListDev').append("<strong>Atención, se presentaron los siguientes errores:\n</strong>");
    for (var i = 0; i < erroresDev.length; i++) {
        $('#errorListDev').append("<p>" + (i + 1) + ") " + erroresDev[i] + "</p>");
    }
    $('#errorListDev').show();
    $(window).scrollTop(0);
    erroresDev = [];
}