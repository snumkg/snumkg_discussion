$(function(){
	$('#new_article_table_wrapper').hide();

	$('#new_article_show_button').click(function(){
		$(this).hide();
		$('#new_article_table_wrapper').slideDown();
	});

	$('#new_article_hide_button').click(function(){
		$('#new_article_table_wrapper').slideUp();
		$('#new_article_show_button').show();
		return false;
	});

	$('#articles_list tbody .title').click(function(){
		var ele = $(this);
		if (ele.attr('state') == "off"){
			var title = ele.find('.article-title').css({
				"font-weight" : "bold",
				"border-bottom" : "1px dotted gray",
				"padding-bottom" : "5px",
				"margin-bottom" : "5px",
				"color" : "blue"
			});
			var body = ele.find('.article-body').slideDown();
			ele.attr('state', 'on');
		}
		else {
			var title = ele.find('.article-title').removeAttr('style');
			var body = ele.find('.article-body').slideUp();
			ele.attr('state', 'off');
		}
		return false;
	});
});
