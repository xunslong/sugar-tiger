<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel='stylesheet' type='text/css' href='/xun/css/xun.css'>
<script type="text/javascript" src="/xun/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="/xun/js/xun.js"></script>
<style type="text/css">
#navibar {
	top: 0px;
	left: 0px;
    border-bottom: solid 1px  #7fb80e;
	width: 100%;
	height: 27px;
	min-width: 1008px;
	position: fixed;
	margin: 0px;
	padding: 0px;
	background: silver;
	background-color: rgba(0, 83, 68, 0.2);/*#005344*/
}
#menuleft{
height: 25px;padding: 0;margin: 0;vertical-align: middle; top: 5px;
}
#menuleft li {
	top: 5px;
	float: left;
	list-style-type: none;
	width: 110px; height : 27px;
	/* border-right-style: solid;*/
	/* border-style: solid;*/ border-width : 1px;
	vertical-align: middle;
	text-align: center;
	border-width: 1px;
	height: 27px;
	position：absolute;
	/*color: white;*/
}
#menuleft li:HOVER {
    background: #78cdd1;
}
#menuleft li ul {
	line-height: 27px;
	list-style-type: none;
	text-align: center;
	width: 110px;
	position: relative;
    top: 9px;
    left:-9999px;
   
}
#menuleft li:hover ul { 
left: -40px; 
} 
#menuleft li ul li{
    /*border-top-style: solid;
    border-top-width: 1px;*/
    border-bottom-style: solid;
    border-bottom-width: 1px;
    color:#1d953f;
    background-color: rgba(0, 83, 68, 0.01);
        /*border-left-style: solid;
    border-left-width: 1px;
        border-right-style: solid;
    border-right-width: 1px;*/
}
#menuleft li ul li:HOVER{
   /* border-style: solid;
    border-color: red;*/
    background: #a3cf62;   
    color: red;
}
li a {
	text-decoration: none;
}
#leftmenu{
}
#gloabBtnDiv{
    width: 60px;
    height: 60px;
    right: 0px;
    position: fixed;
}
#gloabalNaviBtn{
    border-radius:50px;
    border-style:  solid 1px #87CEEB;
    /*border-color:#87CEEB;*/
    height: 50px;
    width: 50px;
    background-color: rgba(0, 139, 139, 0.1);/*#005344*/
   
    
    
}
</style>
<script language="JavaScript">	
	function init()
	{
		  var mb = document.getElementById("menu");
		 
	}
	
	onload=init();
	
	function globalBtnMouseDown(me,e)
	{
		//alert('f');
		//globalBtnX=me.offsetLeft;
		//globalBtnY=me.offsetTop;
		
		 e = e||window.event;
		 globalBtnX=e.layerX||e.offsetX;         
		 globalBtnY=e.layerY||e.offsetY;
	}
	
	function globalBtnMouseMove(me,e)
	{
		//me.style.left=e.offsetX;
		//me.style.top=e.offsetY;
		  e=e||window.event;
		  me.style.left=(e.clientX-x)+"px";
		  me.style.top=(e.clientY-y)+"px";
	}
	function naviBtnClick(me,e)
	{
		me.parent.style.left="200px";
		me.parent.style.top="200px";
	}
	var globalBtnX;
	var globalBtnY;
	/**---------btn move--------------start--------*/
	var a;
	document.onmouseup=function(){
	    if(!a)return;
	    document.all?a.releaseCapture():window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
	    a="";
	};
	document.onmousemove=function (d){
	    if(!a) return;
	    if(!d) d=event;
	    a.style.left=(d.clientX-b)+"px";
	    a.style.top=(d.clientY-c)+"px";
	};
	function move(o,e){
	    a=o;
	    document.all?a.setCapture():window.captureEvents(Event.MOUSEMOVE);
	    b=e.clientX-parseInt(a.style.left);
	    c=e.clientY-parseInt(a.style.top);
	    o.style.zIndex=getMaxIndex()+1;
	}
	function $(id){return document.getElementById(id);}
	function getMaxIndex(){
	    var index=0;
	    var ds=$('main').getElementsByTagName('div');
	    var l=$('main').getElementsByTagName('div').length;

	    for (i=0;i<l;i++)
	    {
	        if (ds[i].style.zIndex>index) index=ds[i].style.zIndex;
	    }
	    return index;
	}
	/**---------btn move--------------end--------*/
</script>
</head>
<body>
<div id="gloabBtnDiv" onmousemove="move(this,event);" 
style="top:0px; z-index:999;" ><input  type="submit" id="gloabalNaviBtn" value="Navigation" /></div> 
<div id="navibar">
<UL id="menuleft" >
<li class="leftmenu"><a href="/xun/comm/home/">HOME</a></li>
<li class="leftmenu">Micro Blog 
    <ul>
    <li><a href="/xun/microblog/">Micro Blog</a></li>
    <li><a href="#">To Be Make</a></li>
    </ul>
    </li>
<li class="leftmenu">BLOG
    <ul>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    </ul>
</li>
<li class="leftmenu">NOTE
    <ul>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    </ul>
</li>
<li class="leftmenu">CLOUD
 <ul>
    <li><a href="/pages/cloud/cloudmain.jsp">CLOUD</a></li>
    <li><a href="/xunslong/cloud">Action Test</a></li>
    <li><a href="#">To Be Make</a></li>
    </ul>
</li>
<li class="leftmenu">ALBUM
 <ul>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    <li><a href="#">To Be Make</a></li>
    </ul>
</li>
<li class="leftmenu">MessageBoard
 <ul>
    <li><a href="/xun/msgboard/msgboard/">Leave A Msg</a></li>
    </ul>
</li>
<li class="leftmenu">ABOUT</li>
<li class="rightmenu"><input type="text" style="width: 99px;" /></li>
<li class="rightmenu"><input type="submit" value="Search" onclick="hideNaviBar();"/></li>
<li class="leftmenu"><a href="#">LogOut</a></li>
</UL>

<UL id="menuright" >

</UL>

</div>

<br/><br/>
<div style="text-align: right;">
<a href="/xun/comm/home/">Home</a>&nbsp;&nbsp;&nbsp;
<a href="#">Log Out</a>&nbsp;&nbsp;&nbsp;
</div>
<br/>
<div style="text-align: right;">
<a href="#"  onclick="javascript:history.back();">Go Back</a>&nbsp;&nbsp;&nbsp;
<a href="#"  onclick="javascript:history.forward();">Go Forward</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<!--  
<a href="/xun/comm/home/">HOME </a>
<br/><br/>
<ul id="navigation" class="navigation">
<li ><a href="/xun/microblog/"> Micro Blog</a></li>
<li >BLOG</li>
<li >NOTE</li>
<li ><a href="/xun/cloud/cloud">CLOUD</a></li>
<li >ALBUM</li>
<li ><a href="/xun/msgboard/msgboard">Leave A Message</a></li>
<li ><a href="/xun/about/about">ABOUT</a></li>

</ul>
-->
<br/><br/><br/>
</body>
</html>
