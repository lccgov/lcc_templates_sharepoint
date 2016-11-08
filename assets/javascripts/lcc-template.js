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
})(window, jQuery);(function (global) {
    "use strict";

    var LCC = global.LCC || {};
    LCC.Modules = LCC.Modules || {};

    LCC.Modules.SocialBookmarks = function () {
        this.start = function (element) {
        
            getSocialBookmarks();
            
            function getSocialBookmarks() { 
                
                var source = $("#bookmarks-template").html().replace("//<![CDATA[", "").replace("//]]>", "");   //Remove replaces when we switch to templates
                var template = Handlebars.compile(source);

                var html;
                var currentDate = Date.now();					
                
                if (localStorage && localStorage.getItem('socialBookmarks') 
                    && currentDate < localStorage.getItem('socialBookmarksExpiry'))
                {
                    html = localStorage.getItem('socialBookmarks');
                    $("#bookmarks").html(html);
                    document.getElementById('socialBookmarks').style.display = 'block';
                }
                else
                {					
                    $.ajax({
                        url: _spPageContextInfo.webAbsoluteUrl + "/_api/lists/getbytitle('Social Bookmarks')/items?$select=Title,URL,RoutingRuleDescription&$orderby=LCCOrderBy",
                        type: "GET",
                        dataType: 'json',
                        headers: {
                            "accept": "application/json;odata=verbose"
                        },
                        success: function (data) {

                            var bookmarks = [];
                            
                            $.each(data.d.results, function (index, item) 	{							
                                bookmarks.push({ 'class': item.Title, 'link': item.URL.Url, 'description': item.RoutingRuleDescription });
                            });

                            html = template({ Bookmarks: bookmarks });
                            $("#bookmarks").html(html);
                            document.getElementById('socialBookmarks').style.display = 'block';

                            localStorage.setItem('socialBookmarks', html);
                            var expires = currentDate + 2419200000; // 28 days
                            localStorage.setItem('socialBookmarksExpiry', expires);
                        },
                        error: function (err) {
                            html = "<p>Error retrieving list items</p>";
                            $("#bookmarks").html(html);
                        }
                    });					
                }
            }
        }
    };

    global.LCC = LCC;
})(window);(function (global) {
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
  
})(window);  (function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.ResponsiveDesign = LCC.ResponsiveDesign || {};

    $(document).ready(function () {
        LCC.ResponsiveDesign.activate();
    });

    //equal heights
    LCC.ResponsiveDesign.equalheight = function(container){
        var currentTallest = 0,
            currentRowStart = 0,
            rowDivs = new Array(),
            $el,
            topPosition = 0;

        $(container).each(function() {
            $el = $(this);
            $($el).height('auto')
            topPostion = $el.position().top;

            if (currentRowStart != topPostion) {
                for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
                }
                rowDivs.length = 0; // empty the array
                currentRowStart = topPostion;
                currentTallest = $el.height();
                rowDivs.push($el);
            } else {
                rowDivs.push($el);
                currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
            }
            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
        });
    }

    LCC.ResponsiveDesign.activate = function () {
        //main menu
        $('a.main-menu').click(function() {
            $('#main-menu').toggleClass("active");
            $(this).toggleClass("active");
            $('#main-menu ul.root li:nth-child(1) a').addClass("firstItem");
            $('#main-menu ul.root li ul li a').removeClass("firstItem");
            $('#main-menu ul.root li a.firstItem').focus();
        });
    
        //search toggle
        $('a.search').click(function() {
            $('#nav-search').toggleClass("active");
            $(this).toggleClass("active");
            $('#nav-search input').focus();
        });

        $(window).on('load', function() {
            LCC.ResponsiveDesign.equalheight('.equal-item');
        });

        $(window).on('resize', function(){
            LCC.ResponsiveDesign.equalheight('.equal-item');
        });
    }
   global.LCC = LCC;
})(window, jQuery)
;
    (function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.Accordion = LCC.Accordion || {};

    $(document).ready(function () {
        LCC.Accordion.activate();
    });

    LCC.Accordion.activate = function () {
         //Accordion 
         $('.expandContent h3 ~ div').hide();

         $(".expandContent h3").on("click", function()
            {
                $(this).toggleClass("active");
                var p = $(this).next('div').slideToggle();				
                if ($(this).children().find('#tooltip').text() === "Click to expand")
                {
                    $(this).children().find('#tooltip').text('Click to hide')
                }
                else
                {
                    $(this).children().find('#tooltip').text('Click to expand')
                }
                return false;
           });  

    }
   global.LCC = LCC;
})(window, jQuery)
;
    (function (global, $) {
    "use strict";
    var LCC = global.LCC || {};
	    LCC.OtherStuff = LCC.OtherStuff || {};

    $(document).ready(function () {
        LCC.OtherStuff.activate();
    });

    LCC.OtherStuff.activate = function () {


    //image gallery
    $("#gallery li img").hover(function () {
        $('#main-img').attr('src', $(this).attr('src'));
    });

        $("#gallery-ImCarousel li img").hover(function () {
        $("#gallery-ImCarousel img[id$=imgTop]").attr('src', $(this).attr('src'));
    });


        // bind a click event to the 'skip' link
        $(".scroll").click(function (event) {
            var that = this;
            var scrollTo = '#' + that.href.split('#')[1]
            $("body, html").animate({ scrollTop: $(scrollTo).offset().top }, 600, function () {
                $(scrollTo).attr('tabindex', '-1').on('blur focusout', function () {
                    // when focus leaves this element, 
                    // remove the tabindex attribute
                    $(this).removeAttr('tabindex');
                }).focus(); // focus on the content container           
            });

        });
  


    //external links
    $('a[rel="external"]').attr('target', '_blank');

    //external links
    $('a[rel="pdf"]').attr('target', '_blank');

    //external links
    $('a[rel="doc"]').attr('target', '_blank');

    //timetbale hover
    $(function () {
        $(".session").hover(function () {
            $(this).find(".sessionInfo").show();
        }
                        , function () {
                            $(this).find(".sessionInfo").hide();
                        }
                       );
    });


    //stop popover from jumping to top
    $('a.popoverInfo').on('click', function (e) { e.preventDefault(); return true; });

    //stop popover from jumping to top
    $('a.noLink').on('click', function (e) { e.preventDefault(); return true; });

    //stop popover from jumping to top
    $('.sessionInfo h4 a').on('click', function (e) { e.preventDefault(); return true; });

    //timetable filter toggle
    $('a.showClassFilters').click(function () {
        $('.classFilters').toggleClass("active");
        $(this).toggleClass("active");
    });

    //timetable results
    $('a.showTimetableResults').click(function () {
        $('.timetableView').toggleClass("active");
        $(this).toggleClass("active");
    });

    //carousel play + pause
    $('#playButton').click(function () {
        $('#myCarousel').carousel('cycle');
    });
    $('#pauseButton').click(function () {
        $('#myCarousel').carousel('pause');
    });



    //membership table reveal
    $(function () {
        $("#showmemberships a").click(function () {
            $(".memberships").toggleClass("hidememberships");
            $("#showmemberships a").toggleClass("active");
        });
    });






    // event date show first three event list items
      $('ul.date-list').each(function () {
      var LiN = $(this).find('li').length;
      if (LiN > 3) {
      $('li', this).eq(2).nextAll().hide().addClass('toggleable');
      $(this).append('<a class="plusMinus">Show more...</a>');
      }
      });
      $('ul.date-list').on('click', '.plusMinus', function () {
      if ($(this).hasClass('active')) {
      $(this).text('Show more...').removeClass('active');
      } else {
      $(this).text('Show less...').addClass('active');
      }
      $(this).siblings('li.toggleable').slideToggle();
      });



    
    //animated scroll
    
      $(document).ready(function($) {
        $(".scroll").click(function(event) {
        event.preventDefault();
        $('html,body').animate( { scrollTop:$(this.hash).offset().top } , 1000);
        } );
      } );
    
    //feedback form
    
    //search toggle
    $('#site-search-reveal').click(function () {
        $('#site-search-wrapper').slideToggle("slow");
        $this.toggleClass('active');
    });
    
    //search toggle
    $('#feedback').click(function () {
        $('#feedback-form-content').slideToggle("slow");
        $('#feedback-form-content').focus();
    });
    
    //expand content
    
    $('.expand').click(function(){
		var $this = $(this);
		$this.toggleClass('active');
		if($this.hasClass('active')){
			$(".expand .sr-only").text('Click to hide');			
		} else {
			$(".expand .sr-only").text('Click to expand');
		}
	});
    
    //feedback form select
    

       $('input[type="radio"]').click(function() {
           if($(this).attr('id') == 'helpful_no') {
                $('#helpful_no_select').show();           
           }

           else {
                $('#helpful_no_select').hide();   
           }
       });

    

       $('input[type="radio"]').click(function() {
           if($(this).attr('id') == 'helpful_maybe') {
                $('#helpful_maybe_select').show();           
           }

           else {
                $('#helpful_maybe_select').hide();   
           }
       });

    

     //Events results responsive design
        $('#filterhide a').click(function (event) {
            event.preventDefault();
            $('.eventsFilter.col-md-3').toggleClass("active");
        });
        $('#filterCloseButton a').click(function (event) {
            event.preventDefault();
            $('.eventsFilter.col-md-3.active').removeClass("active");
        });
        $('#closeIcon').click(function (event) {
            event.preventDefault();
            $('.eventsFilter.col-md-3.active').removeClass("active");
        });
        $.resizeSearchResults = function () {
            var browserViewport = $(window).width();
            if (browserViewport <= 992) {
                $(".relDate").prependTo(".eventsFilterType.first");
            }
            if (browserViewport > 992) {
                $('.relDate').appendTo('.eventsSearchSort .pull-right');
            }
        }

        $.resizeSearchResults();

        $(window).resize(function () {
            $.resizeSearchResults();
        });        
    }
   global.LCC = LCC;
})(window, jQuery)
;
//(=) require modules
//(=) require cookie-bar
//(=) require social-bookmarks
//(=) require back-to-top
//(=) require responsive-design
//(=) require accordion
//(=) require otherStuff
;
