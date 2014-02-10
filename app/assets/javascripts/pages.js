$(document).ready(function(){
	// console.log("Jscript Lima Charlie");
	
	$( ".product-container" ).draggable({
        helper: "clone"
    });

    $( ".cart-droppable-area" ).droppable({
        activeClass: "droppable",
        hoverClass: "hover",
        tolerance: "touch",
        drop: function( event, ui ) {
            var productObj = $(this).find('div');
            productObj.append(div.draggable.clone());
        }
    });

    $("li").click(function() {
       $(".show-details").toggleClass("show-details");
    });
});