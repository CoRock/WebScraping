<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원가입 | 카페인기타 악보 레슨</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no" />
<meta name="naver-site-verification"
	content="e4bb86fe97c3b38371ab72808fcc16ae4dcfb15d" />
<meta name="google-site-verification"
	content="e6xOV2KyxPxWAd-yYtNzVcN0nCEIb5MTNGUIvspyiHo" />
<meta property="fb:app_id" content="1580996815504941">
<script type="text/javascript">
	//<![CDATA[
	window.gon={};gon.global_pg_imp_code="imp74841908";gon.imp_code="imp74841908";
	//]]>
	</script>
<meta name="description"
	content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
<meta name="keywords"
	content="이러닝솔루션,이러닝사이트제작,인터넷강의사이트제작,인강사이트제작, 학원사이트제작,동영상강의솔루션,lms,이러닝시스템,학습관리시스템,학원홈페이지제작,학원웹사이트제작,인터넷강의제작,임대형이러닝솔루션,이러닝홈페이지" />
<meta property="og:title" content="아카데미 클라우드에 오신 것을 환영합니다." />
<meta property="og:description"
	content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
<meta property="og:url" content="https://www.academy-cloud.net/" />
<meta property="og:image"
	content="https://res.cloudinary.com/clebee/image/upload/v1484723793/course-sample_det6e4.jpg" />
<meta property="og:site_name" content="아카데미 클라우드" />
<meta property="og:type" content="website" />
<meta name="twitter:title" content="아카데미 클라우드에 오신 것을 환영합니다." />
<meta name="twitter:description"
	content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
<meta name="twitter:url" content="https://www.academy-cloud.net/" />
<meta name="twitter:image"
	content="https://res.cloudinary.com/clebee/image/upload/v1484723793/course-sample_det6e4.jpg" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="academy_cloud" />
<link rel="stylesheet" media="all"
	href="build/css/application1-a6c61e2710.css" />
<link rel="stylesheet" media="all"
	href="build/css/application2-85e4fc93a5.css" />
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<script src="build/js/application1-a4063d0a78.js"></script>
<script src="build/js/application2-54ada6de25.js"></script>
<script src="build/js/webpages-8c64f3a7e3.js"></script>
<meta name="csrf-param" content="_token">
<meta name="csrf-token"
	content="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
<link rel="shortcut icon" type="image/x-icon"
	href="build/images/favicon-b51121bdcc.ico" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-57x57-92b0ca4e7a.png" sizes="57x57" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-60x60-e173c6cf40.png" sizes="60x60" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-72x72-6285d17d26.png" sizes="72x72" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-76x76-a0e8b12d87.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-114x114-a6c1d22a45.png" sizes="114x114" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-120x120-1160df2f3b.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-144x144-42371d6139.png" sizes="144x144" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-152x152-b2287ebfb1.png" sizes="152x152" />
<link rel="apple-touch-icon" type="image/png"
	href="build/images/apple-icon-180x180-4238e49192.png" sizes="180x180" />
<link rel="icon" type="image/png"
	href="build/images/favicon-32x32-11fda74e2d.png" sizes="32x32" />
<link rel="icon" type="image/png"
	href="build/images/favicon-96x96-b7105bf1e0.png" sizes="96x96" />
<link rel="icon" type="image/png"
	href="build/images/favicon-16x16-9dabd14c11.png" sizes="16x16" />
<link rel="icon" type="image/png"
	href="build/images/android-icon-192x192-d4e930a755.png" sizes="192x192" />
<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<!-- script type="text/javascript">$.cloudinary.config({"api_key":"695426152322879","cloud_name":"clebee"});</script-->
<script type="text/javascript"
	src="../service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body class="registrations new ">
	<div id="fb-root"></div>
	<script>
window.fbAsyncInit = function() {
  FB.init({
    appId      : '1580996815504941',
    xfbml      : true,
    version    : 'v2.4'
  });

  // $('#facebook_sign_in').click(function(e) {
  //   e.preventDefault();
  //   FB.login(function(response) {
  //     if (response.authResponse)
  //       window.location = '/users/auth/facebook/callback';
  //   });
  // });
};

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "../connect.facebook.net/ko_KR/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

	<script>
	!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
			document,'script','../connect.facebook.net/en_US/fbevents.js');

	fbq('init', '1516893358624675');
	fbq('track', "PageView");
</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=1516893358624675&amp;ev=PageView&amp;noscript=1" />
	</noscript>
	<div class="overlay" id="editable_overlay" role="dialog" tabindex="-1"
		aria-labelledby="editable_overlay">
		<div class="content"></div>
		<button type="button" class="btn btn-sm overlay-close"
			data-behavior="modal-close" aria-label="창닫기"></button>
	</div>
	<div class="wrapper">
		<header class="main-header"> <nav
			class="navbar navbar-default navbar-fixed-top bg">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse"
					data-target="#bs-cloud-academy-navbar-collapse"
					aria-expanded="false">
					<span class="sr-only">열기/펼치기</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<div class="vertical-container vertical-container-v">
					<a class="navbar-brand" href="index.jsp"> <img
						src="http://res.cloudinary.com/clebee/image/upload/bdvabm8ivhtwgrtjyq9z">
					</a>
				</div>

			</div>
			<div class="collapse navbar-collapse"
				id="bs-cloud-academy-navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="course.jsp">코스 목록</a></li>
					<li><a href="login.jsp">내 강의실</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="register.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
		</nav> </header>
		<div class="main-wrapper">
			<div class="flash-container"></div>
			<div class="page-wrap">


				<form method="post" enctype="multipart/form-data"
					action="CaffeineGuitarJoinAction.me"
					accept-charset="UTF-8">
					<input name="_token" type="hidden"
						value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
					<div class="form-group">
						<label for="name">이름 </label> <input type="text"
							class="form-control" name="id" value="" required autofocus>
					</div>


					<div class="form-group">
						<label for="email">이메일</label> <input type="email"
							class="form-control" name="email" value="" required>

					</div>

					<div class="form-group">
						<label for="password">비밀번호 <span class="label-message">(최소
								8자 이상 입력)</span></label> <input type="password"
							class="form-control" name="password" required autocomplete="off">

					</div>

					<div class="form-group">
						<label for="password-corfirm">비밀번호 확인</label> <input
							id="password-confirm" type="password" class="form-control"
							name="password_confirmation" required autocomplete="off">
					</div>

					<div class="actions">
						<button type="submit" class="btn btn-primary btn-block">
							회원가입</button>
					</div>
				</form>
			</div>

			<div class="signup-wrapper">
				<span class="text-muted">이미 계정이 있으신가요?</span> <a href="login.jsp"
					class="text-primary">로그인</a>
			</div>
<!-- 
오류 

회원가입창이 기존 창에서 뜨는 것(1번)이랑 회원가입페이지로 가서 하는거(2번)이있는데
아래 주석 박은거때문에 위에창에서 회원가입시 1번 다른 회원가입클릭시 2번이 뜨게끔 핸들링해주는데
저거 주석하니깐 무조건 2번간다

그래서 

로그인 소스도 보니(비슷해서)로그인은 아래 소스줄이없는데도 구별이된다. 이부분은 존나 봐도 모르겠다.


그래서 

일단 주석처리하고(에러때매 500) 돌리겠다. 추가로 될때도 있#고 안될때도 있다 일단 오류가 있는부분이라 체크바람!

-->
			<%-- <!-- <%= render "devise/shared/links" %> -->--%>


		</div>
		<footer>
		<div class="container">
			<div class="row top-text">
				<ul class="col-md-7 col-sm-12 menu">
					<li class="menu-button"><a target="_blank"
						href="http://www.youtube.com/caffeineguitar"> <span
							class="link footer-about_company">회사소개</span>
					</a></li>
					<li class="menu-button"><a href="terms.jsp"> <span
							class="link footer-terms">이용약관</span>
					</a></li>
					<li class="menu-button"><a href="privacy.jsp"> <span
							class="link footer-privacy">개인정보취급방침</span>
					</a></li>
					<li class="menu-button"><a href="help.jsp"> <span
							class="link footer-support">고객지원</span>
					</a></li>
				</ul>
				<div class="col-md-5 col-sm-12 copyright">
					<span class="footer-copyright">본 사이트 내의 콘텐츠는 한국음악저작권협회와의 저작권
						계약 하에 적법하게 서비스 되고 있습니다. 고객상담 카카오톡 ID : 카페인기타 | Copyright ©
						AT&amp;E, All Rights Reserved</span>
				</div>
			</div>

			<div class="bottom-text row">
				<div class="col-md-8 col-sm-12 company_info">
					<div class="company_info">
						<span class="footer-company_info">CaffeineGuitar 카페인기타 |
							에이티앤이 | 유인석 | 214-15-25400 | 통신판매업 신고 금천구청-0519호</span>
					</div>
					<div class="address">
						<span class="footer-company_address">서울 금천구 가산디지털1로 145
							에이스하이엔드타워3차 1004-6호 AT&amp;E</span>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 sns-icons">
					<ul class="list-layout list-inline" itemscope=""
						itemtype="http://schema.org/Organization">


						<li><a
							href="http://youtube.com/c/CaffeineGuitar?sub_confirmation=1"
							class="link-contrast footer-icon-container" target="_blank">
								<span class="sr-only">유투브</span> <i
								class="fa fa-youtube footer-icon fa-lg"></i>
						</a></li>

					</ul>
				</div>
			</div>
			<hr>

			<div class="row selector-wrapper">
				<div class="col-xs-12">
					<div class="powered_by">
						<div class="mt5">본 사이트는 Chrome 브라우저에 최적화 되어 있습니다. 현재 베타 버전으로
							운영되고 있으며, 불편한 사항이나 오류 사항을 피드백 주시면 개선해 나가도록 하겠습니다.</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>

	<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../www.google-analytics.com/analytics.js','ga');

    ga('create', "UA-92592109-1", 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
  </script>


	<script type="text/javascript" src="../wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
    if(!wcs_add) var wcs_add = {};
    wcs_add["wa"] = "dcc3c9cb86d5";
    wcs_do();
  </script>
	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"80e91f9934","applicationID":"38309245","transactionName":"YVAGZkZXV0oCBk0NClgaJVFAX1ZXTBdcAwxFQQFA","queueTime":0,"applicationTime":314,"atts":"TRcFEA5NREQ=","errorBeacon":"bam.nr-data.net","agent":""}</script>
</body>

<!-- Mirrored from guitar.academy-cloud.net/register by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 07 May 2018 06:09:09 GMT -->
</html>