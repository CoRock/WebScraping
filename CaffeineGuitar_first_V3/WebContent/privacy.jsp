<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>개인정보취급방침 | 카페인기타 악보 레슨</title>
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
<body class="footer privacy " >
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
              <form method="POST" action="https://guitar.academy-cloud.net/login" accept-charset="UTF-8"><input name="_token" type="hidden" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
              <input type="hidden" name="_token" value="KrlJnFyqXXRMKPsAGy0wX1RuiRilGWxe0pi7Fpr8">
                <div class="form-group">
                  <input class="form-control" autofocus="autofocus" placeholder="이메일" title="이메일 주소" required="true" id="email" name="email" type="email">
              	  <input class="form-control" autocomplete="off" placeholder="비밀번호 (적어도 6자 이상 입력)" title="비밀번호 (적어도 6자 이상 입력)" required="true" id="password" name="password" type="password" value="">
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
<div class="terms-wrapper container">
  <div class="sub-nav">
    <div class="btn-group" role="group" aria-label="설정 메뉴">
      <a href="terms.jsp" class="btn btn-default">이용약관</a>
      <a href="privacy.jsp" class="btn btn-default active">개인정보취급방침</a>
    </div>
  </div>

      <p>카페인기타 아카데미 클라우드는 (주)클레비가 운영하는 아카데미 클라우드의 플랫폼을 이용하고 있으며 개인 정보보호를 위해 항상 고민하고 있습니다.</p>
    <p class="mt30">서비스를 이용하는 데 필요한 최소한의 정보만을 수집하고, 운영자 또한 반드시 필요한 경우에 한하여 최소한의 범위 내에서 열람할 수 있도록 이용하여 보관하고 있습니다.</p>
    <p class="mt30">‘아카데미 클라우드’는 개인정보보호를 위해 만전을 기하며, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 등 관련 법령을 준수합니다.</p>
    <p>‘아카데미 클라우드’는 개인정보취급방침을 통하여 이용자께서 제공하시는 개인정보가 어떠한 용도와 방식으 로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. ‘아카데미 클라우드’는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별통지)을 통하여 공지 할 것입니다.</p>

    <dl>
      <dt>1. 수집하는 개인정보 항목 및 수집 방법</dt>
      <dd>가. 고객관리 및 이용에 따른 본인확인, 개인식별을 위해 개인정보를 수집합니다.</dd>
      <dd>나. 닉네임, 이메일, 비밀번호</dd>
      <dd>다. 서비스 이용과정에서 프로필 이미지, 직업군 및 경력연차, SNS, IP주소, 쿠키, 방문일시, 서비스 이용 기록, 과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</dd>
      <dd>라. ‘아카데미 클라우드’는 홈페이지 (회원가입)을 통하여 개인정보를 수집합니다.</dd>
    </dl>

    <dl>
      <dt>2. 개인정보의 수집 및 이용목적</dt>
      <dd><strong>가. ‘아카데미 클라우드’는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</strong></dd>
      <dd>•서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산:콘텐츠 제공,구매 및 요 금 결제,청구서 등 발송,금융거래 본인 인증 및 금융 서비스,요금추심</dd>
      <dd>•회원 관리:회원제 서비스 이용에 따른 본인확인,개인 식별,불량회원의 부정 이용 방지 와 비인가 사용 방지,가입 의사 확인,연령 확인,불만처리 등 민원처리,고지사항 전달 •마케팅 및 광고에 활용:신규 서비스(제품)개발 및 특화,이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이 용에 대한 통계</dd>

      <dd><strong>나. 상세 수집정보별 수집목적은 다음과 같습니다.</strong></dd>
      <dd>• 아이디, 이름, 닉네임, 비밀번호 : 회원제 서비스 이용에 따른 본인식별</dd>
      <dd>• 아이디, 이메일주소 : 불량회원의 부정한 이용 재발 방지</dd>
      <dd>• 이메일주소 : 고지사항 전달, 본인 의사확인, 불만처리 등 의사소통 경로의 확보 • 그 외 선택항목 : 개인맞춤서비스를 제공하기 위한 자료</dd>
    </dl>

    <dl>
      <dt>3. 개인정보의 보유 및 이용기간</dt>
      <dd>원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단,다음의 정보에 대해서는 아래와 같이 보존할 필요가 있는 경우 명시한 기간 동안 개인정보 를 보존합니다.</dd>

      <dd><strong>가.회사 내부 방침에 의한 보존</strong></dd>
      <dd>• 이용제한 기록 등은 부정 가입 및 이용 방지를 위해 1년간 보존</dd>

      <dd><strong>나. 관련 법령에 의한 보존</strong></dd>
      <dd>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</dd>
      <dd>• 계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률) • 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법 률)</dd>
      <dd>• 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법 률)</dd>
      <dd>• 웹사이트 방문기록 : 3개월 (통신비밀보호법)</dd>
    </dl>

    <dl>
      <dt>4. 개인정보의 파기절차 및 방법</dt>
      <dd>‘아카데미 클라우드’는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</dd>
      <dd><strong>가. 파기절차</strong></dd>
      <dd>• 이용자가 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져 (종이 의 경우 별도의 서류함)내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이 용기간 참조) 일정 기간 저장된 후 파기됩니다.</dd>
      <dd>• 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 목적 이외의 다른 목적으 로 이용되지 않습니다.</dd>
      <dd><strong>나. 파기방법</strong></dd>
      <dd>• 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합 니다.</dd>
      <dd>• 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</dd>
    </dl>

    <dl>
      <dt>5. 수집한 개인정보의 공유 및 제공</dt>
      <dd>‘아카데미 클라우드’는 이용자의 동의가 있거나 법률의 규정에 의한 경우를 제외하고는 어떠한 경우에도 이용 범위를 넘어 이용자의 개인정보를 이용하거나 외부에 공개하지 않습니다.</dd>
      <dd>그리고 이용자의 개인정보를 외부와 공유하는 경우에는 정보수집 또는 정보제공 이전에 이용자들 에게 개인정보를 공유할 기관이나 단체가 누구인지, 어떤 정보가 왜 필요한지, 그리고 언제까지 어떻게 보호되고 관리되는지 알려드리고 동의를 구하는 절차를 거치게 되며, 이용자들의 동의가 없는 경우에는 추가적인 정보를 임의로 수집하거나 공유하지 않습니다.</dd>
      <dd>다만, 아래의 경우에는 이용자의 동의 없이 개인정보를 제공할 수 있습니다.</dd>

      <dd>• 이용자가 사전에 공개에 동의한 경우</dd>
      <dd>•통계작성,학술연구 또는 시장조사를 위하여 개인을 식별 할 수 없는 형태로 제공하는 경우 • ‘아카데미 클라우드’ 이용 약관 또는 운영원칙을 위반한 경우나 ‘아카데미 클라우드’ 서비스를 이용하여 타인에게 정신적, 물질적 피해를 줌으로써 그에 대한 법적인 조치를 취하기 위하여 개인정보를 공개해야 한다고 판단되는 충분한 근거가 있는 경우</dd>
      <dd>• 적법한 절차에 의해 정부나 수사기관의 요청이 있는 경우</dd>
    </dl>

    <dl>
      <dt>6. 수집한 개인정보의 위탁</dt>
      <dd>‘아카데미 클라우드’는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우,위탁 대상자와 위탁 업무 내용에 대해 이용자에게 통지하고 필 요한 경우 사전 동의를 받도록 하겠습니다.</dd>
    </dl>

    <dl>
      <dt>7. 이용자 및 법정대리인의 권리와 그 행사방법</dt>
      <dd>이용자 및 법정 대리인은 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으 며 가입해지를 요청할 수도 있습니다.</dd>
      <dd>이용자의 개인정보 조회, 수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 ,가입해 지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</dd>
      <dd>이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인 정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.</dd>
      <dd>‘아카데미 클라우드’는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 '아카데미 클라우드'가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또 는 이용할 수 없도록 처리하고 있습니다.</dd>
    </dl>

    <dl>
      <dt>8. 개인정보의 안정성 확보 조치</dt>
      <dd>‘아카데미 클라우드’는 이용자들의 개인정보를 취급함에 있어 안전성 확보에 필요한 기술적/관리적 및 물리 적 조치를 하고 있습니다.</dd>
      <dd>•이용자의 개인정보 중 비밀번호는 암호화 되어 저장 및 관리되고 있어,본인만이 알 수 있으 며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별 도 보안기능을 사용하고 있습니다.</dd>
      <dd>• 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술 적/물리적으로 감시 및 차단하고 있습니다.</dd>
      <dd>• 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화하여 개인정보를 관리하는 대 책을 시행하고 있습니다.</dd>
    </dl>

    <dl>
      <dt>9.개인정보 자동수집 장치의 설치,운영 및 그 거부에 관한 사항</dt>
      <dd><strong>가. ‘아카데미 클라우드’는 이용자의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니 다. 쿠키란 ‘아카데미 클라우드’ 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. '‘아카데미 클라우드’는 다음과 같은 목적 을 위해 쿠키를 사용합니다.</strong></dd>
      <dd>• 현재 접속한 이용자에 관한 정보를 로그인 이후 다른 페이지에서 해당하는 쿠키의 보유자가 어떤 ID로 로그인 하였는지 등을 확인하여 서비스를 지속/연결하기 위한 보조수단으로 사용됩니 다.</dd>
      <dd>• ‘아카데미 클라우드’ 사이트 및 ‘아카데미 클라우드’ 플레이어에서 환경설정 정보를 저장하는 보조기억 공간으로 사용합니다.</dd>
      <dd>• ‘아카데미 클라우드’의 쿠키정보는 해쉬를 이용하여 암호화하는 정책을 사용하고 있습니다. 이러한 정 보를 임의로 조작하는것은 해킹 시도로 간주되어 형사처벌을 받을 수 있습니다.</dd>
      <dd>•쿠키의 사용‘아카데미 클라우드’의 웹서비스(로그인 정보 연동 등의 사용자 특정)계정 정보 처리 사이트 보안 및 유지 관리 동 웹사이트의 서비스 향상 평가 검토등에 사용 특정 고유식별인자를 이용하여 특정 개인에 연결되지 않는 정보를 연구,분석, 보고용으로 사용 특정 고유식별인자를 이용하여 특정 개인에 연결되는 정보를 조사, 분석, 보고용으로 사용</dd>
      <dd><strong>나.쿠키 설정 거부 방법</strong></dd>
      <dd>예: 쿠키 설정을 거부하는 방법으로는 이용자께서 사용하시는 웹 브라우저의 옵션을 선택함으로 써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할수 있습니다.</dd>
      <dd>설정방법 예(인터넷 익스플로러의 경우) : 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정 보 단, 이용자께서 쿠키 설치를 거부하였을 경우 회원관련 서비스는 일체 이용하실 수 없습니 다.</dd>
    </dl>

    <dl>
      <dt>10. 개인정보에 관한 민원 서비스</dt>
      <dd>‘아카데미 클라우드’는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</dd>
      <dd>개인정보관리책임자 성명 : 이형래 이메일 : contact@clebee.net</dd>
      <dd>이용자께서는 '아카데미 클라우드'의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정 보관리책임자 혹은 담당부서로 신고하실 수 있습니다. ‘아카데미 클라우드’는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</dd>
      <dd>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</dd>

      <dd><strong>▶ 개인정보 침해신고센터 (한국인터넷진흥원 운영) - 소관업무 : 개인정보 침해사실 신고, 상담 신청 - 홈페이지 : privacy.kisa.or.kr</strong></dd>
      <dd>- 전화 : (국번없이) 118</dd>
      <dd>- 주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터</dd>
      <dd><strong>▶ 개인정보 분쟁조정위원회 (한국인터넷진흥원 운영)</strong></dd>
      <dd>- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)</dd>
      <dd>- 홈페이지 : privacy.kisa.or.kr</dd>
      <dd>- 전화 : (국번없이) 118</dd>
      <dd>- 주소 : (138-950) 서울시 송파구 중대로 135 한국인터넷진흥원 개인정보침해신고센터</dd>
      <dd><strong>▶ 대검찰청 사이버범죄수사단 : 02-3480-3573 (www.spo.go.kr) ▶ 경찰청 사이버범죄수사단 : 1566-0112 (www.netan.go.kr)</strong></dd>
    </dl>

    <dl>
      <dt>11. 개인정보취급방침의 변경</dt>
      <dd>이 개인정보취급방침은 2015년 1월 19일에 제정되었으며 법령•정책 또는 보안기술의 변경에 따라 내용의 추가•삭제 및 수정이 있을 때에는 변경되는 개인정보취급방침을 시행하기 최소 7일 전에 ‘아카데미 클라우드’ 홈페이지를 통해 변경 이유 및 내용 등을 공지하도록 하겠습니다.</dd>
      <dd>개인정보보호정책 버전번호 : 1.0 개인정보보호정책 공고일자 : 2015년 1월 19일 개인정보보 호정책 시행일자 : 2015년 1월 19일</dd>
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
		<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"80e91f9934","applicationID":"38309245","transactionName":"YVAGZkZXV0oCBk0NClgaJVFAX1ZXTBVLDRNXVh0=","queueTime":0,"applicationTime":173,"atts":"TRcFEA5NREQ=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>

<!-- Mirrored from guitar.academy-cloud.net/privacy by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 07 May 2018 06:10:03 GMT -->
</html>
