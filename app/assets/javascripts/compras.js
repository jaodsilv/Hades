function preencheLocalFalecimento(id, local) {
    if ($("#"+id).val() == "true")
        $("#endereco_remocao").val(local);
    else
        $("#endereco_remocao").val("");
}

function enableTaxas(){
    if($('#outros').is(':checked')){
    	$('.tipo_taxa_class').prop("disabled",false);
    	$('#valor_taxa').val("0");
    	$('#valor_taxa').prop("disabled",false);
        $("#tipo_taxa_creditar").prop("checked", true);
        $("#tipo_taxa_debitar").prop("checked", false);

    }else{
    	$('.tipo_taxa_class').prop("disabled",true);
    	$('#valor_taxa').val("0");
    	$('#valor_taxa').prop("disabled",true);
        calcula_valor_total();
    }
}

$(document).on('ready', function(){
    mudanca_urna();
    mudanca_revestimento();
    mudanca_veu();
    mudanca_enfeite();
    mudanca_iluminacao();
    mudanca_tipo_sepultamento();
    calcula_valor_total();
});


function mudanca_urna(){
    buscar_precos_ajax();
    $('#valor_urna').val(parseFloat($('#quantidade_urna').val()) * $('#nome_urna option:selected').attr('preco'));
    calcula_valor_total();
};

function mudanca_revestimento(){
    $('#valor_revestimento').val(parseFloat($('#quantidade_revestimento').val()) * $('#nome_revestimento option:selected').attr('preco'));
    calcula_valor_total();
}

function mudanca_veu(){
    $('#valor_veu').val(parseFloat($('#quantidade_veu').val()) * $('#nome_veu option:selected').attr('preco'));     
    calcula_valor_total();
}

function mudanca_enfeite(){
    $('#valor_enfeite').val(parseFloat($('#quantidade_enfeite').val()) * $('#nome_enfeite option:selected').attr('preco'));     
    calcula_valor_total();
}

function mudanca_iluminacao(){
    $('#valor_iluminacao').val(parseFloat($('#quantidade_iluminacao').val()) * $('#nome_iluminacao option:selected').attr('preco'));     
    calcula_valor_total();
}


function mudanca_tipo_sepultamento(){
    $('#valor_sepultamento').val(parseFloat($('#nome_tipo_sepultamento option:selected').attr('preco')));     
    calcula_valor_total();
}


function calcula_valor_total(){
    var valor_total = 0;

    valor_total += parseFloat($('#valor_urna').val());
    valor_total += parseFloat($('#valor_revestimento').val());
    valor_total += parseFloat($('#valor_veu').val());
    valor_total += parseFloat($('#valor_enfeite').val());
    valor_total += parseFloat($('#valor_iluminacao').val());
    valor_total += parseFloat($('#valor_sepultamento').val());

    if($('#outros').is(':checked')){
        if($('#tipo_taxa_creditar').is(':checked')){
            valor_total += parseFloat($('#valor_taxa').val());
        }else{
            valor_total -= parseFloat($('#valor_taxa').val());
        }
    }


    $('#valor_total').val(valor_total);
}

function buscar_precos_ajax(){
    $.ajax({
      url: "/compras/buscar_precos_ajax",
      method: "POST",
      data: { nome_urna: $('#nome_urna').val() }
    }).done(function() {
      alert('Voltou Mulequeee!')
    });
}


// function disableIfEqual(id, id_valor, valor) {
// 	id = '#'+id;
// 	if(document.getElementById(id_valor).value==valor) $(id).prop("disabled", true);
// 	else $(id).prop("disabled", false);
// }
