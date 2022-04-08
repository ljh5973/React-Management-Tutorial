
$(document).ready(function(){



    console.log(document.getElementById("category-t"))
    detailT=document.querySelector(".side-content-detail-t")
    console.log(detailT);
    document.getElementById("category-t").onclick=function(){
        $(".side-content-detail-t").toggleClass("active");
        if($(".side-content-detail-t").hasClass("active")===true){
            $(".side-content-detail-t").css('display','block')
        }else{
            $(".side-content-detail-t").css('display','none')
        }
    
    }
    document.getElementById("category-p").onclick=function(){
        $(".side-content-detail-p").toggleClass("active");
        if($(".side-content-detail-p").hasClass("active")===true){
            $(".side-content-detail-p").css('display','block')
        }else{
            $(".side-content-detail-p").css('display','none')
        }
    }
    
    document.getElementById("category-o").onclick=function(){
        $(".side-content-detail-o").toggleClass("active");
        if($(".side-content-detail-o").hasClass("active")===true){
            $(".side-content-detail-o").css('display','block')
        }else{
            $(".side-content-detail-o").css('display','none')
        }
    }
    document.getElementById("category-s").onclick=function(){
        $(".side-content-detail-s").toggleClass("active");
        if($(".side-content-detail-s").hasClass("active")===true){
            $(".side-content-detail-s").css('display','block')
        }else{
            $(".side-content-detail-s").css('display','none')
        }
    }

    // 차트 만들기
    new Chart(document.getElementById("age-chart"), {
        type: 'bar',
        data: {
          labels: ["~18세", "19~23세", "24~28세","29~33세","34~39세","40세~"],
          datasets: [{
            label: "%",
            backgroundColor: ["#0052A5","#0052A5","#0052A5","#0052A5","#0052A5","#0052A5"],
            data: [8,29,32,17,7,7]
          }]
        },
        options: {
          responsive: false,
          legend: {display: false },
          title: {
            display: true,
            text: '연령'
            }
          }
        });
    new Chart(document.getElementById("gender-chart"), {
        type: 'doughnut',
        data: {
            labels: ["남성", "여성"],
            datasets: [
            {
                label: "%",
                backgroundColor: ["#4e6dd1","#d472bf"],
                data: [82,18]
            }
            ]
        },
        options: {
            responsive: false,
            title: {
            display: true,
            text: '성별'
            }
        } 
    });
    
    function show () {
        document.querySelector(".background").className = "background show";
      }
      
      function close () { 
        document.querySelector(".background").className = "background";
      }
      
      document.querySelector("#show").addEventListener('click', show);
      document.querySelector("#close").addEventListener('click', close);
})