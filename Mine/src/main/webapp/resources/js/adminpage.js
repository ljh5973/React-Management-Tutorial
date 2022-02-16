
$(document).ready(function(){
	(function(){
	getProductList()
	})();
})


var adminpageFlag = false;
var adminpageFilterFlag = false;

function getProductList(){

 
 	$.getJSON("getProductList", function(data){
 	console.log(data);
 	writeList(data);
 	})
}


function writeList(data){
	console.log(data);
	var strAdd="";
		for(var i = 0; i < data.length; i++) {               	
           strAdd += '<tr><input type="hidden" data-name="pno" data-num="' + i + '" value="'+data[i].pno+'">';
           strAdd += '<td class="selector"><input type="checkbox" name="productSelector" id="" data-pno="'+data[i].pno+'"></td>';
           strAdd += '<td class="thumb-img"><div><div class="product-thumbnail"><img id="updateFileImg'+i+'" src="../resources/test/'+data[i].p_imgAddr+'"></div><div class="update-form update-img" data-num="'+i+'"><label class="btn btn-default file-label" for="file'+i+'">이미지 수정</label><input type="file" id="file'+i+'" data-name="img" onchange="readUpdateURL('+i+');"></div></div></td>';
           strAdd += '<td><span data-num="'+i+'">'+data[i].pName+ '</span><input type="text" data-num="'+i+'" data-name="pName" class="form-contorl update-form update-name" value="'+data[i].pName+'"></td>';
           strAdd += '<td><span data-num="'+i+'">'+data[i].pTitle+ '</span><input type="text" data-num="'+i+'" data-name="pTitle" class="form-contorl update-form update-title" value="'+data[i].pTitle+'"></td>';
           strAdd += '<td><span data-num="'+i+'">'+data[i].pBrand+ '</span><input type="text" data-num="'+i+'" data-name="pBrand" class="form-contorl update-form update-brand" value="'+data[i].pBrand+'"></td>';
           strAdd += '<td><span data-num="'+i+'">'+data[i].uniqueName+ '</span><input type="text" data-num="'+i+'" data-name="uniqueName" class="form-contorl update-form update-uniquename" value="'+data[i].uniqueName+'"></td>';
           strAdd += '<td><span data-num="'+i+'">'+data[i].price+ '</span><input type="text" data-num="'+i+'" data-name="price" class="form-contorl update-form update-price" value="'+data[i].price+'"></td>';
           strAdd += '<td><span>'+data[i].regdate+'</span></td>';
           strAdd += '<td><button data-toggle="modal" data-target="#detailModal" onclick="showDetail('+i+');">자세히보기</button></td>';
           strAdd += '<input type="hidden" data-num="'+i+'" value="'+data[i].pCategory+'">';
           strAdd += '<input type="hidden" data-num="'+i+'" value="'+data[i].pDetail+'">';
           strAdd += '<input type="hidden" data-num="'+i+'" value="'+data[i].uniqueName+'">';
           strAdd += '<td>';
           strAdd += '<div class="product-data-btn">';
           strAdd += '<button class="btn btn-info btn-block" data-num="'+i+'" onclick="#">수정</button>';
           strAdd += '<button class="btn btn-danger btn-block" data-num="'+i+'" data-pno="'+data[i].pno+'" onclick="#">삭제</button>';
           strAdd += '</div>';
           strAdd += '</td>';
           strAdd += '</tr>';
	
	}
	
	$("#adminpageProductlist").html(strAdd);
}

//상품상세 자세히보기
function showDetail(dataNum) {    		
	var updateDataNum = $("button[data-state='updating']").data("num");
	if(adminpageFlag == true) {
		if(updateDataNum != dataNum) {
			adminpageFlag == false;
			cancelUpdate(updateDataNum);
		}
	}
	
	var selector = "input[data-num='" + dataNum + "']input[type='hidden']";
	var data = $(selector);
	console.dir(data);
	$(".adminpage-detailmodal-pno").children('span').html(data[0].value); //상품번호
	
	$(".adminpage-detailmodal-category > .select-form").children('span').html(data[1].value); //카테고리
	$(".adminpage-detailmodal-category > .update-form").children('select').val(data[1].value).prop("selected", true);
	
	$(".adminpage-detailmodal-detailtitle > .select-form").children('span').html(data[2].value); //상세이름
	$(".adminpage-detailmodal-detailtitle > .update-form").children('input').val(data[2].value);
	
	$(".adminpage-detailmodal-detail > .select-form").children('span').html(data[3].value); //상세설명
	$(".adminpage-detailmodal-detail > .update-form").children('textarea').val(data[3].value);

}

//사이드바
$(".adminpage-regist-btn").click(function(){
    $(".product-manage-area").css("display","none")
    $(".product-regist-area").css("display","block");
})
$(".adminpage-manage-btn").click(function() {
    $(".product-manage-area").css("display","block")
    $(".product-regist-area").css("display","none");
})
$(".adminpage-logout-btn").click(function() {
	location.href = "adminLogout";
})
$(".adminpage-chat-btn").click(function() {
	location.href = "adminchat";
})
$(".adminpage-management-btn").click(function() {
	location.href = "adminpage";
})





//사이드바 끝

//상품 선택해제
$("#uncheckedBtn").click(function() {
	$("input[name='productSelector']:checked").prop("checked", false);
})

//자바 스크립트 파일 미리보기 기능
function readURL(input) {
   	if (input.files && input.files[0]) {
   		
       	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
       	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
    	reader.readAsDataURL(input.files[0]); 
        $(".img-inner").css("display", "block");
       	
       	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
           	$('#fileImg').attr("src", event.target.result); 
           	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
    	}
   	}
}
$("#file").change(function() {
	console.log(this);
    readURL(this); //this는 #file자신 태그를 의미
});
