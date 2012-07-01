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

	$('#articles_list tbody .article-title').click(function(){
		var ele = $(this);
		if (ele.attr('state') == "off"){
			var title = ele.css({
				"font-weight" : "bold",
			});
			var body = ele.next().slideDown();
			ele.attr('state', 'on');
		}
		else {
			var title = ele.removeAttr('style');
			var body = ele.next().slideUp();
			ele.attr('state', 'off');
		}
		return false;
	});

	$('.article-comment-show-button').click(function(){
		$(this).next().show();
		$(this).hide();
		return false;
	});
	$('.article-comment-hide-button').click(function(){
		$(this).parent().prev().show();
		$(this).parent().hide();
		return false;
	});

});
