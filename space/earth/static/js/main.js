function addClan(candidate,clan,rowNum){
	var url= "/knighthood/"+candidate+"/"+clan
	$.get(url,{},function(data){
		alert(data)
		$('#row'+rowNum).fadeOut(500);
	});
}