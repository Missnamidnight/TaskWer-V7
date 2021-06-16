$('.finalizar').on('click', function(e) {
    e.preventDefault();
    var $this = $(this),
        url = $this.data('url'),
        $descripcion = $this.closest('tr').find('.descripcion')
    textoContrario = $this.data('textoContrario');
    textoActual = $this.text();

    $this.addClass('disabled');

    $.post(url, {})
        .done(function(respuesta) {
            if (respuesta.finalizada) {
                $descripcion.html('<s style="color:#ffa5ff;">' + $descripcion.text() + '</s>');
            } else {
                $descripcion.html($descripcion.text());
            }
            $this.text(textoContrario);
            $this.data('textoContrario', textoActual);
            $this.removeClass('disabled');
        })
        .fail(function() {
            $this.removeClass('disabled');
        });
});
const lista = document.getElementById("lista");

Sortable.create(lista, {

    animation: 150,
    chosenClass: "seleccionado",
    //ghostClass: "fantasma"
    dragClass: "drag",
     update: function() {
        $post("ajax.php", $(this).sortable('serialize'));
     },
   
    group: "lista-tareas",
    store:{
         //obtener orden de listado
         get: (sortable) => {
            const orden =  localStorage.getItem(sortable.options.group.name);
            return orden ? orden.split('|') : [] ;
 
         },
        //Guardamos el orden del listado
        set: (sortable) =>{
            const orden = sortable.toArray();
            localStorage.setItem(sortable.options.group.name, orden.join('|'));

        }

       
    }
});

