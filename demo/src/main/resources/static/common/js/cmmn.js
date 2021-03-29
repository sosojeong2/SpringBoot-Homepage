(function(window, $, undefined) {

if(typeof window.$CmmnJS != "undefined") {
	return;
}

window.$CmmnJS = {
	contextPath: (window.contextPath)?window.contextPath:'',
	loadPage: function(selector, page) {
		var _this = this;
		$(selector).load(this.contextPath + page, function(res, status, jqXHR) {
			if(jqXHR.status == 901) {
				alert('세션이 종료되었습니다. 다시 로그인 해주세요');
				location.href = _this.contextPath + '/index.do';
			}
		});
	},
	numberWithCommas: function(x) {
		try{
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}catch(e){
			return x;
		}
	},
	bsnmRegistNoFormat: function(x) {
		try{
			return x.toString().replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-$3');
		}catch(e){
			return x;
		}
	},
	lonReqstNoFormat: function(x) {
		try{
			return x.substr(0,5)+"-"+x.substr(5,10);
		}catch(e){
			return x;
		}
	},
	
	getDatepickerOption: function() {
		return {
			dateFormat: 'yy-mm-dd',
	    	changeYear:true,
	    	changeMonth:true,
	    	dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
	    	dayNamesMin: ['일','월','화','수','목','금','토'],
	    	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		};
	},
	ajaxPost: function(url, oSetting) {
		var _oDefault = {
			oParams: {},
			callback: $.noop,
			successMsg: null,
			errorMsg: null,
			async: true
		};
		_oDefault=$.extend(true,_oDefault,oSetting||{});

		var _this = this;
		$.ajax({
            type: 'POST',
            url: this.contextPath + url,
            data: JSON.stringify(_oDefault.oParams),
            dataType:'json',
            contentType: 'application/json',
            async: _oDefault.async,
            success: function(res){
            	if(_oDefault.successMsg){
            		alert(_oDefault.successMsg);
            	}
            	if($.isFunction(_oDefault.callback)){
            		_oDefault.callback(res);
            	}
            },
            error:function(jqXHR, textStatus, errorThrown){
            	if(jqXHR.status == 901){
            		alert('세션이 종료되었습니다. 다시 로그인 해주세요');
   	       			location.href = _this.contextPath + '/index.do';
      	      	}else if(_oDefault.errorMsg){
      	      		alert(_oDefault.errorMsg);
      	      	}
      	     }
       });
	}
};

})(window, window.jQuery);

/*
 * jQuery PageController
 */
(function($) {

	if(typeof $.history === 'undefined') {
		throw 'required jQuery History Plugin';
		return;
	}

	$.pageController = {
		init: function(selectors, defaultUri) {
			var _this = this;

			$.history.init(function(hash) {
				if(hash == '') {
					hash = defaultUri || '';
				}

				if(hash) {
					$CmmnJS.loadPage($(selectors), hash);
				}
			});
		},
		get: function(hash) {
			$.history.load(hash);
		}
	};

})(jQuery);

Date.prototype.format = function(f) {
    if (!this.valueOf()) return " ";
 
    var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
    var d = this;
     
    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
        switch ($1) {
            case "yyyy": return d.getFullYear();
            case "yy": return (d.getFullYear() % 1000).zf(2);
            case "MM": return (d.getMonth() + 1).zf(2);
            case "dd": return d.getDate().zf(2);
            case "E": return weekName[d.getDay()];
            case "HH": return d.getHours().zf(2);
            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
            case "mm": return d.getMinutes().zf(2);
            case "ss": return d.getSeconds().zf(2);
            case "a/p": return d.getHours() < 12 ? "오전" : "오후";
            default: return $1;
        }
    });
};

String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};

function bizNoFormatter(num, type) {
     var formatNum = '';
     try{
          if (num.length == 10) {
               if (type == 0) {
                    formatNum = num.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-*****');
               } else {
                     formatNum = num.replace(/(\d{3})(\d{2})(\d{5})/, '$1-$2-$3');
               }
          }

     } catch(e) {
          formatNum = num;
          console.log(e);
     }

     return formatNum;

}