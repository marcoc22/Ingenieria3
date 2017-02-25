var errores = new Array();

$(document).ready(function () {
    //$("#decomisosTable").dataTable();
    var table = $('#decomisosTable').dataTable()
            .fnAddData([
                "2",
                "2017-01-05",
                "11:47:56 PM",
                "Heredia",
                "Mario Arias",
                "Luis Mora Mora",
                "Perecedero",
                "<button>Acta Donacion</button>"
            ]); 
    /*$('#decomisosTable tbody').on('click', 'button', function () {
        var data = table.row($(this).parents('tr')).data();
        alert(data[2]);
    });*/

});
