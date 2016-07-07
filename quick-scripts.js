/*
* Quick Accordion
*/
/*
* Info: .clickMe is a span, next to a div; when clicked, the div will be opened
* Ideally, these elements will be wrapped in an <li> or <div> in order to 
* be their only siblings.
*
* Use: <li class="faq-question">
*			<span class="clickMe">{@question}</span>
*			<div class="faq-answer panel">
*				{@answer}
*			</div>
*		</li>
*
*/
$(".clickMe").on("click", function(){$(this).next("div").slideToggle();});

/*
* Quick Dynamic Copyright Year
* 
* Info: To use, simply add a span with the ID of #copyYear in your footer.
*
* Use: <span class="info">&copy; <span id="copyYear"></span> by {@company}. </span>
*/
var currentYear = (new Date).getFullYear();
$("#copyYear").text(currentYear);



