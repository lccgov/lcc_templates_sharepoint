$(document).ready(function () {
  LCC.modules.start();
});

(function (global) {
  "use strict";


  var $ = global.jQuery;
  var LCC = global.LCC || {};
  LCC.Modules = LCC.Modules || {};


  LCC.modules = {
    find: function (container) {
      var modules,
        moduleSelector = '[data-module]',
        container = container || $('body');

      modules = container.find(moduleSelector);

      // Container could be a module too 
      if (container.is(moduleSelector)) {
        modules = modules.add(container);
      }

      return modules;
    },

    start: function (container) {
      var modules = this.find(container);

      for (var i = 0, l = modules.length; i < l; i++) {
        var module,
          element = $(modules[i]),
          type = camelCaseAndCapitalise(element.data('module')),
          started = element.data('module-started');

        if (typeof LCC.Modules[type] === "function" && !started) {
          module = new LCC.Modules[type]();
          module.start(element);
          element.data('module-started', true);
        }
      }

      // eg selectable-table to SelectableTable 
      function camelCaseAndCapitalise(string) {
        return capitaliseFirstLetter(camelCase(string));
      }

      // http://stackoverflow.com/questions/6660977/convert-hyphens-to-camel-case-camelcase 
      function camelCase(string) {
        return string.replace(/-([a-z])/g, function (g) {
          return g[1].toUpperCase();
        });
      }

      // http://stackoverflow.com/questions/1026069/capitalize-the-first-letter-of-string-in-javascript 
      function capitaliseFirstLetter(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
      }
    }
  }

  global.LCC = LCC;
})(window);(function (global, $) {
  "use strict";

  var LCC = global.LCC || {};
	  LCC.Cookie = LCC.Cookie || {};

  $(document).ready(function () {
    LCC.Cookie.addCookieMessage();
  });

  LCC.Cookie.addCookieMessage = function () {

    var message = document.getElementById('global-cookie-message');
    if (message) {
      $(message).on('click', '.js-seen-cookie-message', function (event) {
        LCC.Cookie.cookieCommand('seen_cookie_message', 'yes', { days: 28 });
      });

      if (LCC.Cookie.cookieCommand('seen_cookie_message') === null) {
        message.style.display = 'block';
      }
    }
  };

  /*
    Cookie methods
    ==============

    Usage:

      Setting a cookie:
      LCC.Cookie.cookieCommand('hobnob', 'tasty', { days: 30 });

      Reading a cookie:
      LCC.Cookie.cookieCommand('hobnob');

      Deleting a cookie:
      LCC.Cookie.cookieCommand('hobnob', null);
  */
  
  LCC.Cookie.cookieCommand = function (name, value, options) {
    if (typeof value !== 'undefined') {
      if (value === false || value === null) {
        return LCC.Cookie.setCookie(name, '', { days: -1 });
      } else {
        return LCC.Cookie.setCookie(name, value, options);
      }
    } else {
      return LCC.Cookie.getCookie(name);
    }
  };
  LCC.Cookie.setCookie = function (name, value, options) {
    if (typeof options === 'undefined') {
      options = {};
    }
    var cookieString = name + "=" + value + "; path=/";
    if (options.days) {
      var date = new Date();
      date.setTime(date.getTime() + (options.days * 24 * 60 * 60 * 1000));
      cookieString = cookieString + "; expires=" + date.toGMTString();
    }
    if (document.location.protocol == 'https:') {
      cookieString = cookieString + "; Secure";
    }
    document.cookie = cookieString;
  };
  LCC.Cookie.getCookie = function (name) {
    var nameEQ = name + "=";
    var cookies = document.cookie.split(';');
    for (var i = 0, len = cookies.length; i < len; i++) {
      var cookie = cookies[i];
      while (cookie.charAt(0) == ' ') {
        cookie = cookie.substring(1, cookie.length);
      }
      if (cookie.indexOf(nameEQ) === 0) {
        return decodeURIComponent(cookie.substring(nameEQ.length));
      }
    }
    return null;
  };

  global.LCC = LCC;
})(window, jQuery);(function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.MainMenu = LCC.MainMenu || {};

    $(document).ready(function () {
        LCC.MainMenu.addActiveItemEvent();
    });

    LCC.MainMenu.addActiveItemEvent = function () {
        $('a.main-menu').click(function() {
            $('#main-menu').toggleClass("active");
            $(this).toggleClass("active");
            $('#main-menu ul.root li:nth-child(1) a').addClass("firstItem");
            $('#main-menu ul.root li ul li a').removeClass("firstItem");
            $('#main-menu ul.root li a.firstItem').focus();
        });
    };

    global.LCC = LCC;

})(window, jQuery);(function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.GlobalSearch = LCC.GlobalSearch || {};

    $(document).ready(function () {
        LCC.GlobalSearch.addClickEvent();
    });

    LCC.GlobalSearch.addClickEvent = function () {
        $('a.search').click(function() {
            $('#nav-search').toggleClass("active");
            $(this).toggleClass("active");
            $('#nav-search input').focus();
        });
    };

    global.LCC = LCC;

})(window, jQuery);(function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.EqualHeights = LCC.EqualHeights || {};

    $(global).on('load', function() {
        LCC.EqualHeights.applyEqualHeights();
    });

    $(global).on('resize', function(){
        LCC.EqualHeights.applyEqualHeights();
    });

    LCC.EqualHeights.applyEqualHeights = function () {
        var currentTallest = 0,
            currentRowStart = 0,
            rowDivs = new Array(),
            $el,
            topPosition = 0;

        $('.equal-item').each(function() {
            $el = $(this);
            $($el).height('auto')
            topPosition = $el.position().top;

            if (currentRowStart != topPosition) {
                for (var currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                    rowDivs[currentDiv].height(currentTallest);
                }
                rowDivs.length = 0; // empty the array
                currentRowStart = topPosition;
                currentTallest = $el.height();
                rowDivs.push($el);
            } else {
                rowDivs.push($el);
                currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
            }
            for (var currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
        });
    };

    global.LCC = LCC;

})(window, jQuery);(function (global) {
    "use strict";

	var $ = global.jQuery
	var LCC = global.LCC || {}
		LCC.Modules = LCC.Modules || {}
		
 	LCC.Modules.BackToTop = function () {
		this.start = function (element) {
			// browser window scroll (in pixels) after which the "back to top" link is shown
			var offset = element.data('offset') ? element.data('offset') : 300,
				//browser window scroll (in pixels) after which the "back to top" link opacity is reduced
				offset_opacity = element.data('offset-opacity') ? element.data('offset-opacity') : 1200,
				//duration of the top scrolling animation (in ms)
				scroll_top_duration = element.data('scroll-top-duration') ? element.data('scroll-top-duration') : 700;
	
			//hide or show the "back to top" link
			$(global).scroll(function() {
				($(this).scrollTop() > offset) ? element.addClass('cd-is-visible') : element.removeClass('cd-is-visible cd-fade-out');		
				if($(this).scrollTop() > offset_opacity) { 
					element.addClass('cd-fade-out');
				}
			});

			//smooth scroll to top
			element.on('click', function(event){
				event.preventDefault();
				$('body,html').animate({
				   scrollTop: 0 ,
				}, scroll_top_duration);
			});
		}   
	};
   
	global.LCC = LCC
  
})(window);(function (global, $) {
    "use strict";
    
    var LCC = global.LCC || {}
        LCC.Modules = LCC.Modules || {}
                                
    LCC.Modules.Accordion = function () {
        this.start = function (element) {
            var drawer_panel = element.data('accordion-drawer-panel') ? element.data('accordion-drawer-panel') : '.accordion-drawer h3 ~ div',
                drawer_header = element.data('accordion-drawer-header') ? element.data('accordion-drawer-header') : '.accordion-drawer h3';

            $(element).find(drawer_panel).hide();
            $(element).find(drawer_header).on("click", function()
            {
                $(this).toggleClass("active");
                $(this).next('div').slideToggle();                                                                
                if ($(this).children().find('#tooltip').text() === "Click to expand") {
                    $(this).children().find('#tooltip').text('Click to hide')
                }
                else {
                    $(this).children().find('#tooltip').text('Click to expand')
                }
                return false;
            });  
        }   
    };
   
    global.LCC = LCC
})(window, jQuery)
;
(function (global, $) {
    "use strict";
    
    var LCC = global.LCC || {}
        LCC.Modules = LCC.Modules || {}

    //relies on bootstrap so make sure bootstrap is loaded before this module is used                          
    LCC.Modules.Carousel = function () {
        this.start = function (element) {        
            if($(element).find('ol.carousel-indicators').length) {
                var $indicators = $(element).find('ol.carousel-indicators');
                $(element).find('.item').each(function(index) {
                    $indicators.append('<li data-target="#' + element[0].id + '" data-slide-to="' + index + '" class="' + (index === 0 ? "active" : "")  + '"></li>');
                });
            }

            //add prev button
            element.find('.carousel-inner').append('<a class="left carousel-control" href="#' + element[0].id + '" data-slide="prev"><span class="icon-prev"><span class="sr-only">Previous slide</span></span></a>');
            //add next button
            element.find('.carousel-inner').append('<a class="right carousel-control" href="#' + element[0].id + '" data-slide="next"><span class="icon-next"></span><span class="sr-only">Next slide</span></a>');  
            
            //add play and pause button
            element.find('.carousel-inner').append('<div id="carouselButtons"> \
                                                <button id="playButton" type="button" class="btn btn-default btn-sm"> \
                                                    <span class="glyphicon glyphicon-play"></span> \
                                                    <span class="sr-only">Play carousel</span> \
                                                </button> \
                                                <button id="pauseButton" type="button" class="btn btn-default btn-sm"> \
                                                    <span class="glyphicon glyphicon-pause"></span> \
                                                    <span class="sr-only">Pause carousel</span> \
                                                </button> \
                                            </div>');
    
            //add events
            $(element).find('#playButton').click(function () {
                $(element).carousel('cycle');
            });
           $(element).find('#pauseButton').click(function () {
                $(element).carousel('pause');
            });
        }   
    };
   
    global.LCC = LCC
})(window, jQuery)
;
(function (global, $) {
    "use strict";

	var LCC = global.LCC || {}
		LCC.Modules = LCC.Modules || {}
		
 	LCC.Modules.ScrollTo = function () {
		this.start = function (element) {
		    // bind a click event to the 'skip' link
            $(element).click(function (event) {
                var scrollTo = '#' + this.href.split('#')[1]
                $("body, html").animate({ scrollTop: $(scrollTo).offset().top }, 600, function () {
                    $(scrollTo).attr('tabindex', '-1').on('blur focusout', function () {
                        // when focus leaves this element, 
                        // remove the tabindex attribute
                        $(this).removeAttr('tabindex');
                    }).focus(); // focus on the content container           
                });
            });
		}   
	};
   
	global.LCC = LCC
  
})(window, jQuery);//(=) require modules
//(=) require cookie-bar
//(=) require main-menu
//(=) require global-search
//(=) require equal-heights
//(=) require modules/back-to-top
//(=) require modules/accordion
//(=) require modules/carousel
//(=) require modules/scroll-to
;
