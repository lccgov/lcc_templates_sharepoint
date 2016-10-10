<%@Master language="C#"%>                           <%@Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                           <%@Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                           <%@Register TagPrefix="wssucw" TagName="Welcome" Src="~/_controltemplates/15/Welcome.ascx"%>                           <%@Register TagPrefix="wssucmui" TagName="MUISelector" Src="~/_controltemplates/15/MUISelector.ascx"%>                           <%@Register TagPrefix="PublishingRibbon" TagName="PublishingRibbon" Src="~/_controltemplates/15/Ribbon.ascx"%>                           <%@Register TagPrefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<!DOCTYPE html >
<SharePoint:SPHtmlTag lang="en" runat="server" id="SPHtmlTag" dir="&lt;%$Resources:wss,multipages_direction_dir_value%&gt;">
    <head runat="server">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="" />  
        <!-- Base CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="{{ asset_path }}stylesheets/lcc-template.css?1.0.11"/>
        <!-- Google Fonts CSS -->
        <script src="/_catalogs/masterpage/subsites/js/modernizr.js"></script>
        <script src="/_catalogs/masterpage/js/respond.min.js"></script>
        <meta name="GENERATOR" content="Microsoft SharePoint" />
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <meta http-equiv="Expires" content="0" />
        <SharePoint:RobotsMetaTag runat="server">                         </SharePoint:RobotsMetaTag>                         <SharePoint:CssRegistration Name="Themable/corev15.css" runat="server">                         </SharePoint:CssRegistration>                         <SharePoint:CssLink runat="server" Version="15">                         </SharePoint:CssLink>                         <SharePoint:PageTitle runat="server">                             <asp:ContentPlaceHolder id="PlaceHolderPageTitle" runat="server">                                 <SharePoint:ProjectProperty Property="Title" runat="server">                             </SharePoint:ProjectProperty>                         </asp:ContentPlaceHolder>                         </SharePoint:PageTitle>                         <SharePoint:StartScript runat="server">                         </SharePoint:StartScript>                         <SharePoint:CacheManifestLink runat="server">                         </SharePoint:CacheManifestLink>                         <SharePoint:PageRenderMode runat="server" RenderModeType="Standard">                         </SharePoint:PageRenderMode>                         <SharePoint:ScriptLink language="javascript" name="core.js" OnDemand="true" runat="server" Localizable="false">                         </SharePoint:ScriptLink>                         <SharePoint:ScriptLink language="javascript" name="menu.js" OnDemand="true" runat="server" Localizable="false">                         </SharePoint:ScriptLink>                         <SharePoint:ScriptLink language="javascript" name="callout.js" OnDemand="true" runat="server" Localizable="false">                         </SharePoint:ScriptLink>                         <SharePoint:ScriptLink language="javascript" name="sharing.js" OnDemand="true" runat="server" Localizable="false">                         </SharePoint:ScriptLink>                         <SharePoint:ScriptLink language="javascript" name="suitelinks.js" OnDemand="true" runat="server" Localizable="false">                         </SharePoint:ScriptLink>                         <SharePoint:CustomJSUrl runat="server">                         </SharePoint:CustomJSUrl>                         <SharePoint:SoapDiscoveryLink runat="server">                         </SharePoint:SoapDiscoveryLink>                         <SharePoint:AjaxDelta id="DeltaPlaceHolderAdditionalPageHead" Container="false" runat="server">                         <asp:ContentPlaceHolder id="PlaceHolderAdditionalPageHead" runat="server">                         </asp:ContentPlaceHolder>                         <SharePoint:DelegateControl runat="server" ControlId="AdditionalPageHead" AllowMultipleControls="true">                         </SharePoint:DelegateControl>                         <asp:ContentPlaceHolder id="PlaceHolderBodyAreaClass" runat="server">                         </asp:ContentPlaceHolder>                         </SharePoint:AjaxDelta>                         <SharePoint:AjaxDelta id="DeltaSPWebPartManager" runat="server">                             <WebPartPages:SPWebPartManager runat="server">                             </WebPartPages:SPWebPartManager>                         </SharePoint:AjaxDelta>
        </head>
    <body onhashchange="if (typeof(_spBodyOnHashChange) != 'undefined') _spBodyOnHashChange();">
    <SharePoint:SPClientIDGenerator runat="server" ServerControlID="DeltaPlaceHolderMain;DeltaPlaceHolderPageTitleInTitleArea;DeltaPlaceHolderUtilityContent" /><SharePoint:ImageLink runat="server" />                             <SharePoint:SharePointForm onsubmit="if (typeof (_spFormOnSubmitWrapper) != 'undefined') {return _spFormOnSubmitWrapper();} else {return true;}" runat="server"><asp:ScriptManager id="ScriptManager" runat="server" EnablePageMethods="false"  EnablePartialRendering="true" EnableScriptGlobalization="false" EnableScriptLocalization="true" />                             <SharePoint:SPSecurityTrimmedControl runat="server" HideFromSearchCrawler="true" EmitDiv="true">                                 <div id="TurnOnAccessibility" style="display:none" class="s4-notdlg noindex">                                     <a id="linkTurnOnAcc" href="#" class="ms-accessible ms-acc-button" onclick="SetIsAccessibilityFeatureEnabled(true);UpdateAccessibilityUI();document.getElementById('linkTurnOffAcc').focus();return false;">                                         <SharePoint:EncodedLiteral runat="server" text="&lt;%$Resources:wss,master_turnonaccessibility%&gt;" EncodeMethod="HtmlEncode">                                         </SharePoint:EncodedLiteral>                                     </a>                                 </div>                         <div id="TurnOffAccessibility" style="display:none" class="s4-notdlg noindex">                             <a id="linkTurnOffAcc" href="#" class="ms-accessible ms-acc-button" onclick="SetIsAccessibilityFeatureEnabled(false);UpdateAccessibilityUI();document.getElementById('linkTurnOnAcc').focus();return false;">                                 <SharePoint:EncodedLiteral runat="server" text="&lt;%$Resources:wss,master_turnoffaccessibility%&gt;" EncodeMethod="HtmlEncode">                                 </SharePoint:EncodedLiteral>                             </a>                         </div>                         </SharePoint:SPSecurityTrimmedControl>                         <div id="ms-designer-ribbon">                             <PublishingRibbon:PublishingRibbon runat="server" />                          </div>                         <SharePoint:SPSecurityTrimmedControl runat="server" AuthenticationRestrictions="AnonymousUsersOnly">                             <wssucw:Welcome runat="server" EnableViewState="false">                             </wssucw:Welcome>                         </SharePoint:SPSecurityTrimmedControl>
        <div id="s4-workspace">
            <div id="s4-bodyContainer">
                <!-- COOKIES -->
				<div id="containerSiteStatement">
                    <div id="siteStatement">
                        <div id="global-cookie-message" class="pageControl container noindex" style="display:none">
                            <p>Cookies - We use cookies to help improve your experience of using our website. For more information about the cookies we use see our <a href="/_catalogs/masterpage/subsites/PrivacyStatement.aspx">privacy page</a>. If you continue without changing your cookie settings we assume that you are happy with our use of cookies. You can change your cookie settings at any time by following the instructions on our <a href="/_catalogs/masterpage/subsites/PrivacyStatement.aspx">privacy page</a>  </p>
                            <a class="submit js-seen-cookie-message" href="">Don't show this message again</a>
                        </div>
                    </div>
            </div> 
                <!--masterhead section -->
                <section class="masterhead">
                    <div class="container-fluid">
                        <div class="">
                            <a class="navbar-brand" href="/">
                            </a>
                            <div class="pull-right">
                                <ul class="menu">
                                    <li>
                                        <a href="#" class="signin">
                                            <span>Sign in
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="myAccount" data-toggle="tooltip" data-placement="bottom" title="My Account">
                                            <span>Your account
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="nav-search" id="nav-search">
                                            <div class="">
                                                <div class="input-group">
                                                    <!--sharepoint search-->
                                                    <div data-name="search_box">
                                                          <SearchWC:SearchBoxScriptWebPart UseSiteCollectionSettings="true" EmitStyleReference="false" ShowQuerySuggestions="false" ChromeType="None" UseSharedSettings="true" TryInplaceQuery="false" ServerInitialRender="true" runat="server">                          </SearchWC:SearchBoxScriptWebPart>                                          
                                                    </div>
                                                    <!-- end sharepoint search -->
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="search" href="#">
                                            <span class="sr-only">Toggle website search
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="main-menu" href="#">
                                            <span class="sr-only">Toggle main menu
                                            </span>Menu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/.masterHead section -->
                <!-- Header -->
                <div id="header">
                    <section class="sectionHeader">
                        <div class="container-fluid">
                            <div class="col-sm-6 col-xs-12 removeSidePadding header-left">
                                <a href="/_catalogs/masterpage/subsites/index.html" class="logo img-responsive">
                                    <span>
                                    </span>
                                </a>
                            </div>
                            <div class="col-sm-6 col-xs-12 removeSidePadding header-right">
                            </div>
                        </div>
                    </section>
                    <!-- main nav -->
                    <nav id="main-menu" class="main-nav">
                        <div class="container-fluid">
                            <!-- sharepoint nav -->
                            <div data-name="main_nav">
                            <SharePoint:AjaxDelta ID="DeltaTopNavigation" BlockElement="true" CssClass="ms-displayInline ms-core-navigation ms-dialogHidden" runat="server">                         <SharePoint:DelegateControl runat="server" ControlId="TopNavigationDataSource" Id="topNavigationDelegate">                           <Template_Controls>                             <asp:SiteMapDataSource ShowStartingNode="True" SiteMapProvider="SPNavigationProvider" ID="topSiteMap" runat="server" StartingNodeUrl="sid:1002">                             </asp:SiteMapDataSource></Template_Controls></SharePoint:DelegateControl>                         <a name="startNavigation">                         </a>                         <asp:ContentPlaceHolder ID="PlaceHolderTopNavBar" runat="server">                             <SharePoint:AspMenu ID="TopNavigationMenu" runat="server" EnableViewState="false" DataSourceID="topSiteMap" AccessKey="&lt;%$Resources:wss,navigation_accesskey%&gt;" UseSimpleRendering="true" UseSeparateCss="false" Orientation="Horizontal" StaticDisplayLevels="2"   AdjustForShowStartingNode="false" MaximumDynamicDisplayLevels="0" SkipLinkText="">                            </SharePoint:AspMenu>                         </asp:ContentPlaceHolder>                      </SharePoint:AjaxDelta>
                            </div>
                            <!--/.sharepoint nav -->
                        </div>
                        <!-- /.container -->
                    </nav>
                    <!-- /.main-menu -->
                </div>
                <!-- /.header -->
                <!-- MAIN CONTENT -->
                <div data-name="bodycontent">
                  <SharePoint:AjaxDelta ID="DeltaPlaceHolderMain" IsMainContent="true" runat="server">                         <asp:ContentPlaceHolder ID="PlaceHolderMain" runat="server">                         </asp:ContentPlaceHolder>                     </SharePoint:AjaxDelta>
                </div>
                <!-- /MAIN CONTENT -->
                <!-- footer -->
                <footer class="main">
                    <section>
                        <div class="container-fluid">
                            <div class="col-lg-12">
                                <!-- main nav -->
                                <nav class="footer">
                                    <!-- sharepoint nav -->
                                    <div data-name="footer_main_nav">
                                       <SharePoint:AjaxDelta runat="server" CssClass="ms-displayInline ms-core-navigation ms-dialogHidden" BlockElement="True" ID="DeltaFooterNavigation">                         <a name="startNavigation"></a>                         <asp:ContentPlaceHolder ID="PlaceHolderFooterNavBar" runat="server">                             <SharePoint:AspMenu runat="server" UseSeparateCss="false" AdjustForShowStartingNode="False" StaticDisplayLevels="2" AccessKey="1" SkipLinkText="" EnableViewState="False" MaximumDynamicDisplayLevels="0" UseSimpleRendering="True" DataSourceID="topSiteMap"  Orientation="Horizontal" ID="FooterNavigationMenu">                               </SharePoint:AspMenu>                         </asp:ContentPlaceHolder>                     </SharePoint:AjaxDelta>
                                    </div>
                                    <!--/.sharepoint nav -->
                                    <!-- /.container -->
                                </nav>
                            </div>
                        </div>
                    </section>
                    <section class="footerGlobal">
                        <div class="container-fluid">
                            <div class="col-lg-12">
                                <nav>
                                    <ul>
                                        <li>
                                            <a href="#">Accessibility
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Privacy Statement
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Terms and Conditions
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Site Map
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Contact Us
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-sm-6 logo-footer">
                                <span>
                                </span>
                                <p>Official local authority website for Leeds providing information on local services.
                                </p>
                            </div>
                            <div class="col-sm-6 text-right">
                                <div class="socialBookmarks">
                                    <ul>
                                        <li>
                                            <h2>Connect with us:
                                            </h2>
                                        </li>
                                        <li>
                                            <a href="https://www.facebook.com/Leedscouncil/" class="facebook" target="_blank">
                                                <span>Facebook
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com/leedscc_help" class="twitter" target="_blank">
                                                <span>Twitter
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/user/Leedscouncil" class="youtube" target="_blank">
                                                <span>You tube
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="clear">
                                        <!-- -->
                                    </div>
                                </div>
                                <p>Copyright © Leeds City Council 2016</p>
                            </div>
                        </div>
                        <!-- /.row -->
                    </section>
                </footer>
                <!-- BACK TO TOP -->
                <a href="#0" class="cd-top">Top</a>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js" type="text/javascript"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js" type="text/javascript"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.min.js"></script>
                <script src="{{ asset_path }}javascripts/lcc-template.js?1.0.11"></script>
            </div>
        </div>
        <SharePoint:AjaxDelta id="DeltaFormDigest" BlockElement="true" runat="server"><asp:ContentPlaceHolder id="PlaceHolderFormDigest" runat="server"><SharePoint:formdigest runat="server" /></asp:ContentPlaceHolder></SharePoint:AjaxDelta></SharePoint:SharePointForm><SharePoint:AjaxDelta id="DeltaPlaceHolderUtilityContent" runat="server"><asp:ContentPlaceHolder id="PlaceHolderUtilityContent" runat="server" /></SharePoint:AjaxDelta><asp:ContentPlaceHolder id="PlaceHolderTitleAreaClass" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderTitleBreadcrumb" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderGlobalNavigationSiteMap" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderGlobalNavigation" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderSearchArea" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderLeftNavBar" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderHorizontalNav" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderLeftNavBarDataSource" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderCalendarNavigator" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderLeftActions" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderLeftNavBarTop" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderSiteName" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderPageTitleInTitleArea" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderPageDescription" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderPageImage" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderTitleLeftBorder" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderMiniConsole" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderTitleRightMargin" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderTitleAreaSeparator" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderNavSpacer" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderLeftNavBarBorder" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderBodyLeftBorder" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderBodyRightMargin" Visible="False" runat="server" /><asp:ContentPlaceHolder id="WSSDesignConsole" Visible="False" runat="server" /><asp:ContentPlaceHolder id="SPNavigation" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderQuickLaunchTop" Visible="False" runat="server" /><asp:ContentPlaceHolder id="PlaceHolderQuickLaunchBottom" Visible="False" runat="server" />
   </body>
</SharePoint:SPHtmlTag>