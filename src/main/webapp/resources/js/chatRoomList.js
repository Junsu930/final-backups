
window.onload = function(){
    createRoom();
    getRoom();
}

function getRoom(){
    commonAjax('/fin/getRoom',"",'post',function(result){
        createChatRoom(result);
    });

}

function createRoom(){
    // 채팅방 생성용 함수 나중에 사용;

}

function createChatRoom(res){
    if(res != null){
        console.log(res);
    }
}





function goRoom(number){
    alert("방으로 간다 goRoom 실행" + number);
    wsOpen(number);
}


function commonAjax(url,parameter,type,calbac,contentType){
    $.ajax({
        url:url,
        data:parameter,
        type : type,
        contentType : contentType != null? contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
        success : function(res){
            calbac(res);
        }

    })
}