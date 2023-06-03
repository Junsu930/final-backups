document.getElementById("faq-img").addEventListener("click", function(){
	
	let faqWindow = document.getElementById("faqBox");
	let faqStyle = faqWindow.style.display;
	
	if(faqStyle =='none' || faqStyle == "" ){
		faqWindow.style.display = 'flex';
	}else{
		faqWindow.style.display = 'none';
	}

});

let qList = document.querySelectorAll(".Q-lists > li");

for(let each of qList){
    each.addEventListener("click", function(){
    
        console.log(this.value);
    })

}