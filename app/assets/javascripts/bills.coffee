# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('#bill_Id_Cliente').parent().hide()
	clients = $('#bill_Id_Cliente').html()
	$('#bill_Id_Entidad').change ->
		entidad = $('#bill_Id_Entidad :selected').text()
		escaped_entity = entidad.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(clients).filter("optgroup[label='#{escaped_entity}']").html()

		if options
			$('#bill_Id_Cliente').html(options)
			$('#bill_Id_Cliente').parent().show()
		else
			$('#bill_Id_Cliente').empty()
			$('#bill_Id_Cliente').parent().hide()