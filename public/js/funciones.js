function actualizarLocalidades() {
    $('#departamento').change(function () {
        $.ajax({
            url: 'php/actualizar_localidades.php',
            type: 'POST',
            cache: false,
            data: 'id_departamento=' + $(this).val(),
            beforeSend: function () {
                // no sé... algo
            },
            success: function (data) {
                $('#localidad').html(data);
            }
        });
    })
}

$('#consulta').on('keydown', function(e) {
    var contenido = $(this).val();
    if (e.which == 13) {
        alert('anda')
    }
})
