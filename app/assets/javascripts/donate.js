$(document).ready(function(){

	var orgsUrl = '/donations/new'

	$.ajax({
		type: 'GET',
		url: orgsUrl,
		dataType: 'json',
		success : function(data){
			for(var i=0; i < data.length; i++){
				console.log(data[i]);
			}
		}
	});

});