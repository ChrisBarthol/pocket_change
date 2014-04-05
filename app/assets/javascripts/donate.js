$(document).ready(function(){ 
    $('.org').css("margin-top","1000px");
    $('.org').fadeIn(2000,function(){
       $(this).animate({"top" : "-1000"},1500);
     });  

	var animateDirection = {"right" : '100%', "opacity": -.5};
		
    $('.skip').on( "click", function(e){
    	e.preventDefault();
    	$('.org').animate(animateDirection,1000, function(){
			location.reload();
		});
    });
});