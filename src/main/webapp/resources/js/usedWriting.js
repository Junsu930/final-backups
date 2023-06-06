$('#usedTitlePlace').keyup(function(e){
    
    let cont = $(this).val();

    if(cont.length == 0 || cont.length == ''){
        $('#usedTitleInputTextLength').text('0/40');
    }else{
        $('#usedTitleInputTextLength').text(cont.length + '/40');
    }
})

