/*
* League Functions and JavaScript
* 
*/

function revokeTop(){
	$("#contents div").each(function(){
		$(this).removeClass("topDiv");
	});
}
function revokeSelected(){
	$(".league-tabs .tabs span").each(function(){
		$(this).removeClass("selected");
	});
}

function fixRibbon(){
	// only works for 1 slide item on load
	// will not work well for multiple slides
	// therefore, this is pretty much useless
	var cHeight = $(".caption").css("height");
	var nHeight = '<style>';
	nHeight +=	'.caption::before{border-width: 0px 50px ' ;
	nHeight += cHeight + ' 0px; ' ;
	nHeight +=	'} </style>';
	
	$(".ribbonHang").css("height", cHeight);

	$("#style").empty();
	$("#style").append(nHeight);
	//return false;
}

function addListener(){
	$("#home-page .bx-controls-direction .bx-next").on("click", function(){
	  	fixRibbon();
	  });
	//return false;
}

function hideEmAll(){
	$(".slip-up").each(function(){
		if( $(this).css("display") == "block" ){
			$(this).slideToggle();
		}
	});
}

function closeSVGCol(){
	$(".svgCol").slideToggle(); //close parent
}



var currentYear = (new Date).getFullYear();

$("#copyYear").text(currentYear);

$("#home-page").parent().parent().parent().addClass("home-padding");

$(".svgCol div").on("click", function(){
	var div = $(this).attr("id");
	div += "Row";
	$("#" + div).slideToggle();
	closeSVGCol();
});

$(".closeMe").on("click", function(){
	$(this).parent().slideToggle();	
	$(".svgCol").slideToggle();
});

$(".tabs span").on("click", function(){
	revokeTop();
	revokeSelected();
	var div = $(this).attr("id");
	$(this).addClass("selected")
	div += "Div";
	$("#" + div).addClass("topDiv");
});

$(document).foundation();

$(document).ready(function(){
	$('.bxslider').bxSlider();
	fixRibbon();
});
