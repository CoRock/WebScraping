// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Account = {
  init: function() {
    $(document).on("keyup", '#signup_subdomain', function(e) {
      var subdomain = $(this).val();
      $(".domain-preview em").html(subdomain);
    });

    $(document).on("click", '[data-behavior="trigger-account-site"]', Account.go);
    $(document).on("click", '[data-behavior="trigger-find-account"]', Account.find);
    $(document).on("click", '[data-behavior="trigger-login-account"]', Account.login);
  },

  login: function(e) {
    e.preventDefault();

    $("#login-account").removeClass("hidden");
    $("#find-account").addClass("hidden");

    $("#account_subdomain").focus();
  },

  find: function(e) {
    e.preventDefault();

    $("#find-account").removeClass("hidden");
    $("#login-account").addClass("hidden");

    $("#find-account-email").focus();
  },

  go: function(e) {
    e.preventDefault();

    var account = $("#account_subdomain").val();
    var return_to = $(this).data('return')
    var url = 'https://' + account + ".academy-cloud.net/users/sign_in";
    if (return_to.length > 0) {
      url = url + '?return_to=' + return_to;
    }
    location.href = url;
    return false;
  }
};

//$(document).on("ready page:load", Account.init);
$(document).ready(Account.init);
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var ClassRoom = {
  init: function() {
    if (!$(".classrooms.show")) return

    $(document).on("click", '[data-behavior="trigger-sidemenu"]', ClassRoom.switch_sidebar);
    $(document).on("click", '[data-behavior="trigger-video-speed"]', ClassRoom.change_video_speed);
    $(document).on("click", '#lecture_content_type_article', ClassRoom.edit_article);
    $(document).on("click", '#lecture_content_type_video', ClassRoom.edit_video);

    $(window).resize(function() {
      var height = $(window).height() - 60;
      $("#academy-video").css("height", height);
    });
  },

  change_video_speed: function(e) {
    e.preventDefault();

    if (!$("video")[0]) {
      swal({
        title: "동영상 속도제어 안내",
        text: "동영상이 FLASH 모드로 실행되고 있습니다.\nFLASH 모드에서는 동영상의 속도제어를 이용할 수 없습니다.\n기능을 이용하려면 Chrome 브라우저를 이용하시길 바랍니다.",
        type: "warning",
        confirmButtonText: "확인했습니다.",
      });

      return;
    }

    var speed = parseFloat($(this).data("speed"));
    var text = $(this).text();

    $("video")[0].playbackRate = speed;
    $("#js-player-speed").text(text);
  },

  switch_sidebar: function(e) {
    $("#content-overlay").toggleClass("open");
    $("#sidebar").toggleClass("open");
    $("#sidebar-switcher").toggleClass("open");
    $("body").toggleClass("no-overflow-web");

    // Sidebar Switcher 가 클릭될 경우 처리
    // 현재 클래스룸이 비디오 콘텐츠를 가지고 있는 경우
    // 사이드바가 열릴 때 : 동영상이 플레이 상태였다면 중지 상태로 변경
    // 사이드바가 닫힐 때 : 동영상이 중지 상태라면 플레이 상태로 변경
    if ($(".class-main.video").length > 0) {
      if ($("#sidebar").hasClass("open")) {
        if (jwplayer().getState() == 'playing') {
          jwplayer().pause(true);
        }
      } else {
        if (jwplayer().getState() == 'paused') {
          jwplayer().play(true);
        }
      }
    }
  },

  edit_article: function(e) {
    $("#js-lecture-article").removeClass("hidden");
    $("#js-video-files").addClass("hidden");
  },

  edit_video: function(e) {
    $("#js-video-files").removeClass("hidden");
    $("#js-lecture-article").addClass("hidden");
  }

};

//$(document).on("ready page:load", ClassRoom.init);
$(document).ready(ClassRoom.init);

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Courses = {
	init: function() {
		if (!$(".courses.editable").length) return;
	},
  
	courseCoverUpload: function(site_account_id) {
		$("#fileupload").fileupload({
			formData: function(form) {
				return [
					{name: "_token", value: $("form").find("[name=_token]").val()},
					{name: "site_account_id", value: site_account_id},
					{name: "type", value: "Course"},
					{name: "scope", value: "cover"}
				];
			},
			dataType: "json",
			done: function (e, data) {
				$("#modal-close").val("닫기");
				$("#modal-close").attr("disabled", false);
			},
			progressall: function (e, data) {
				var progress = parseInt(data.loaded / data.total * 100, 10);
				$("#progress .progress-bar").css("width", progress + "%");
			}
		}).prop("disabled", !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : "disabled");
	  
		$("#fileupload").on("change", function(){
			if (this.files && this.files[0]) {
				$(".attachinary_container").css("display", "block");
				$("#modal-close").val("업로드중...");
				$("#modal-close").attr("disabled", true);
			
				var reader = new FileReader();
				reader.onload = function (e) {
					$("#cover_preview").attr("src", e.target.result);
				};
				reader.readAsDataURL(this.files[0]);
			}
		});
	},
};

//$(document).on("ready page:load", Courses.init);
$(document).ready(Courses.init);
var Dashboard = {
  init: function() {
    if (!$(".dashboards.show").length) return;
    
    $(document).on("click", '[data-behavior="trigger-tabs"]', Dashboard.select_tabs);
  },

  clear_tabs: function() {
    $('[data-behavior="trigger-tabs"]').removeClass("active");
    $("#tab-information").addClass("hidden");
    $("#tab-lectures").addClass("hidden");
    $("#tab-qna").addClass("hidden");
  },

  select_tabs: function(e) {
    e.preventDefault();

    Dashboard.clear_tabs();
    $(this).addClass("active");
    var target = $(this).data("target");
    $(target).removeClass("hidden");
    $("#mobile-menu-title").text($(this).text());
  }

};

//$(document).on("ready page:load", Dashboard.init);
$(document).ready(Dashboard.init);

/**
 *
 * JQUERY EU COOKIE LAW POPUPS
 * version 1.0.1
 *
 * Code on Github:
 * https://github.com/wimagguc/jquery-eu-cookie-law-popup
 *
 * To see a live demo, go to:
 * http://www.wimagguc.com/2015/03/jquery-eu-cookie-law-popup/
 *
 * by Richard Dancsi
 * http://www.wimagguc.com/
 *
 */

(function($) {

// for ie9 doesn't support debug console >>>
if (!window.console) window.console = {};
if (!window.console.log) window.console.log = function () { };
// ^^^

$.fn.euCookieLawPopup = (function() {

	var _self = this;

	///////////////////////////////////////////////////////////////////////////////////////////////
	// PARAMETERS (MODIFY THIS PART) //////////////////////////////////////////////////////////////
	_self.params = {
		cookiePolicyUrl : 'https://www.academy-cloud.net/help',
		popupPosition : 'top',
		colorStyle : 'default',
		compactStyle : false,
		popupTitle : '베타 서비스 안내',
		popupText : '본 서비스는 베타 버전으로 서비스가 불안정할 수 있습니다. 불편한 사항이나 오류 사항을 피드백 주시면 개선해해 나가도록 하겠습니다.',
		buttonContinueTitle : '다시 보지 않음',
		buttonLearnmoreTitle : ' ',
		buttonLearnmoreOpenInNewWindow : true,
		agreementExpiresInDays : 60,
		autoAcceptCookiePolicy : false,
		htmlMarkup : null
	};

	///////////////////////////////////////////////////////////////////////////////////////////////
	// VARIABLES USED BY THE FUNCTION (DON'T MODIFY THIS PART) ////////////////////////////////////
	_self.vars = {
		INITIALISED : false,
		HTML_MARKUP : null,
		COOKIE_NAME : 'EU_COOKIE_LAW_CONSENT'
	};

	///////////////////////////////////////////////////////////////////////////////////////////////
	// PRIVATE FUNCTIONS FOR MANIPULATING DATA ////////////////////////////////////////////////////

	// Overwrite default parameters if any of those is present
	var parseParameters = function(object, markup, settings) {

		if (object) {
			var className = $(object).attr('class') ? $(object).attr('class') : '';
			if (className.indexOf('eupopup-top') > -1) {
				_self.params.popupPosition = 'top';
			}
			else if (className.indexOf('eupopup-fixedtop') > -1) {
				_self.params.popupPosition = 'fixedtop';
			}
			else if (className.indexOf('eupopup-bottomright') > -1) {
				_self.params.popupPosition = 'bottomright';
			}
			else if (className.indexOf('eupopup-bottomleft') > -1) {
				_self.params.popupPosition = 'bottomleft';
			}
			else if (className.indexOf('eupopup-bottom') > -1) {
				_self.params.popupPosition = 'bottom';
			}
			else if (className.indexOf('eupopup-block') > -1) {
				_self.params.popupPosition = 'block';
			}
			if (className.indexOf('eupopup-color-default') > -1) {
				_self.params.colorStyle = 'default';
			}
			else if (className.indexOf('eupopup-color-inverse') > -1) {
				_self.params.colorStyle = 'inverse';
			}
			if (className.indexOf('eupopup-style-compact') > -1) {
				_self.params.compactStyle = true;
			}
		}

		if (markup) {
			_self.params.htmlMarkup = markup;
		}

		if (settings) {
			if (typeof settings.cookiePolicyUrl !== 'undefined') {
				_self.params.cookiePolicyUrl = settings.cookiePolicyUrl;
			}
			if (typeof settings.popupPosition !== 'undefined') {
				_self.params.popupPosition = settings.popupPosition;
			}
			if (typeof settings.colorStyle !== 'undefined') {
				_self.params.colorStyle = settings.colorStyle;
			}
			if (typeof settings.popupTitle !== 'undefined') {
				_self.params.popupTitle = settings.popupTitle;
			}
			if (typeof settings.popupText !== 'undefined') {
				_self.params.popupText = settings.popupText;
			}
			if (typeof settings.buttonContinueTitle !== 'undefined') {
				_self.params.buttonContinueTitle = settings.buttonContinueTitle;
			}
			if (typeof settings.buttonLearnmoreTitle !== 'undefined') {
				_self.params.buttonLearnmoreTitle = settings.buttonLearnmoreTitle;
			}
			if (typeof settings.buttonLearnmoreOpenInNewWindow !== 'undefined') {
				_self.params.buttonLearnmoreOpenInNewWindow = settings.buttonLearnmoreOpenInNewWindow;
			}
			if (typeof settings.agreementExpiresInDays !== 'undefined') {
				_self.params.agreementExpiresInDays = settings.agreementExpiresInDays;
			}
			if (typeof settings.autoAcceptCookiePolicy !== 'undefined') {
				_self.params.autoAcceptCookiePolicy = settings.autoAcceptCookiePolicy;
			}
			if (typeof settings.htmlMarkup !== 'undefined') {
				_self.params.htmlMarkup = settings.htmlMarkup;
			}
		}

	};

	var createHtmlMarkup = function() {

		if (_self.params.htmlMarkup) {
			return _self.params.htmlMarkup;
		}

		var html =
			'<div class="eupopup-container' +
			    ' eupopup-container-' + _self.params.popupPosition +
			    (_self.params.compactStyle ? ' eupopup-style-compact' : '') +
				' eupopup-color-' + _self.params.colorStyle + '">' +
				'<div class="eupopup-head">' + _self.params.popupTitle + '</div>' +
				'<div class="eupopup-body">' + _self.params.popupText + '</div>' +
				'<div class="eupopup-buttons">' +
				  '<a href="#" class="eupopup-button eupopup-button_1">' + _self.params.buttonContinueTitle + '</a>' +
				  '<a href="' + _self.params.cookiePolicyUrl + '"' +
				 	(_self.params.buttonLearnmoreOpenInNewWindow ? ' target=_blank ' : '') +
					' class="eupopup-button eupopup-button_2">' + _self.params.buttonLearnmoreTitle + '</a>' +
				  '<div class="clearfix"></div>' +
				'</div>' +
				'<a href="#" class="eupopup-closebutton">x</a>' +
			'</div>';

		return html;
	};

	// Storing the consent in a cookie
	var setUserAcceptsCookies = function(consent) {
		var d = new Date();
		var expiresInDays = _self.params.agreementExpiresInDays * 24 * 60 * 60 * 1000;
		d.setTime( d.getTime() + expiresInDays );
		var expires = "expires=" + d.toGMTString();
		document.cookie = _self.vars.COOKIE_NAME + '=' + consent + "; " + expires + ";path=/";

		$(document).trigger("user_cookie_consent_changed", {'consent' : consent});
	};

	// Let's see if we have a consent cookie already
	var userAlreadyAcceptedCookies = function() {
		var userAcceptedCookies = false;
		var cookies = document.cookie.split(";");
		for (var i = 0; i < cookies.length; i++) {
			var c = cookies[i].trim();
			if (c.indexOf(_self.vars.COOKIE_NAME) == 0) {
				userAcceptedCookies = c.substring(_self.vars.COOKIE_NAME.length + 1, c.length);
			}
		}

		return userAcceptedCookies;
	};

	var hideContainer = function() {
		// $('.eupopup-container').slideUp(200);
		$('.eupopup-container').animate({
			opacity: 0,
			height: 0
		}, 200, function() {
			$('.eupopup-container').hide(0);
		});
	};

	///////////////////////////////////////////////////////////////////////////////////////////////
	// PUBLIC FUNCTIONS  //////////////////////////////////////////////////////////////////////////
	var publicfunc = {

		// INITIALIZE EU COOKIE LAW POPUP /////////////////////////////////////////////////////////
		init : function(settings) {

			parseParameters(
				$(".eupopup").first(),
				$(".eupopup-markup").html(),
				settings);

			// No need to display this if user already accepted the policy
			if (userAlreadyAcceptedCookies()) {
				return;
			}

			// We should initialise only once
			if (_self.vars.INITIALISED) {
				return;
			}
			_self.vars.INITIALISED = true;

			// Markup and event listeners >>>
			_self.vars.HTML_MARKUP = createHtmlMarkup();

			if ($('.eupopup-block').length > 0) {
				$('.eupopup-block').append(_self.vars.HTML_MARKUP);
			} else {
				$('BODY').append(_self.vars.HTML_MARKUP);
			}

			$('.eupopup-button_1').click(function() {
				setUserAcceptsCookies(true);
				hideContainer();
				return false;
			});
			$('.eupopup-closebutton').click(function() {
				setUserAcceptsCookies(true);
				hideContainer();
				return false;
			});
			// ^^^ Markup and event listeners

			// Ready to start!
			$('.eupopup-container').show();

			// In case it's alright to just display the message once
			if (_self.params.autoAcceptCookiePolicy) {
				setUserAcceptsCookies(true);
			}

		}

	};

	return publicfunc;
});

$(document).ready( function() {
	if ($(".eupopup").length > 0) {
		$(document).euCookieLawPopup().init({
			'info' : 'YOU_CAN_ADD_MORE_SETTINGS_HERE',
			'popupTitle' : ' ',
			'popupText' : '본 서비스는 베타 버전으로 서비스가 불안정할 수 있습니다. 불편한 사항이나 오류 사항을 피드백 주시면 개선해 나가도록 하겠습니다.'
		});
	}
});

$(document).bind("user_cookie_consent_changed", function(event, object) {
	console.log("User cookie consent changed: " + $(object).attr('consent') );
});

}(jQuery));

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var MediaConsole = {
  init: function() {
    if (!$("#media-console").length) return;

    $(document).on("click", "#js-file-upload-trigger", function(e) {
      e.preventDefault();
      var target = $(this).data("target");
      $(target).trigger("click");
    });

    $(document).on("click", '[data-behavior="trigger-media-console-dashboard"]', function(e) {
      e.preventDefault();

      $(this).addClass("active");
      $('[data-behavior="trigger-media-console-usage"]').removeClass("active");
      $('[data-behavior="trigger-media-console-image"]').removeClass("active");
      $('[data-behavior="trigger-media-console-video"]').removeClass("active");

      $("#dashboard-container").removeClass("hidden")
      $("#media-usages").addClass("hidden")
      $("#video-library-container").addClass("hidden")
      $("#image-library-container").addClass("hidden")
    });

    $(document).on("click", '[data-behavior="trigger-media-console"]', function(e) {
      e.preventDefault();
      $("#media-console .media-console-wrapper").toggleClass("open");
      if ($("#media-console .media-console-wrapper").hasClass("open")) {
        $("body").addClass("no-overflow-web");
      } else {
        $("body").removeClass("no-overflow-web");
      }
    });

    var media_console_close = $('#media_console_close');

    media_console_close.click(function() {
      if ($("#media-console .media-console-wrapper").removeClass("open")) {
        $("body").removeClass("no-overflow-web");
      } else {
        $("body").addClass("no-overflow-web");
      }
    });
  },

  image_uploaded: function(response) {
	var error = response.link.error || '';
	if (error.length > 0) {
		swal({
			title: "용량 초과",
			text: error,
			type: "warning",
			confirmButtonText: "닫기",
		});
		
	    $("#div-dropzone-spinner").css('display', 'none');
	    $("#dz-image-preview").css('display', 'none');
	    
		return;
	}
	
    var url = response.link.url;
    var id = response.link.id;
    var created_at = response.link.created_at;
    var delete_path = response.link.delete_path;
    var filename = response.link.filename;
    var total_image_size = Math.abs($("#total-image-count").html()) + Math.abs(response.link.total_image_size);
    var total_file_size = response.link.total_file_size;

    var template = '<div id="library_' + id + '" class="library image"> \
      <div class="image-wrapper" style="background-image: url(' + url.replace(/ /gi, "%20") + ');"> \
        <div class="mask"> \
          <div class="actions"> \
            <button class="btn btn-sm btn-default copy-clipboard" data-clipboard-text="' + url.replace(/ /gi, "%20") + '"> \
              <i class="fa fa-link fw"></i> \
              <span class="hidden-xs">URL 복사</span> \
            </button> \
            <div class="delete-item"> \
              <a class="btn btn-sm btn-danger" href="' + delete_path + '" data-confirm="' + filename + '을 정말 삭제하시겠습니까?" data-remote="true" rel="nofollow" data-method="delete"> \
              <i class="fa fa-trash" aria-label="삭제"></i> \
              </a> \
            </div> \
          </div> \
        </div> \
      </div> \
      <div class="info-wrapper"> \
        <div class="name">' + filename + '</div> \
        <div class="date">' + created_at + '</div> \
      </div> \
    </div>';
    
    $("#js-image-files").prepend(template);
    $("#total-image-count").text(total_image_size);
    $("#total-file-count").text(total_file_size);
    $("#dz_upload_modal_cover").removeClass('dz-drag-hover dz-started');
  }
}

//$(document).on("ready page:load", MediaConsole.init);
$(document).ready(MediaConsole.init);

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var StopAndRestartAlert = {
	init: function() {
		var runAlert = function(strText, isGoRoot) {
			var strTitle = "";
			var alertText = "";
			if (strText.length > 0) {
				var handleType = "정지";
				var courses = strText.split(",");

				var courseInfos = courses[0].split(":");
				handleType = (courseInfos[0] == "s") ? "정지" : "재개";
				alertText = courseInfos[1].length >= 10 ? courseInfos[1].substring(0,10) + "..." : courseInfos[1];
				if (courses.length >= 2)
				 	alertText += " 외 " + (courses.length - 1) + "개";

				var strTitle = "다음 코스가 수강 " + handleType + " 되었습니다.";
			} else {
				strTitle = "수강 정지된 코스입니다.";
				alertText = "";
			}

			swal({
				title: strTitle,
				text: alertText,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "확인",
				showConfirmButton: true
			}, function(isConfirm){
				if (isConfirm) {
					if (isGoRoot)
						document.location.href = '/'
				}
			});
		};

		var isAlertCourseName = $("#is_alert_course_name").html();
		var stopAndRestartCourseName = $("#stop_and_restart_course_name").html() || "";

		if (!(typeof isAlertCourseName == "undefined")) {
			if (isAlertCourseName.length > 0)
				runAlert("", true);
		} else {
			if (stopAndRestartCourseName == null || stopAndRestartCourseName.length == 0)
				return;

			var cookieStopCourseName = $.cookie("isViewStopAndRestartCourseName");
			var isAlert = false;
			if (cookieStopCourseName != null && cookieStopCourseName.length > 0) {
				if (cookieStopCourseName != stopAndRestartCourseName) {
					$.cookie("isViewStopAndRestartCourseName", stopAndRestartCourseName, { expires: 365, path: '/' });
					isAlert = true;
				}
			} else {
				$.cookie("isViewStopAndRestartCourseName", stopAndRestartCourseName, { expires: 365, path: '/' });
				isAlert = true;
			}

			if (isAlert)
				runAlert(stopAndRestartCourseName, false);
		}
	}
};

//$(document).on("ready page:load", StopAndRestartAlert.init);
$(document).ready(StopAndRestartAlert.init);

function simpleAlert(strTitle, strText) {
	swal({
		title: strTitle,
		text: strText,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "확인",
		showConfirmButton: true
	});
}

var Profile = {
	init: function() {
		if (!$(".users.profile").length) return;
    
	},

	avatarUpload: function(site_account_id) {
		$("#avatarupload").fileupload({
			formData: function(form) {
				return [
					{name: "_token", value: $("form").find("[name=_token]").val()},
					{name: "site_account_id", value: site_account_id},
					{name: "type", value: "User"},
					{name: "scope", value: "avatar"}
				];
			},
			dataType: "json",
			done: function (e, data) {
				$("#profile_update").val("변경사항 저장");
				$("#profile_update").attr("disabled", false);
			},
			progressall: function (e, data) {
				var progress = parseInt(data.loaded / data.total * 100, 10);
			}
		}).prop("disabled", !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : "disabled");
  
		$("#avatarupload").on("change", function() {
			if (this.files && this.files[0]) {
				$("#profile_update").val("업로드중...");
				$("#profile_update").attr("disabled", true);
			
				var reader = new FileReader();
				reader.onload = function (e) {
					$("#avatar-img").attr("src", e.target.result);
				};
				reader.readAsDataURL(this.files[0]);
			}
		});
	},
}

//$(document).on("ready page:load", Profile.init);
$(document).ready(Profile.init);
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// 가이드 스크립트
(function(global){
  'use strict';

  var guide = document.querySelector('.guide');

  global.addEventListener('keyup', toggleGuide);

  function toggleGuide(evt) {
    if( evt.keyCode === 71 && evt.shiftKey ) {
      if($("div.guide").hasClass("show") === false) {
          $("div.guide").addClass('show');
      }
      else{
        $("div.guide").removeClass('show');
      }
    }
  }
})(this);

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//# sourceMappingURL=webpages.js.map
