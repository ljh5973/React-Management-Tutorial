
$(document).ready(function(){
	(function(){
	getProductList()
	})();
})


var adminpageFlag = false;
var adminpageFilterFlag = false;

function getProductList(){
 adminpageFlag=false;

 
 	$.getJSON("getProductList", function(data){
 	console.log(data);
 	writeList(data);
 	})
}


function writeList(data){
	var strAdd="";
	
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
