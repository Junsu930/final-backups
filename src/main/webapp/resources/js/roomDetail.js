let calendar;
let today = new Date();
let toWeeks = new Date();
let weeks =  new Date(toWeeks.setDate(toWeeks.getDate() + 7));
let tt = today.toISOString().split('T')[0];
let tw = weeks.toISOString().split('T')[0];
const schedule = document.getElementById("schedule");
const timeline = document.getElementById("timeline");
const timesClass = document.getElementsByClassName("times");
let greenList = new Array();

	document.addEventListener('DOMContentLoaded', function() {
    let calendarEl = document.getElementById('calendar');
    
    calendar = new FullCalendar.Calendar(calendarEl, {
    	initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면 (기본 설정: 달)
        locale: 'ko', // 한국어 설정
        expandRows: true, // 화면에 맞게 높이 재설정
        height: '500px', // calendar 높이 설정
        width: '500px',
        dateClick: function(info) {
        
        greenList = document.getElementsByClassName("greenDay");


        for(let i = 0; i<greenList.length; i++){
            if(greenList[i].classList.contains('greenDay')){

                greenList[i].classList.remove('greenDay');
            }else{

            }
        }
        

        const diffMSec = today.getTime() - info.date.getTime();
        const diffDate = diffMSec / (24 * 60 * 60 * 1000);

        if(diffDate<1 && diffDate >-6){

            $(info.dayEl).addClass('greenDay');
 
            schedule.innerHTML=info.dateStr;


            timeline.style.display = 'flex';
            for(let each of timesClass){
                if(each.classList.contains("onTime")) each.classList.remove("onTime");
            }


        }
        

        },
        events: [
            {
                start: tt,
                end: tw,
                overlap: false,
                display: 'background'
            }
        ]

	});

    
	calendar.render();
});




const times = document.getElementsByClassName("times");
const submitBtn = $('#timeSubmit');


for(let time of times){
    time.addEventListener("click", function(){
        
        
        
        if(!this.classList.contains("onTime")){
            this.classList.add("onTime");
        }else{
            this.classList.remove("onTime");
        }

        
        if(document.getElementsByClassName("onTime").length == 0){
            submitBtn.css('display', 'none');
            $('#roomDetailPhoto').css('display', 'none');
            $('#picto').css('display','none');
            $('.price-tag').css('display','none');
        }else{
            submitBtn.css('display', 'block');
            $('#roomDetailPhoto').css('display', 'flex');
            $('#picto').css('display','flex');
            $('.price-tag').css('display','flex');
        }


        let timeList = document.getElementsByClassName("onTime");
        
        $('#hoursOfUse').html(timeList.length + " 시간");

        $('#totalPrice').html("총 "+ timeList.length * 3000 + '원');
    })

}

document.getElementById("timeSubmit").addEventListener("click", function(){

    let timetable = new Array();

    let timeList = document.getElementsByClassName("onTime");

    for(let i= 0; i<timeList.length; i++){
        timetable.push(timeList[i].value);
    }

    console.log("날짜 : " + schedule.innerHTML + ", 예약할 시간 : " + timetable);

})

let webSoc; //웹소켓 변수 선언

// 채팅방 연결용 !
$("#oneChat").click(e=>{
    let ipAddr = document.getElementById("ipAddr").value;
    let rN = e.target.value;

    alert("버튼 클릭스");

    webSoc = new WebSocket("ws://" + ipAddr +':8080' + "/fin/chatting/" + rN);
});

$("#twoChat").click(e=>{
    let ipAddr = document.getElementById("ipAddr").value;
    let rN = e.target.value;


    console.log(rN);
    webSoc = new WebSocket("ws://" + ipAddr +':8080' + "/fin/chatting/" + rN);
});

$("#threeChat").click(e=>{
    let ipAddr = document.getElementById("ipAddr").value;
    let rN = e.target.value;

    console.log(rN);
    webSoc = new WebSocket("ws://" + ipAddr +':8080' + "/fin/chatting/" + rN);
})

