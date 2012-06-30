$(function(){
	$('.badge-button').click(function(){
		var article_id = $(this).attr('article-id');
		$.ajax({
			url:"/admin/articles/change_state",
			type:"get",
			dataType:"json",
			data : {id:article_id},
			success:function(x){
				var ele = $('[article-id='+x.article.id+']');
				ele.removeAttr('class');
				ele.addClass('badge').addClass('badge-button').addClass(x.state_badge).text(x.state_string);
				
			}
		});
		return false;
	});
});
