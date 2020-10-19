
(() =>{
	
var list = document.querySelectorAll('.on_s');
var maks = document.querySelector('#maks');
var maksImg = document.querySelector('#maksImg');


for(var i=0;i<list.length;i++){
	list[i].onclick = function(){
		maksImg.src = this.src;
		maks.style.display = 'flex';
		
	}
}
maks.onclick = function(){
	maks.style.display = 'none';
}


})();