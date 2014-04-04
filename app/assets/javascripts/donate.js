$(document).ready(function(){ 
    $('.org').css("margin-top","1000px");
    $('.org').fadeIn(2000,function(){
       $(this).animate({"top" : "-1000"},1500);
     });    
});