<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>홈 | 카페인기타 악보 레슨</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone=no" />
 	<meta name="naver-site-verification" content="e4bb86fe97c3b38371ab72808fcc16ae4dcfb15d"/>
	<meta name="google-site-verification" content="e6xOV2KyxPxWAd-yYtNzVcN0nCEIb5MTNGUIvspyiHo"/>
  	<meta property="fb:app_id" content="1580996815504941">
  	
	<script type="text/javascript">
	//<![CDATA[
	window.gon={};gon.global_pg_imp_code="imp74841908";gon.imp_code="imp74841908";
	//]]>
	</script>
	<meta name="description" content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
	<meta name="keywords" content="이러닝솔루션,이러닝사이트제작,인터넷강의사이트제작,인강사이트제작, 학원사이트제작,동영상강의솔루션,lms,이러닝시스템,학습관리시스템,학원홈페이지제작,학원웹사이트제작,인터넷강의제작,임대형이러닝솔루션,이러닝홈페이지" />
	<meta property="og:title" content="카페인기타" />
	<meta property="og:description" content="유튜버 카페인기타, 최신곡 기타 타브악보, 기타 독학 강좌, 기타 커버, 기타 악보" />
	<meta property="og:url" content="http://guitar.academy-cloud.net" />
	<meta property="og:image" content="http://res.cloudinary.com/clebee/image/upload/eulrodk25s5gzxzdnwzh" />
	<meta property="og:site_name" content="카페인기타 악보 레슨" />
	<meta property="og:type" content="website" />
	<meta name="twitter:title" content="카페인기타" />
	<meta name="twitter:description" content="유튜버 카페인기타, 최신곡 기타 타브악보, 기타 독학 강좌, 기타 커버, 기타 악보" />
	<meta name="twitter:url" content="http://guitar.academy-cloud.net" />
	<meta name="twitter:image" content="http://res.cloudinary.com/clebee/image/upload/eulrodk25s5gzxzdnwzh" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:site" content="@guitar" />
	<link rel="stylesheet" media="all" href="build/css/application1-a6c61e2710.css" />
	<link rel="stylesheet" media="all" href="build/css/application2-85e4fc93a5.css" />
	<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
	<script src="build/js/application1-a4063d0a78.js"></script>
	<script src="build/js/application2-54ada6de25.js"></script>
	<script src="build/js/webpages-8c64f3a7e3.js"></script>
	<meta name="csrf-param" content="_token">
	<meta name="csrf-token" content="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
	<link rel="shortcut icon" type="image/x-icon" href="build/images/favicon-b51121bdcc.ico" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-57x57-92b0ca4e7a.png" sizes="57x57" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-60x60-e173c6cf40.png" sizes="60x60" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-72x72-6285d17d26.png" sizes="72x72" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-76x76-a0e8b12d87.png" sizes="76x76" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-114x114-a6c1d22a45.png" sizes="114x114" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-120x120-1160df2f3b.png" sizes="120x120" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-144x144-42371d6139.png" sizes="144x144" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-152x152-b2287ebfb1.png" sizes="152x152" />
	<link rel="apple-touch-icon" type="image/png" href="build/images/apple-icon-180x180-4238e49192.png" sizes="180x180" />
	<link rel="icon" type="image/png" href="build/images/favicon-32x32-11fda74e2d.png" sizes="32x32" />
	<link rel="icon" type="image/png" href="build/images/favicon-96x96-b7105bf1e0.png" sizes="96x96" />
	<link rel="icon" type="image/png" href="build/images/favicon-16x16-9dabd14c11.png" sizes="16x16" />
	<link rel="icon" type="image/png" href="build/images/android-icon-192x192-d4e930a755.png" sizes="192x192" />
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- script type="text/javascript">$.cloudinary.config({"api_key":"695426152322879","cloud_name":"clebee"});</script-->
  	<script type="text/javascript" src="../service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body class="home show " >
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
  <img height="1" width="1" style="display:none"
       src="https://www.facebook.com/tr?id=1516893358624675&amp;ev=PageView&amp;noscript=1"/>
</noscript>
						<div class="overlay" id="signup-modal" role="dialog" tabindex="-1" aria-labelledby="signup-modal" data-behavior="backdrop">
  <div class="modal-table">
    <div class="modal-cell">
      <div class="modal-content">
        <button type="button" class="modal-close-outside" data-behavior="modal-close" aria-label="닫기"></button>
        <div class="modal-header panel-header text-center">
          <a href="#" class="btn-sm close" data-behavior="modal-close"></a>
          <h4 class="modal-title">회원가입</h4>
        </div>
        <div class="modal-body">
          <div class="signup signup-and-in-form">
            <img src="images/logo-academy.png" class="logo img-responsive">
            <form method="POST" action="CaffeineGuitarJoinAction.me" accept-charset="UTF-8" class="new_user" id="new_user"><input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <div class="form-group">
                <input class="form-control" autofocus="autofocus" placeholder="닉네임" required="required" id="user_name" name="id" type="text" value="">
            	</div>
              <div class="form-group">
              	<input class="form-control" placeholder="이메일" required="required" id="user_email" name="email" type="email">
            	</div>
              <div class="form-group">
              	<input class="form-control" autocomplete="off" placeholder="비밀번호 (적어도 6자 이상 입력)" required="required" id="user_password" name="password" type="password" value="">
            	</div>
              <div class="form-group">
              	<input class="form-control" autocomplete="off" placeholder="비밀번호 확인" required="required" id="user_password_confirmation" name="password_confirmation" type="password" value="">
              </div>

              <div class="actions">
                <input class="btn btn-primary btn-block" type="submit" value="회원가입">
              </div>
            </form>
          </div>
          <div class="signup-wrapper">
            <span class="text-muted">이미 계정이 있으신가요?</span>
            <a href="javascript_%20void(0)%3b.jsp" class="text-primary" data-behavior="trigger-signup-signin">로그인</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="overlay" id="signin-modal" role="dialog" tabindex="-1" aria-labelledby="signin-modal" data-behavior="backdrop">
    <div class="modal-table">
      <div class="modal-cell">
        <div class="modal-content">
          <button type="button" class="modal-close-outside" data-behavior="modal-close" aria-label="닫기"></button>
          <div class="modal-header panel-header text-center">
            <a href="#" class="btn-sm close" data-behavior="modal-close"></a>
            <h4 class="modal-title">로그인</h4>
          </div>
          <div class="modal-body">
            <div class="signin signup-and-in-form">
              <img src="images/logo-academy.png" class="logo img-responsive">
              
              <form method="POST" action="CaffeineGuitarLoginAction.me" accept-charset="UTF-8"><input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <input type="hidden" name="_token" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
                <div class="form-group">
                  <input class="form-control" autofocus="autofocus" placeholder="이메일" title="이메일 주소" required="true" name="email" type="text">
              	  <input class="form-control" autocomplete="off" placeholder="비밀번호 (적어도 6자 이상 입력)" title="비밀번호 (적어도 6자 이상 입력)" required="true" name="password" type="password" value="">
              	</div>

                <div class="form-group mt20 mb30">
	                	                  <div class="forget-password">
	                  	  <a href="password/reset.jsp">비밀번호를 잊어버렸나요?</a><br />
	                  </div>
	                
                    <div class="remember_me">
                      <input  id="remember" class="with-font" name="remember" type="checkbox" value="1">
                      <label for="remember">로그인 기억하기</label>
                    </div>
                </div>

                <div class="actions">
                  <input class="btn btn-primary btn-block" type="submit" value="로그인">
                </div>
              </form>
            </div>
            <div class="signup-wrapper">
                <span class="text-muted">아직 계정이 없으신가요?</span>
	 	        <a href="register.jsp" class="text-primary" data-behavior="trigger-signin-signup">회원가입</a>
              </div>
            </div>
        </div>
      </div>
    </div>
</div>
				<div class="overlay" id="editable_overlay" role="dialog" tabindex="-1" aria-labelledby="editable_overlay">
  <div class="content">

  </div>
  <button type="button" class="btn btn-sm overlay-close" data-behavior="modal-close" aria-label="창닫기"></button>
</div>
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-default navbar-fixed-top bg">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-cloud-academy-navbar-collapse" aria-expanded="false">
        <span class="sr-only">열기/펼치기</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="vertical-container vertical-container-v">
        <a class="navbar-brand" href="index.jsp">
        	        		<img src="http://res.cloudinary.com/clebee/image/upload/bdvabm8ivhtwgrtjyq9z">
        	        </a>
      </div>

    </div>
    <div class="collapse navbar-collapse" id="bs-cloud-academy-navbar-collapse">
              <ul class="nav navbar-nav">
          <li>
            <a href="course.jsp">코스 목록</a>
          </li>
          <li>
          	<a href="login.jsp">내 강의실</a>
          </li>
        </ul>
            <ul class="nav navbar-nav navbar-right">
		                              <li>
              <a href="javascript://void(0);" data-behavior="trigger-signin">로그인</a>
            </li>
                          <li>
                <a href="javascript://void(0);" data-behavior="trigger-signup">회원가입</a>
              </li>
                                    </ul>
    </div>
  </div>
</nav>	    </header>
	    <div class="main-wrapper">
		    <div class="flash-container">
  </div>		    
<div class="hero">
	<div class="hero-background background-cover" style="background-image: url(http://res.cloudinary.com/clebee/image/upload/eulrodk25s5gzxzdnwzh) !important;"></div>
	<div class="hero-content text-center">
		<div class="va-container va-container-v va-container-h">
			<div class="va-middle">
				<div class="container">
					<h2 class="text-jumbo text-inverse">
													<div class="hero-main">카페인기타</div>
											</h2>
					<h4 class="text-inverse">
													<div class="hero-sub">유튜버 카페인기타, 최신곡 기타 타브악보, 기타 독학 강좌, 기타 커버, 기타 악보</div>
											</h4>
				</div>
			</div>
		</div>
	</div>
	<div class="hero-footer">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<form method="GET" action="https://guitar.academy-cloud.net/search" accept-charset="UTF-8">
  <div class="form-group">
    <label class="sr-only" for="lectureSearch">강의 검색</label>
    <div class="input-group">
      <input type="text" class="form-control input-lg" name="keyword" value="" placeholder="배우고 싶은 강의를 검색하세요.">
      <span class="input-group-btn">
        <button type="submit" class="btn btn-primary btn-lg">
          <i class="fa fa-search icon-search"></i>
        </button>
      </span>
    </div>
  </div>
</form>
			</div>
		</div>
	</div>
</div>

	<section class="editor_choices">
	<div class="container">
  <div class="row items">
    <div class="col-md-12 item">
      <h2>금주의 추천코스</h2>
      <p class="lead">다른 어디에도 없는 특별한 강의를 만나보세요.</p>
      <a href="course.jsp" class="btn btn-default">강의 더보기</a>
    </div>
  </div>
  <div class="editor-choices-courses-list">
    <div class="row">
                          <div id="course_2627" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2627.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/zlxt41fedrvmvwyrngza');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">10 개의 강의</div>
					<h2>카페인기타 통기타 입문</h2>
					<div class="summary">
						<span>기타를 배우고 싶은 분들을 위한 온라인 레슨</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	49,000 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                                  <div id="course_2561" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2561.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/iva3uqtufrz42cw37b4j');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">9 개의 강의</div>
					<h2>아이유 IU - TAB 악보집</h2>
					<div class="summary">
						<span>카페인기타의 아이유 커버곡 악보 모음집입니다.</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	9,900 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                                  <div id="course_2544" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2544.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/c7ixzvayrdxp9rpff7ln');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">5 개의 강의</div>
					<h2>볼빨간사춘기 - TAB 악보집</h2>
					<div class="summary">
						<span>카페인기타의 볼빨간사춘기 커버곡 악보 모음집입니다.</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	5,500 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                                  <div id="course_2517" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2517.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/gdk82ugsfemxlbqpu91x');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">7 개의 강의</div>
					<h2>10CM - TAB 악보집</h2>
					<div class="summary">
						<span>카페인기타의 10CM 커버곡 악보 모음집입니다.</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	7,700 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                                                <div id="course_2640" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2640.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/khanyxvzi44lmocclgav');">
	        																		<div class="item-label">
													1 자리 남음
												</div>
															
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">4 개의 강의</div>
					<h2>후원을 해 주세요 :)</h2>
					<div class="summary">
						<span>원하는 곡의 악보와 연주 영상 그리고 어쿠스틱 버전 MR 을 만들어 드립니다.</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	100,000 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                                                            </div>
  </div>
</div>	</section>

	<section class="recent-courses dark">
	<div class="container">
  <div class="row items">
    <div class="col-md-12 item">
      <h2>새롭게 등록된 강의</h2>
      <p class="lead">아카데미에 새롭게 등록된 강의를 만나보세요.</p>
      <a href="course.jsp" class="btn btn-default">강의 더보기</a>
    </div>
  </div>
  <div class="popular-courses-list">
    <div class="row">
             	                          <div id="course_4006" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/4006.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/0fa67a830c279ff5397abcd8ef695cd4');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">1 개의 강의</div>
					<h2>[+TAB] 로꼬&amp;화사 - 주지마</h2>
					<div class="summary">
						<span>Don&#039;t Give It To Me -  Loco &amp; Hwasa</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	1,900 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                       	                          <div id="course_4556" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="scoredetail.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/cf2c9517ef419dbcf758055ebe4aef6c');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">1 개의 강의</div>
					<h2>[+TAB] 로이킴 - 그때 헤어지면 돼</h2>
					<div class="summary">
						<span>Roy Kim - Only Then</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	1,900 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                       	                          <div id="course_4517" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/4517.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/b6cec302e510f9f4e9e6ae93edc4fd8f');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">1 개의 강의</div>
					<h2>[+TAB] 트와이스 - What is Love?</h2>
					<div class="summary">
						<span>TWICE - What is Love?</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	1,900 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                       	                          <div id="course_2508" class="course col-sm-6 col-md-4 col-lg-3 card ">
	<div class="main-wrapper" >
		
		
		<a href="course/2508.jsp">
	        <div class="image-wrapper" style="background-image: url('http://res.cloudinary.com/clebee/image/upload/c_fill,h_460,w_765/sdnckzhnfzm5xzvtnglc');">
	        																						
				<div class="shadow"></div>
	        </div>
			<div class="info-wrapper">
				<div class="author-wrapper">
					<div class="author-image-wrapper">
						<div class="img-ew img-small">
							<img src="http://res.cloudinary.com/clebee/image/upload/c_thumb,h_40,w_40/sry895mavvbtfsgr23vy" class="avatar-image" width="40" height="40" alt="avatar image">
						</div>
					</div>
					<div class="master-name">카페인기타 </div>
	            	<div class="course-duration">2 개의 강의</div>
					<h2>[+TAB] 볼빨간사춘기 - 썸 탈꺼야</h2>
					<div class="summary">
						<span>Bolbbalgan4 - 썸탈꺼야</span>
						<span class="ellipsis"></span>
					</div>
					<div class="rank-seat">
				      					      						      			<span class="no-schedule">상시 오픈</span>
				      						      							<div class="remain-seat">
				          	<span class="current">
				            				            	1,900 원
				            							</span>
			            </div>
		          	</div>
	        	</div>
			</div>
		</a>
	</div>
</div>
                       	        		      </div>
  </div>
</div>	</section>


<script type="text/javascript">
  // 부트스트랩 가이드 투어
  var tour = new Tour({
    name: "home",
    autoscroll: true,
    // storage: false, //페이지 로드 될 때마다 시작함
    backdrop: true,
    template: "<div class='popover tour'><div class='arrow'></div><button class='close' data-role='end'><i class='material-icons vertical-middle'>close</i></button><h3 class='popover-title'></h3><div class='popover-content'></div><nav class='popover-navigation'><button class='btn btn-default btn-prev' data-role='prev'>뒤로</button><button class='btn btn-primary btn-next' data-role='next'>다음</button></nav></div>"
  });

    tour.addSteps([
    {
      element: "#guide-tour-application-setting",
      placement: "bottom",
      title: "사이트 기본 정보 설정",
      content: "사이트명, 로고, 배경이미지, 회사 정보를 설정하세요."
    },
    {
      element: "#guide-tour-title-edit",
      placement: "bottom",
      title: "타이틀 편집하기",
      content: "연필 아이콘을 누르면 글자를 수정할 수 있어요."
    },
    {
      element: "#guide-tour-course-create",
      placement: "bottom",
      title: "코스 만들기",
      content: "수강생에게 선보일 첫 번째 코스를 만들어보세요.",
      template: "<div class='popover tour'><div class='arrow'></div><button class='close' data-role='end'><i class='material-icons vertical-middle'>close</i></button><h3 class='popover-title'></h3><div class='popover-content'></div><nav class='popover-navigation'><button class='btn btn-default btn-prev' data-role='prev'>뒤로</button><button class='btn btn-success btn-next' data-role='end'>종료</button></nav></div>"
    }
  ]);


  // Initialize the tour
  tour.init();

  // Start the tour
  tour.start();

  // Close popover when clicking anywhere on the screen
  $(document).on("click", ".popover .close" , function(){
    $(this).parents(".popover").popover('hide');
  });

</script>
	    </div>
	    <footer>
		    <div class="container">
  <div class="row top-text">
    <ul class="col-md-7 col-sm-12 menu">
              <li class="menu-button">
          <a target="_blank" href="http://www.youtube.com/caffeineguitar">
            <span class="link footer-about_company">회사소개</span>
          </a>
        </li>
            <li class="menu-button">
        <a href="terms.jsp">
          <span class="link footer-terms">이용약관</span>
        </a>
      </li>
      <li class="menu-button">
        <a href="privacy.jsp">
          <span class="link footer-privacy">개인정보취급방침</span>
        </a>
      </li>
      <li class="menu-button">
        <a href="help.jsp">
          <span class="link footer-support">고객지원</span>
        </a>
      </li>
    </ul>
    <div class="col-md-5 col-sm-12 copyright">
      <span class="footer-copyright">본 사이트 내의 콘텐츠는 한국음악저작권협회와의 저작권 계약 하에 적법하게 서비스 되고 있습니다. 고객상담 카카오톡 ID : 카페인기타 | Copyright © AT&amp;E, All Rights Reserved</span>
    </div>
  </div>

  <div class="bottom-text row">
    <div class="col-md-8 col-sm-12 company_info">
      <div class="company_info">
        <span class="footer-company_info">CaffeineGuitar 카페인기타  | 에이티앤이  |  유인석  |  214-15-25400   |  통신판매업 신고 금천구청-0519호</span>
      </div>
      <div class="address">
        <span class="footer-company_address">서울 금천구 가산디지털1로 145 에이스하이엔드타워3차 1004-6호 AT&amp;E</span>
      </div>
    </div>
          <div class="col-md-4 col-sm-12 sns-icons">
        <ul class="list-layout list-inline" itemscope="" itemtype="http://schema.org/Organization">
                              
          
                      <li>
              <a href="http://youtube.com/c/CaffeineGuitar?sub_confirmation=1" class="link-contrast footer-icon-container" target="_blank">
	            <span class="sr-only">유투브</span>
	            <i class="fa fa-youtube footer-icon fa-lg"></i>
	          </a>
            </li>
          
                  </ul>
      </div>
      </div>
  <hr>

  <div class="row selector-wrapper">
    <div class="col-xs-12">
      <div class="powered_by">
                <div class="mt5">본 사이트는 Chrome 브라우저에 최적화 되어 있습니다. 현재 베타 버전으로 운영되고 있으며, 불편한 사항이나 오류 사항을 피드백 주시면 개선해 나가도록 하겠습니다.</div>
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
		<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"80e91f9934","applicationID":"38309245","transactionName":"YVAGZkZXV0oCBk0NClgaJVFAX1ZXTA1WCQAYXQtfUQ==","queueTime":0,"applicationTime":610,"atts":"TRcFEA5NREQ=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>

<!-- Mirrored from guitar.academy-cloud.net/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 07 May 2018 06:07:16 GMT -->
</html>
