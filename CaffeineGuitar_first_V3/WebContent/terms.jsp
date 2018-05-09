<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>이용약관 | 카페인기타 악보 레슨</title>
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
	<meta property="og:title" content="아카데미 클라우드에 오신 것을 환영합니다." />
	<meta property="og:description" content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
	<meta property="og:url" content="https://www.academy-cloud.net/" />
	<meta property="og:image" content="https://res.cloudinary.com/clebee/image/upload/v1484723793/course-sample_det6e4.jpg" />
	<meta property="og:site_name" content="아카데미 클라우드" />
	<meta property="og:type" content="website" />
	<meta name="twitter:title" content="아카데미 클라우드에 오신 것을 환영합니다." />
	<meta name="twitter:description" content="아카데미 클라우드와 함께 쉽고 빠르게 온라인 아카데미를 만들어 보세요." />
	<meta name="twitter:url" content="https://www.academy-cloud.net/" />
	<meta name="twitter:image" content="https://res.cloudinary.com/clebee/image/upload/v1484723793/course-sample_det6e4.jpg" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:site" content="academy_cloud" />
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
<body class="footer terms " >
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
            <form method="POST" action="https://guitar.academy-cloud.net/register" accept-charset="UTF-8" class="new_user" id="new_user"><input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <div class="form-group">
                <input class="form-control" autofocus="autofocus" placeholder="닉네임" required="required" id="user_name" name="name" type="text" value="">
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
            <a href="javascript_%20void(0)%3b.html" class="text-primary" data-behavior="trigger-signup-signin">로그인</a>
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
              <form method="POST" action="https://guitar.academy-cloud.net/login" accept-charset="UTF-8"><input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <input type="hidden" name="_token" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
                <div class="form-group">
                  <input class="form-control" autofocus="autofocus" placeholder="이메일" title="이메일 주소" required="true" id="email" name="email" type="email">
              	  <input class="form-control" autocomplete="off" placeholder="비밀번호 (적어도 6자 이상 입력)" title="비밀번호 (적어도 6자 이상 입력)" required="true" id="password" name="password" type="password" value="">
              	</div>

                <div class="form-group mt20 mb30">
	                	                  <div class="forget-password">
	                  	  <a href="password/reset.html">비밀번호를 잊어버렸나요?</a><br />
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
	 	        <a href="register.html" class="text-primary" data-behavior="trigger-signin-signup">회원가입</a>
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
        <a class="navbar-brand" href="index.html">
        	        		<img src="http://res.cloudinary.com/clebee/image/upload/bdvabm8ivhtwgrtjyq9z">
        	        </a>
      </div>

    </div>
    <div class="collapse navbar-collapse" id="bs-cloud-academy-navbar-collapse">
              <ul class="nav navbar-nav">
          <li>
            <a href="course.html">코스 목록</a>
          </li>
          <li>
          	<a href="login.html">내 강의실</a>
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
<div class="terms-wrapper container">
  <div class="sub-nav">
    <div class="btn-group" role="group" aria-label="설정 메뉴">
      <a href="terms.html" class="btn btn-default active">이용약관</a>
      <a href="privacy.html" class="btn btn-default">개인정보취급방침</a>
    </div>
  </div>

      <dl>
      <dt>제1장 총칙</dt>
      <dd><strong>제1조 (목적) 이 약관은 카페인기타 아카데미 클라우드(이하 “회사”)가 온라인으로 제공하는 콘텐츠 및 이에 부수된 제반 서비스(이하 “서비스”)의 이용과 관련하여 회사와 이용자 간의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</strong></dd>

      <dd><strong>제2조 (용어의 정의)</strong></dd>
      <dd>① 이 약관에서 사용하는 정의는 다음과 같습니다.</dd>
      <dd>1. “회사”라 함은 온라인을 통하여 서비스를 제공하는 사업자를 의미합니다.</dd>
      <dd>2. “이용자”라 함은 이 약관에 동의하고 서비스 이용 자격을 부여받은 자를 의미합니다.</dd>
      <dd>3. “서비스”라 함은 회사가 이용자에게 온라인으로 제공하는 콘텐츠 및 이에 부수된 제반 서비스를 의미합니다.</dd>
      <dd>4. “계정(ID)”이라 함은 이용자의 식별과 서비스 이용을 위하여 이용자가 선정하고 회사가 부여하는 문자, 숫자 또는 특수문자의 조합을 의미합니다.</dd>
      <dd>5. “계정정보“라 함은 이용자의 계정, 비밀번호, 성명 등 이용자가 회사에 제공한 일반정보 및 서비스 이용정보, 이용요금 결제상태 등 생성정보를 통칭합니다.</dd>
      <dd>6. “비밀번호”라 함은 이용자가 부여받은 계정과 일치되는 이용자임을 확인하고 이용자의 정보 및 권익보호를 위해 이용자 자신이 선정하여 비밀로 관리하는 문자, 숫자 또는 특수문자의 조합을 의미합니다.</dd>
      <dd>7. “게시물”이라 함은 이용자가 서비스를 이용함에 있어 게시한 문자, 문서, 그림, 음성, 영상 또는 이들의 조합으로 이루어진 모든 정보를 말합니다.</dd>
      <dd>② 이 약관에서 사용하는 용어의 정의는 제1항 각호에서 정하는 것을 제외하고는 관계법령 및 기타 일반적인 상관례에 의합니다.</dd>

      <dd><strong>제3조 (회사정보 등의 제공) 회사는 다음 각 호의 사항을 서비스 초기화면이나 서비스 홈페이지에 게시하여, 이용자가 이를 쉽게 알 수 있도록 합니다. 다만, 개인정보취급방침과 약관은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</strong></dd>
      <dd>1. 상호 및 대표자의 성명</dd>
      <dd>2. 영업소 소재지 주소(이용자의 불만을 처리할 수 있는 곳의 주소를 포함한다) 및 전자우편주소</dd>
      <dd>3. 전화번호, 모사전송번호(Fax 번호)</dd>
      <dd>4. 사업자등록번호, 통신판매업 신고번호</dd>
      <dd>5. 개인정보취급방침</dd>
      <dd>6. 서비스 이용약관</dd>

      <dd><strong>제4조 (약관의 명시와 개정)</strong></dd>
      <dd>① 회사는 이 약관의 내용을 이용자가 알 수 있도록 초기 화면이나 서비스 홈페이지에 게시하거나 연결화면을 제공하는 방법으로 이용자에게 공지합니다.</dd>
      <dd>② 회사는 이용자가 회사와 이 약관의 내용에 관하여 질의 및 응답을 할 수 있도록 조치를 취합니다.</dd>
      <dd>③ 회사는 이용자가 약관의 내용을 쉽게 알 수 있도록 작성하고 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 과오납금의 환급, 계약 해제ㆍ해지, 회사의 면책사항 및 이용자에 대한 피해보상 등과 같은 중요한 내용을 이용자가 쉽게 이해할 수 있도록 굵은 글씨 등으로 처리하거나 별도의 연결화면 또는 팝업화면 등을 제공하고 이용자의 동의를 얻도록 합니다.</dd>
      <dd>④ 회사는 「콘텐츠산업진흥법」, 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 등 관련 법령에 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</dd>
      <dd>⑤ 회사가 약관을 개정할 경우에는 적용일자 및 개정내용, 개정사유 등을 명시하여 그 적용일자로부터 최소한 7일 이전(이용자에게 불리하거나 중대한 사항의 변경은 30일 이전)부터 그 적용일자 경과 후 상당한 기간이 경과할 때까지 초기화면 또는 초기화면과의 연결화면을 통해 공지합니다.</dd>
      <dd>⑥ 회사가 약관을 개정할 경우에는 개정약관 공지 후 개정약관의 적용에 대한 이용자의 동의 여부를 확인합니다. 개정약관 공지시 이용자가 동의 또는 거부의 의사표시를 하지 않으면 승낙한 것으로 간주하겠다는 내용도 함께 공지한 경우에는 이용자가 약관 시행일 까지 거부의사를 표시하지 않는다면 개정약관에 동의한 것으로 간주할 수 있습니다.</dd>
      <dd>⑦ 이용자가 개정약관의 적용에 동의하지 않는 경우 회사 또는 이용자는 서비스 이용계약을 해지할 수 있습니다.</dd>

      <dd><strong>제5조 (약관 외 준칙) 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「콘텐츠산업진흥법」, 「전자상거래 등에서의 소비자보호에 관한 법률」,「약관의 규제에 관한 법률」, 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 등 관련 법령에 따릅니다.</strong></dd>
    </dl>
    <dl>
      <dt>제2장 이용계약의 체결</dt>

      <dd><strong>제6조 (이용신청 및 방법)</strong></dd>
      <dd>① 회사가 제공하는 서비스를 이용하고자 하는 자는 회사가 초기 화면이나 서비스 홈페이지에서 제공하는 이용신청서를 작성하는 방법으로 이용신청을 하여야 합니다.</dd>
      <dd>② 이용자는 이용신청시 회사에서 요구하는 제반 정보를 제공하여야 합니다.</dd>
      <dd>③ 이용자는 제1항의 이용 신청 시 본인의 실명 및 실제 정보를 기재하여야 합니다. 실명 또는 식별정보를 허위로 기재하거나 타인의 명의를 도용한 경우 이 약관에 의한 이용자의 권리를 주장할 수 없고, 회사는 환급없이 이용계약을 취소하거나 해지할 수 있습니다.</dd>
      <dd>④ 청소년(18세 미만의 자로서 「초·중등교육법」제2조의 규정에 의한 고등학교에 재학 중인 학생을 포함한다)이 이용신청을 할 경우에는 법정대리인의 동의를 얻어야 하고, 구체적인 동의절차는 회사가 제공하는 방법에 따르도록 합니다.</dd>

      <dd><strong>제7조 (이용신청의 승낙과 제한)</strong></dd>
      <dd>① 회사는 회사가 이용자에게 요구하는 정보에 대해 이용자가 실명 및 실제 정보를 정확히 기재하여 이용신청을 한 경우에 상당한 이유가 없는 한 이용신청을 승낙합니다.</dd>
      <dd>② 회사는 다음 각 호의 어느 하나에 해당하는 이용신청에 대해서는 승낙을 하지 않을 수 있습니다.</dd>
      <dd>1. 제6조에 위반하여 이용신청을 하는 경우</dd>
      <dd>2. 이용요금을 납부하지 않거나 잘못 납부하여 확인할 수 없는 경우</dd>
      <dd>3. 청소년(제6조 제4항의 청소년과 같다)이 법정대리인의 동의를 얻지 아니하거나 동의를 얻었음을 확인할 수 없는 경우</dd>
      <dd>4. 최근 3년 내 이용제한 기록이 있는 이용자가 이용신청을 하는 경우</dd>
      <dd>5. 제3자의 신용카드, 유/무선 전화, 은행 계좌 등을 무단으로 이용 또는 도용하여 서비스 이용요금을 결제하는 경우</dd>
      <dd>6. 대한민국 이외의 국가 중 회사에서 아직 서비스를 제공할 것으로 결정하지 않은 국가에서 서비스를 이용하는 경우로 회사가 해외 서비스 업체와 체결한 계약이나 특정 국가에서 접속하는 이용자에 대한 서비스 제공과 관련하여 서비스제공을 제한할 필요가 있는 경우</dd>
      <dd>7. 법령 등에서 금지하는 위법행위를 할 목적으로 이용신청을 하는 경우</dd>
      <dd>8. 그 밖에 1호 내지 7호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우</dd>
      <dd>③ 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.</dd>
      <dd>1. 회사의 설비에 여유가 없거나 기술적 장애가 있는 경우</dd>
      <dd>2. 서비스 상의 장애 또는 서비스 이용요금 결제수단의 장애가 발생한 경우</dd>
      <dd>3. 그 밖에 위 각 호에 준하는 사유로서 이용신청의 승낙이 곤란한 경우</dd>

      <dd><strong>제8조 (이용자 계정(ID) 및 비밀번호)</strong></dd>
      <dd>① 회사는 이용자에 대하여 이용자의 정보 보호, 서비스 이용안내 등의 편의를 위해 이용자가 선정한 일정한 문자, 숫자 또는 특수문자의 조합을 계정으로 부여합니다.</dd>
      <dd>② 회사는 계정정보를 통하여 당해 이용자의 서비스 이용가능 여부 등의 제반 이용자 관리업무를 수행합니다.</dd>
      <dd>③ 이용자는 자신의 계정정보를 선량한 관리자로서의 주의 의무를 다하여 관리하여야 합니다. 이용자가 본인의 계정정보를 소홀히 관리하거나 제3자에게 이용을 승낙함으로써 발생하는 손해에 대하여는 이용자에게 책임이 있습니다.</dd>
      <dd>④ 비밀번호의 관리책임은 이용자에게 있으며, 이용자가 원하는 경우에는 보안상의 이유 등으로 언제든지 변경이 가능합니다.</dd>
      <dd>⑤ 이용자는 정기적으로 비밀번호를 변경하여야 합니다.</dd>

      <dd>제9조 (이용자 정보의 제공 및 변경)</dd>
      <dd>① 이용자는 이 약관에 의하여 회사에 정보를 제공하여야 하는 경우에는 진실된 정보를 제공하여야 하며, 허위정보 제공으로 인해 발생한 불이익에 대해서는 보호받지 못합니다.</dd>
      <dd>② 이용자는 개인정보관리화면을 통하여 언제든지 자신의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 계정(ID) 등은 수정이 불가능합니다.</dd>
      <dd>③ 이용자는 가입 신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.</dd>
      <dd>④ 전항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임을 지지 않습니다.</dd>

      <dd>제10조 (개인정보의 보호 및 관리)</dd>
      <dd>① 회사는 관계 법령이 정하는 바에 따라 계정정보를 포함한 이용자의 개인정보를 보호하기 위해 노력합니다. 이용자 개인정보의 보호 및 사용에 대해서는 관계법령 및 회사가 별도로 고지하는 개인정보취급방침이 적용됩니다.</dd>
      <dd>② 서비스에서 단순히 링크된 제3자 제공의 서비스에 대하여는 회사의 개인정보취급방침이 적용되지 않습니다.</dd>
      <dd>③ 회사는 이용자의 귀책사유로 인하여 노출된 이용자의 계정정보를 포함한 모든 정보에 대해서 일체의 책임을 지지 않습니다.</dd>
    </dl>
    <dl>
      <dt>제3장 계약 당사자의 의무</dt>
      <dd><strong>제11조 (회사의 의무)</strong></dd>
      <dd>① 회사는 관련 법령을 준수하고, 이 약관이 정하는 권리의 행사와 의무의 이행을 신의에 따라 성실하게 합니다.</dd>
      <dd>② 회사는 이용자가 안전하게 서비스를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다. 회사는 이 약관 및 개인정보취급방침에서 정한 경우를 제외하고는 이용자의 개인정보가 제3자에게 공개 또는 제공되지 않도록 합니다.</dd>
      <dd>③ 회사는 계속적이고 안정적인 서비스의 제공을 위하여 서비스 개선을 하던 중 설비에 장애가 생기거나 데이터 등이 멸실된 때에는 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 결함 및 장애 등 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구하도록 최선의 노력을 다합니다.</dd>

      <dd><strong>제12조 (이용자의 의무)</strong></dd>
      <dd>① 이용자는 다음 행위를 하여서는 안 됩니다.</dd>
      <dd>1. 신청 또는 변경 시 허위내용의 기재</dd>
      <dd>2. 타인의 정보도용</dd>
      <dd>3. 회사의 임직원, 운영자, 기타 관계자를 사칭하는 행위</dd>
      <dd>4. 회사가 게시한 정보의 변경</dd>
      <dd>5. 회사가 금지한 정보(컴퓨터 프로그램 등)의 송신 또는 게시</dd>
      <dd>6. 회사가 제공 또는 승인하지 아니한 컴퓨터 프로그램이나 기기 또는 장치를 제작, 배포, 이용, 광고하는 행위</dd>
      <dd>7. 회사와 기타 제3자의 저작권 등 지적재산권에 대한 침해</dd>
      <dd>8. 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</dd>
      <dd>9. 외설 또는 폭력적인 말이나 글, 화상, 음향, 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위</dd>
      <dd>10. 계정, 이용권 등을 유상으로 처분(양도, 매매 등)하거나 권리의 객체(담보제공, 대여 등)로 하는 행위</dd>
      <dd>11. 10호의 행위를 유도하거나 광고하는 행위</dd>
      <dd>12. 회사의 동의 없이 영리, 영업, 광고, 정치활동 등을 목적으로 서비스를 사용하는 행위</dd>
      <dd>13. 기타 관련 법령에서 금지하거나 선량한 풍속 기타 사회통념상 허용되지 않는 행위</dd>
      <dd>② 이용자는 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 확인하고 준수할 의무가 있습니다.</dd>
      <dd>③ 회사는 제1항, 제2항 및 다음 각 호의 어느 하나에 해당하는 행위의 구체적인 유형을 운영정책에서 정할 수 있으며, 이용자는 이를 준수할 의무가 있습니다.</dd>
      <dd>1. 이용자의 계정 등 명칭에 대한 제한</dd>
      <dd>2. 게시판이용에 대한 제한</dd>
      <dd>3. 서비스 이용방법에 대한 제한</dd>
      <dd>4. 기타 이용자의 서비스 이용에 대한 본질적 권리를 침해하지 않는 범위 내에서 회사가 서비스 운영상 필요하다고 인정되는 사항</dd>
    </dl>
    <dl>
      <dt>제4장 서비스 이용</dt>

      <dd><strong>제13조 (서비스의 변경 및 내용수정)</strong></dd>
      <dd>① 이용자는 회사가 제공하는 서비스를 이 약관, 운영정책 및 회사가 설정한 이용규칙에 따라 이용할 수 있습니다.</dd>
      <dd>② 회사가 서비스를 통하여 이용자에게 제공하는 콘텐츠 등은 회사 또는 회사와의 약정에 따른 전문가들이 창작한 정보로서 회사는 전문가들과의 약정에 따라 콘텐츠의 제작, 변경, 유지, 보수에 관한 포괄적인 권한을 가집니다.</dd>
      <dd>③ 회사는 다수 이용자의 정당한 서비스 이용 권리를 보호하고 서비스의 안정성과 질서유지를 위하여 필요한 조치를 취합니다.</dd>
      <dd>④ 회사가 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 서비스 수정을 할 수 있으며, 서비스 수정을 하는 경우에는 변경 후 사이트 등을 통하여 공지합니다.</dd>

      <dd><strong>제14조 (서비스의 제공 및 중단 등)</strong></dd>
      <dd>① 서비스는 회사의 영업방침, 기술적 환경 등에 따라 정해진 시간동안 제공합니다. 회사는 서비스 제공시간을 서비스 홈페이지(www.academy-cloud.net)에 적절한 방법으로 안내합니다.</dd>
      <dd>② 제1항에도 불구하고, 다음 각 호의 어느 하나에 해당하는 경우에는 일정한 시간동안 서비스가 제공되지 아니할 수 있으며, 해당 시간 동안 회사는 서비스를 제공할 의무가 없습니다.</dd>
      <dd>1. 컴퓨터 등 정보통신설비의 보수점검, 교체, 정기점검 또는 콘텐츠나 서비스의 수정을 위하여 필요한 경우</dd>
      <dd>2. 해킹 등의 전자적 침해사고, 통신사고, 이용자들의 비정상적인 서비스 이용행태, 미처 예상하지 못한 서비스의 불안정성에 대응하기 위하여 필요한 경우</dd>
      <dd>3. 관련 법령에서 특정 시간 또는 방법으로 서비스 제공을 금지하는 경우</dd>
      <dd>4. 천재지변, 비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 불가능할 경우</dd>
      <dd>5. 회사의 분할, 합병, 영업양도, 영업의 폐지, 당해 서비스의 수익 악화 등 회사의 경영상 중대한 필요에 의한 경우</dd>
      <dd>③ 회사는 제2항 제1호의 경우, 주기적으로 일정 시간을 정하여 서비스를 중지할 수 있습니다. 이 경우 회사는 최소한 24시간 전에 그 사실을 이용자에게 서비스 홈페이지(www.academy-cloud.net)를 통해 고지합니다.</dd>
      <dd>④ 제2항 제2호의 경우, 회사는 사전 고지 없이 서비스를 일시 중지할 수 있습니다. 회사는 이러한 경우 그 사실을 서비스 홈페이지(www.academy-cloud.net)에 사후 고지할 수 있습니다.</dd>
      <dd>⑤ 회사는 회사가 제공하는 무료서비스 이용과 관련하여 이용자에게 발생한 어떠한 손해에 대해서도 책임을 지지 않습니다. 다만, 회사의 고의 또는 중대한 과실로 인하여 발생한 손해의 경우는 제외합니다.</dd>
      <dd>⑥회사는 회사가 제공하는 유료서비스 이용과 관련하여 회사의 귀책사유로 사전고지 없이 1일 4시간(누적시간) 이상 연속하여 서비스가 중지되거나 장애가 발생한 경우 계속적 이용계약 계정에 한하여 서비스 중지ㆍ장애시간의 3배에 해당하는 이용시간을 무료로 연장하고, 이용자는 회사에 대하여 별도의 손해배상을 청구할 수 없습니다. 다만, 회사가 서버점검 등의 사유로 서비스 중지ㆍ장애를 사전에 고지하였으나, 서비스 중지ㆍ장애시간이 10시간이 초과하는 경우에는 그 초과된 시간만큼 이용시간을 무료로 연장하고, 이용자는 회사에 대하여 별도의 손해배상을 청구할 수 없습니다.</dd>
      <dd>⑦ 제2항 제3호 내지 제5호의 경우에 회사는 기술상․운영상 필요에 의해 서비스 전부를 중단할 수 있으며, 30일전에 홈페이지에 이를 공지하고 서비스의 제공을 중단할 수 있습니다. 사전에 통지할 수 없는 부득이한 사정이 있는 경우는 사후에 통지를 할 수 있습니다.</dd>
      <dd>⑧ 회사가 제7항에 따라 서비스를 종료하는 경우 이용자는 무료서비스 및 사용 기간이 남아 있지 않은 유료서비스․계속적 유료 이용계약에 대하여 손해배상을 청구할 수 없습니다.</dd>

      <dd><strong>제15조 (정보의 제공) 회사는 다음의 사항을 서비스 홈페이지에 이용자가 알기 쉽게 표시합니다.</strong></dd>
      <dd>1. 콘텐츠의 명칭ㆍ종류 및 내용</dd>
      <dd>2. 콘텐츠 이용제한에 관한 내용</dd>
      <dd>3. 콘텐츠의 제작 및 표시연월일</dd>
      <dd>4. 콘텐츠 제작자의 성명, 주소, 전화번호</dd>
      <dd>5. 콘텐츠의 이용방법, 이용료 기타 이용조건</dd>
      <dd>6. 기타 회사가 필요하다고 인정하는 사항</dd>

      <dd><strong>제16조 (정보의 수집 등) 회사는 서비스 운영 및 안정화 등 서비스 품질 개선을 위하여 이용자 PC 등 단말기 설정 및 사양 정보를 수집·활용할 수 있습니다.</strong></dd>

      <dd><strong>제17조 (이용상품)</strong></dd>
      <dd>① 회사는 이용자가 별도 비용지급 없이 이용할 수 있는 서비스(이하 “무료서비스”라 한다)와 회사가 미리 책정한 요금을 지불하고 이용하는 서비스(이하 “유료서비스”라 한다)를 제공할 수 있으며, 이용자는 서비스를 선택하여 이용할 수 있습니다.</dd>
      <dd>② 서비스의 이용에 대한 대금지급방법은 회사가 미리 정한 방법을 통하여 할 수 있습니다.</dd>
      <dd>③ 제1항의 유료서비스 이용과 관련하여, 이용자가 선택한 유료서비스 이용신청 후, 다음 각 호에 해당하는 사항을 준수하여야 합니다.</dd>
      <dd>1. 유료서비스 이용을 신청한 이용자는 서비스 이용요금을 성실히 납부하여야 합니다.</dd>
      <dd>2. 유료서비스 이용을 신청한 이용자는 서비스 이용요금을 신청 후 회사에서 제공하는 방법으로 지급하여야 합니다. 단, 무통장입금의 방식으로 신청한 이용자는 신청 완료 후 3일 이내에 해당 금액을 입금하여야 하며, 3일 이내에 입금하지 않을 시에는 그 신청을 철회한 것으로 봅니다.</dd>
      <dd>④ 회사는 미성년자인 이용자가 결제가 필요한 유료서비스를 이용하고자 하는 경우 부모 등 법정 대리인의 동의를 얻어야 하고, 동의 없이 이루어진 유료서비스 이용은 법정대리인이 취소할 수 있다는 내용을 유료서비스 이용을 위한 결제 전에 고지하도록 합니다.</dd>

      <dd><strong>제18조 (저작권 등의 귀속)</strong></dd>
      <dd>① 서비스 내 회사가 제작한 콘텐츠에 대한 저작권 기타 지식재산권은 회사의 소유입니다.</dd>
      <dd>② 이용자는 회사가 제공하는 서비스를 이용함으로써 얻은 정보 중 회사 또는 제공자에 지식재산권이 귀속된 정보를 회사 또는 제공자의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.</dd>
      <dd>③ 이용자가 서비스를 통해 업로드 또는 전송하는 커뮤니케이션, 이미지, 사운드, 영상 및 모든 자료 및 정보(이하 '이용자 콘텐츠'라 한다)에 대하여 회사는 이용자의 명시적인 동의가 없이 상업적으로 이용하지 않으며, 이용자는 언제든지 이러한 이용자 콘텐츠를 삭제할 수 있습니다.</dd>
      <dd>④ 회사는 이용자가 게시하거나 등록하는 서비스 내의 게시물, 게시 내용에 대해 제12조에서 규정하는 금지행위에 해당된다고 판단되는 경우, 사전통지 없이 이를 삭제하거나 이동 또는 등록을 거부할 수 있습니다.</dd>
      <dd>⑤ 회사가 운영하는 게시판 등에 게시된 정보로 인하여 법률상 이익이 침해된 이용자는 회사에게 당해 정보의 삭제 또는 반박내용의 게재를 요청할 수 있습니다. 이 경우 회사는 신속하게 필요한 조치를 취하고, 이를 신청인에게 통지합니다.</dd>
      <dd>⑥ 회사는 이용자가 삭제하지 않은 한 이용자 콘텐츠를 서비스 운영기간 동안 유지할 수 있으며 이용자탈퇴 후에도 지속적으로 적용됩니다.</dd>
    </dl>
    <dl>
      <dt>제5장 청약철회, 계약 해제·해지 및 이용제한</dt>

      <dd><strong>제19조 (청약의 철회)</strong></dd>
      <dd>① 회사와 유료서비스 이용에 관한 계약을 체결한 이용자는 구매일 또는 유료서비스 이용가능일로부터 7일 이내에는 청약의 철회를 할 수 있습니다.</dd>
      <dd>②이용자는 다음 각 호의 어느 하나에 해당하는 경우에는 회사의 의사에 반하여 제1항에 따른 청약철회 등을 할 수 없습니다.</dd>
      <dd>1. 이용자에게 책임이 있는 사유로 재화 등이 멸실되거나 훼손된 경우</dd>
      <dd>2. 이용자가 재화를 사용 또는 일부 소비한 경우</dd>
      <dd>3. 시간이 지나 다시 판매하기 곤란할 경우</dd>
      <dd>4. 복제가능한 재화 등의 포장을 훼손한 경우</dd>
      <dd>5. 그 밖에 거래의 안전을 위하여 법령으로 정하는 경우</dd>
      <dd>③ 회사는 제2항 제2호부터 4호까지 규정에 따라 청약철회 등이 불가능한 재화 등의 경우에는 그 사실을 재화 등의 포장이나 그밖에 이용자가 쉽게 알 수 있는 곳에 명확하게 적시하거나 시험 사용 상품을 제공하는 등의 방법으로 청약철회 등의 권리 행사가 방해받지 아니하도록 조치하여야 합니다. 만약 회사가 이러한 조치를 하지 아니한 경우에는 제2항 제2호 내지 제4호의 청약철회 제한사유에도 불구하고 이용자는 청약철회를 할 수 있습니다.</dd>
      <dd>④ 이용자는 제1항 내지 제3항의 규정에도 불구하고 유료서비스의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 구매일 또는 유료서비스 이용가능일로부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다.</dd>
      <dd>⑤ 이용자는 구두 또는 서면(전자문서 포함), 전자우편으로 청약철회를 할 수 있습니다.</dd>

      <dd><strong>제20조(청약 철회 등의 효과)</strong></dd>
      <dd>① 이용자가 청약철회를 한 경우 회사는 지체없이 이용자의 유료서비스를 회수 또는 삭제하고 유료서비스를 회수 또는 삭제한 날로부터 3영업일 이내에 지급받은 대금을 환급합니다.</dd>
      <dd>② 이 경우 회사가 이용자에게 환급을 지연한 때에는 그 지연기간에 대하여 콘텐츠이용자보호지침에서 정하는 이율을 곱하여 산정한 지연이자를 지급합니다.</dd>
      <dd>③ 회사는 위 대금을 환급함에 있어서 이용자가 신용카드나 그 밖에 전자상거래 등에서의 소비자보호에 관한 법률 시행령으로 정하는 결제수단으로 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 대금의 청구를 정지 또는 취소하도록 요청합니다. 다만 회사가 결제업자로부터 이미 대금을 지급받은 때에는 이를 결제업자에게 환불하고 이를 소비자에게 통지합니다.</dd>
      <dd>④ 회사는 이미 재화 등이 일부 사용되거나 일부 소비된 경우에는 그 재화 등의 일부 사용 또는 일부 소비에 의하여 이용자가 얻은 이익 또는 그 재화 등의 공급에 든 비용에 상당하는 금액을 이용자에게 청구할 수 있습니다.</dd>
      <dd>⑤ 이용자가 청약철회를 한 경우 재화 등의 반환에 필요한 비용은 이용자가 부담하고, 회사는 이용자에게 청약철회를 이유로 위약금 또는 손해배상을 청구할 수 없습니다.</dd>

      <dd><strong>제21조 (이용자의 해제 및 해지)</strong></dd>
      <dd>① 이용자는 서비스 이용계약을 해지(이하 '이용자탈퇴'라 한다)할 수 있습니다. 이용자가 이용자탈퇴를 신청한 경우 회사는 이용자 본인 여부를 확인할 수 있으며, 해당 이용자가 본인으로 확인되는 경우에 이용자의 신청에 따른 조치를 취합니다.</dd>
      <dd>② 이용자가 이용자탈퇴를 원하는 경우에는 고객센터 및 서비스 내 이용자탈퇴 절차를 통하여 이용자탈퇴를 할 수 있습니다.</dd>

      <dd><strong>제22조 (회사의 해제 및 해지)</strong></dd>
      <dd>① 회사는 이용자가 이 약관에서 정한 이용자의 의무를 위반하였거나 최근 1년 동안 서비스 이용기록이 없는 경우에는 이용자에 대한 사전 통보 후 계약을 해지할 수 있습니다. 다만, 이용자가 현행법 위반 및 고의 또는 중대한 과실로 회사에 손해를 입힌 경우에는 사전 통보 없이 이용계약을 해지할 수 있습니다.</dd>
      <dd>② 회사가 이용계약을 해지하는 경우 회사는 이용자에게 서면, 전자우편 또는 이에 준하는 방법으로 다음 각 호의 사항을 이용자에게 통보합니다.</dd>
      <dd>1. 해지사유</dd>
      <dd>2. 해지일</dd>
      <dd>③ 제1항 단서의 경우, 이용자는 유료서비스의 사용권한을 상실하고 이로 인한 환불 및 손해배상을 청구할 수 없습니다.</dd>

      <dd><strong>제23조 (이용자에 대한 서비스 이용제한)</strong></dd>
      <dd>① 회사는 이용자에게 다음 각 호의 구분에 따라 이용자의 서비스 이용을 제한할 수 있습니다. 이용제한이 이루어지는 구체적인 이용자의 의무위반 사유는 제25조에 따라 운영정책에서 정할 수 있습니다.</dd>
      <dd>1. 일부 권한 제한 : 일정기간 또는 영구히 일정 권한을 제한</dd>
      <dd>2. 계정 이용제한 : 일정기간 또는 영구히 이용자 계정의 이용을 제한</dd>
      <dd>3. 이용자 이용제한 : 일정기간 또는 영구히 이용자의 서비스 이용을 제한</dd>
      <dd>② 회사의 이용제한이 정당한 경우에 회사는 이용제한으로 인하여 이용자가 입은 손해를 배상하지 않습니다.</dd>

      <dd><strong>제24조 (잠정조치로서의 이용제한)</strong></dd>
      <dd>① 회사는 다음 각 호에 해당하는 문제에 대한 조사가 완료될 때까지 계정을 정지할 수 있습니다.</dd>
      <dd>1. 계정이 해킹 또는 도용당하였다는 정당한 신고가 접수된 경우</dd>
      <dd>2. 불법프로그램 사용 등 위법행위자로 합리적으로 의심되는 경우</dd>
      <dd>3. 그 밖에 위 각호에 준하는 사유로 계정의 잠정조치가 필요한 경우</dd>
      <dd>② 제1항의 경우 회사는 조사가 완료된 후 서비스 이용 기간에 비례하여 일정액을 지급하여 이용하는 이용자에게 정지된 기간만큼 이용자의 서비스 이용기간을 연장합니다. 다만, 제1항에 의한 위법행위자로 판명된 경우에는 그러하지 아니합니다.</dd>

      <dd><strong>제25조 (이용제한의 사유와 절차)</strong></dd>
      <dd>① 회사는 위반행위의 내용, 정도, 횟수, 결과 등 제반사정을 고려하여 이용제한이 이루어지는 구체적인 사유 및 절차를 운영정책으로 정할 수 있습니다.</dd>
      <dd>② 회사가 제23조에서 정한 이용제한을 하는 경우에는 이용자에게 서면 또는 전자우편이나 서비스 홈페이지(www.academy-cloud.net)에 게재하는 방법으로 다음 각 호의 사항을 이용자에게 통보합니다.</dd>
      <dd>1. 이용제한 사유</dd>
      <dd>2. 이용제한 유형 및 기간</dd>
      <dd>3. 이용제한에 대한 이의신청 방법</dd>

      <dd><strong>제26조 (이용제한에 대한 이의신청 절차)</strong></dd>
      <dd>① 이용자가 회사의 이용제한에 불복하고자 할 때에는 통보를 받은 날로부터 15일 이내에 회사의 이용제한에 불복하는 이유를 기재한 이의신청서를 서면, 전자우편 또는 이에 준하는 방법으로 회사에 제출하여야 합니다.</dd>
      <dd>② 제1항의 이의신청서를 접수한 회사는 접수한 날로부터 15일 이내에 이용자의 불복 이유에 대하여 서면, 전자우편 또는 이에 준하는 방법으로 답변하여야 합니다. 다만, 회사는 15일 이내에 답변이 곤란한 경우 이용자에게 그 사유와 처리일정을 통보합니다.</dd>
      <dd>③ 회사는 위 답변 내용에 따라 상응하는 조치를 취하여야 합니다.</dd>
    </dl>
    <dl>
      <dt>제6장 손해배상 및 환불 등</dt>

      <dd><strong>제27조 (손해배상)</strong></dd>
      <dd>① 회사가 고의 또는 중과실로 이용자에게 손해를 끼친 경우, 손해에 대하여 배상할 책임이 있습니다.</dd>
      <dd>② 이용자가 이 약관을 위반하여 회사에 손해를 끼친 경우, 이용자는 회사에 대하여 그 손해에 대하여 배상할 책임이 있습니다.</dd>

      <dd><strong>제28조 (환불)</strong></dd>
      <dd>① 계속적 이용계약의 경우에는 상품가액에서 이용자가 이미 사용한 부분 또는 기간에 해당하는 금액을 제외하고 남은 금액에서 남은금액의 10% 이내 금액 또는 남은 금액이 10,000원 이내인 경우에는 일정금액을 공제한 후 나머지 금액을 환불해 드립니다. 일정금액을 공제하는 경우 공제 후 남은 금액이 공제금액보다 작은 경우에는 환불할 수 없습니다.</dd>
      <dd>② 현행법령 및 중대한 약관 위반 등 이용자의 귀책사유로 이용계약을 해지하는 경우 환불이 제한될 수 있습니다.</dd>

      <dd><strong>제29조 (회사의 면책)</strong></dd>
      <dd>① 회사는 전시, 사변, 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 기술적 결함 기타 불가항력적 사유로 서비스를 제공할 수 없는 경우에는 책임이 면제됩니다.</dd>
      <dd>②회사는 이용자의 귀책사유로 인한 서비스의 중지, 이용장애 및 계약해지에 대하여 책임이 면제됩니다.</dd>
      <dd>③회사는 기간통신 사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니하여 이용자에게 손해가 발생한 경우에 대해서 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>④회사는 사전에 공지된 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 서비스가 중지되거나 장애가 발생한 경우에 대해서 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>⑤회사는 이용자의 컴퓨터 환경으로 인하여 발생하는 제반 문제 또는 회사의 고의 또는 중대한 과실이 없는 네트워크 환경으로 인하여 발생하는 문제에 대해서 책임이 면제됩니다.</dd>
      <dd>⑥회사는 이용자 또는 제3자가 게시 또는 전송한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 대해서는 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>⑦회사는 이용자 상호간 또는 이용자와 제3자간에 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</dd>
      <dd>⑧회사가 제공하는 서비스 중 무료서비스의 경우에는 회사의 고의 또는 중대한 과실이 없는 한 회사는 손해배상을 하지 않습니다.</dd>
      <dd>⑨ 서비스 중 일부는 다른 사업자가 제공하는 서비스를 통하여 제공될 수 있으며, 회사는 다른 사업자가 제공하는 서비스로 인하여 발생한 손해 등에 대해서는 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>⑩회사는 이용자가 서비스를 이용하며 기대하는 결과를 얻지 못하거나 상실한 것에 대하여 책임을 지지 않으며, 서비스에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>⑪ 회사는 이용자의 컴퓨터 오류에 의한 손해가 발생한 경우 또는 신상정보 및 전자우편주소를 부정확하게 기재하거나 미기재하여 손해가 발생한 경우에 대하여 회사의 고의 또는 중대한 과실이 없는 한 책임이 면제됩니다.</dd>
      <dd>⑫ 회사는 관련 법령, 정부 정책 등에 따라 서비스 또는 이용자에 따라 서비스 이용조건 등을 제한할 수 있으며, 이러한 제한사항 및 제한에 따라 발생하는 서비스 이용 관련 제반사항에 대해서는 책임이 면제됩니다.</dd>

      <dd><strong>제30조 (이용자의 고충처리 및 분쟁해결)</strong></dd>
      <dd>①회사는 이용자의 편의를 고려하여 이용자의 의견이나 불만을 제시하는 방법을 서비스 홈페이지(bloter.clebee.net)에서 안내합니다.</dd>
      <dd>②회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 합리적인 기간 내에 이를 신속하게 처리합니다. 다만, 처리에 장기간이 소요되는 경우에는 이용자에게 장기간이 소요되는 사유와 처리일정을 서비스 홈페이지(bloter.clebee.net)에 공지하거나 전자우편, 전화 또는 서면 등으로 통보합니다.</dd>
      <dd>③ 회사와 이용자간에 분쟁이 발생하여 제3의 분쟁조정기관이 조정할 경우 회사는 이용제한 등 이용자에게 조치한 사항을 성실히 증명하고, 조정기관의 조정에 따를 수 있습니다.</dd>
      <dd>제31조 (이용자에 대한 통지)</dd>
      <dd>① 회사가 이용자에게 통지를 하는 경우 이용자가 지정한 전자우편주소, 전자메모 등으로 할 수 있습니다.</dd>
      <dd>② 회사는 이용자 전체에게 통지를 하는 경우 7일 이상 회사의 사이트의 초기화면에 게시하거나 팝업화면 등을 제시함으로써 제1항의 통지에 갈음할 수 있습니다.</dd>
      <dd>제32조 (재판권 및 준거법) 이 약관은 대한민국 법률에 따라 규율되고 해석되며, 회사와 이용자간에 발생한 분쟁으로 소송이 제기되는 경우, 법령에 정한 절차에 따른 법원을 관할 법원으로 합니다.</dd>
    </dl>
    <dl>
      <dt>부칙</dt>
      <dd>이 약관은 2016년 8월 10일부터 시행합니다.</dd>
    </dl>

</div>

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
        <a href="terms.html">
          <span class="link footer-terms">이용약관</span>
        </a>
      </li>
      <li class="menu-button">
        <a href="privacy.html">
          <span class="link footer-privacy">개인정보취급방침</span>
        </a>
      </li>
      <li class="menu-button">
        <a href="help.html">
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
		<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"80e91f9934","applicationID":"38309245","transactionName":"YVAGZkZXV0oCBk0NClgaJVFAX1ZXTBFcFghF","queueTime":0,"applicationTime":174,"atts":"TRcFEA5NREQ=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>

<!-- Mirrored from guitar.academy-cloud.net/terms by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 07 May 2018 06:10:03 GMT -->
</html>