<!--HTML5 시작 코딩-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
 
<!--사이트 이름 및 아이콘 등록명-->
<title>CAUcon</title> 
 
<!--JQurey Mobile 연결 -->
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>

<!--css -->
<style type="text/css">/*스마트폰 세로*/
@media all and (max-width:360px){
	#device2{ position:absolute; top:-100000px}
	#device3{ position:absolute; top:-100000px}
	.thum{ width:50%;height:auto;float:left}
	/*#device2,#device3{ position:absolute; top:-100000px}*/
}
/* 스마트폰 가로 / 태블릿 세로  */
@media all and (min-width:361px) and (max-width:960px) {
	#device1{ position:absolute; top:-100000px}
	#device3{ position:absolute; top:-100000px}
	.thum{ width:25%;height:auto;float:left}
}
/* 태블릿 가로 */
@media all and (min-width:961px) and (max-width:1280px) {
	#device1{ position:absolute; top:-100000px}
	#device2{ position:absolute; top:-100000px}
	.thum{ width:12.5%;height:auto;float:left}
}
/* 웹 */
@media all and (min-width:1281px) {
}
.ui-page{background:url("bg_bd.png")}

/*blog css 가로 세로 배경 마진 패딩 규칙*/
#blog{ width:auto; height:60px; background:url(img/blog_bg.png)}
#blog_icon{ width:80px; height:60px; background:url(img/blog_icon.png)}

/*페이스북*/
#facebook{ width:auto; height:60px; background:url(img/fb_bg.png)}
#facebook_icon{ width:80px; height:60px; background:url(img/fb_icon.png)}

/*email*/
#mail{ width:auto; height:60px; background:url(img/mail_bg.png)}
#mail_icon{ width:80px; height:60px; background:url(img/mail_icon.png)}

/*send*/
#send{ width:auto; height:60px; background:url(img/send_bg.png)}
#send_icon{ width:80px; height:60px; background:url(img/send_icon.png)}


.arrow{ width:60px; height:60px; background:url(img/arrow.png); float:right; margin-top:-60px}
.box{ padding:5px;}
/*클래스라서 모두 적용됨.*/


</style>

</head>

<body>
<!--하나의 페이지를 설정함-->

<div data-role="page"> <!--제이쿼리 문법-->
<!--상단 타이틀 영역 설정-->
<!--앱이름-->
<div data-role="header">
<h1>최은호</h1>
</div> 


<!--device1 : 스마트폰 세로-->
<div id="device1">
	<img src="img/device1.png" width="100%">
</div>

<!--device2 : 스마트폰 가로 && 태블릿 세로-->
<div id="device2">
	<img src="img/device2.png" width="100%">
</div>

<!--device3 : 태블릿 가로-->
<div id="device3">
	<img src="img/device3.png" width="100%">
</div>

<!--blog-->
<div id="blog">
<a href= "http://www.ictstory.com/">
	<div id="blog_icon"></div>
    <div class="arrow"></div>
</a>    
</div>

<!--facebook-->
<div id="facebook">
<a href= "http://www.facebook.com/cenenh">
	<div id="facebook_icon"></div>
    <div class="arrow"></div>
</a>    
</div>

<!--email-->
<div id="mail">
<a href= "mailto:cenenh@daum.net">
	<div id="mail_icon"></div>
    <div class="arrow"></div>
</a>    
</div>

<!--email-->
<div id="send">
<a href= "tel:01038238831">
	<div id="send_icon"></div>
    <div class="arrow"></div>
</a>    
</div>

<!--thum-->
 <div class="thum"><div class="box"><a href="#sub" data-transition="flip"><img src="img/thum/work1.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#sub2"><img src="img/thum/work2.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work3.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work4.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work5.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work6.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work7.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work8.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work9.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work10.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work11.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work12.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work13.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work14.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work15.png" width="100%"></a></div></div>
 <div class="thum"><div class="box"><a href="#"><img src="img/thum/work16.png" width="100%"></a></div></div>
 
 <!--반응형웹일때 2칸이냐 4칸이냐 8칸이냐 해주는것-->
 
 
<!--하단 영역 설정-->
<div data-role="footer" data-position="fixed">
<h4>Copyrightⓒ2014 CAUcon</h4>
</div>
    
</div>    <!--main_page 닫아줌-->    

<!--sub_page-->
<!--sub_page에는 id를 달아줘야함.-->
<div data-role="page" id ="sub">
	<div data-role="header">
    	<a href="#" data-icon="home" data-rel="back">HOME</a>
        <h1>최은호</h1>
     </div>
		<div class="box"><img src="img/1.jpg" width="100%"></div>
        <div class="box"><img src="img/2.jpg" width="100%"></div>
        <div class="box"><img src="img/3.jpg" width="100%"></div>
	<div data-role="footer" data-position="fixed">
	<h4>CAUcon</h4>
	</div>
</div>



</body>
</html>