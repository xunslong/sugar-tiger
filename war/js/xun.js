$(function(){
	//alert('fds');
	initCtrl();
});



iniCtrl=function()
{
	
};


/**---Div rotate---Start----*/
var x, y, n = 0, ny = 0, rotINT, rotYINT
function rotateDIV() {
	x = document.getElementById("rotatey1")
	clearInterval(rotINT)
	rotINT = setInterval("startRotate()", 10)
}
function rotateYDIV() {

	if (document.all) {
		rotateDIV();
		return;
	}
	y = document.getElementById("rotatey1")
	clearInterval(rotYINT)
	rotYINT = setInterval("startYRotate()", 10)
}
function startRotate() {
	n = n + 1
	x.style.transform = "rotate(" + n + "deg)"
	x.style.webkitTransform = "rotate(" + n + "deg)"
	x.style.OTransform = "rotate(" + n + "deg)"
	x.style.MozTransform = "rotate(" + n + "deg)"
	if (n == 180 || n == 360) {
		clearInterval(rotINT);
		window.location.href = "/xun/comm/home/";
		if (n == 360) {
			n = 0
		}
	}
}
function startYRotate() {
	ny = ny + 1
	y.style.transform = "rotateY(" + ny + "deg)"
	y.style.webkitTransform = "rotateY(" + ny + "deg)"
	y.style.OTransform = "rotateY(" + ny + "deg)"
	y.style.MozTransform = "rotateY(" + ny + "deg)"
	if (ny == 180 || ny >= 360) {
		clearInterval(rotYINT)
		window.location.href = "/xun/comm/home/";
		if (ny >= 360) {
			ny = 0
		}
	}
}
/** ---Div rotate---End---- */