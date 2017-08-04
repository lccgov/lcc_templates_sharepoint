<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register TagPrefix="LatestNews" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WebPartPages:WebPartZone runat="server" Title="sectionOneTop" AllowPersonalization="false" ID="placeholdersectionOneTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section id="main" class="sectionOne" role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFull" AllowPersonalization="false" ID="placeholdersectionOneFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
         <div class="col-lg-12">
             <div class="breadcrumb">
                     <SharePointWebControls:ListSiteMapPath runat="server"                                 SiteMapProviders="CurrentNavigationSwitchableProvider"                                 RenderCurrentNodeAsLink="false"                                 NodeStyle-CssClass=""                                CurrentNodeStyle-CssClass=""                                RootNodeStyle-CssClass=""                                HideInteriorRootNodes="true"                                SkipLinkText=""                                PathSeparator="">                                </SharePointWebControls:ListSiteMapPath> 
             </div>
            </div>
            <div class="col-md-8">
                <h1><SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /></h1> 
                <WebPartPages:WebPartZone runat="server" Title="sectionOneContent" AllowPersonalization="false" ID="placeholdersectionOneContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                <PublishingWebControls:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server"></PublishingWebControls:RichHtmlField> 
            </div>
            <aside role="complementary" class="col-md-4">
                  <WebPartPages:WebPartZone runat="server" Title="sectionOneRightHandColumn" AllowPersonalization="false" ID="placeholdersectionOneRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                  <div id="keywordFilter" data-module="keyword-filter" class="sectionSubsite news" data-module-started="false">
                        <h3>View News By Keyword</h3>
                    
                                <input type="text" class="js-keyword">
                                <a href="#" class="button js-keyword-submit">Go</a>
                          
                 </div>
                 <div id="dateRangeFilter" class="sectionSubsite news" data-module="date-range-filter" data-module-started="false">
                    <h3>View News By Date</h3>
                            <div class="datePickerContainer">   
                                <input name="Start-date" type="text" class="searchDate js-date-range-start" data-type="datepicker-start-nomin" placeholder="Start Date">
                                </div>
                                  <div class="datePickerContainer">
                                <input name="End-date" type="text" class="searchDate js-date-range-end" data-type="datepicker-end-nomin" placeholder="End Date">
                                <a href="#" class="button js-date-range-submit">Go</a>
                            </div>
                       <div class="clearfix"></div>     
                 </div>
                 <div id="latestNews">
                        <LatestNews:ContentBySearchWebPart 
                            runat="server" 
                            AlwaysRenderOnServer="False" 
                            ResultType="" 
                            DataProviderJSON="{
                                            'QueryGroupName':'Default',
                                            'QueryPropertiesTemplateUrl':'sitesearch://webroot',
                                            'IgnoreQueryPropertiesTemplateUrl':false,'SourceID':'8413cd39-2156-4e00-b54d-11efd9abdb89',
                                            'SourceName':'Local SharePoint Results',
                                            'SourceLevel':'Ssa',
                                            'CollapseSpecification':'',
                                            'QueryTemplate':'path:{Site.URL} owstaxIdPageCategory:News Item',
                                            'FallbackSort':[{'d':1,'p':'RefinableDate00'}],
                                            'FallbackSortJson':'[{\&quot;p\&quot;:\&quot;RefinableDate00\&quot;,\&quot;d\&quot;:1}]',
                                            'RankRules':[],
                                            'RankRulesJson':'[]',
                                            'AsynchronousResultRetrieval':false,
                                            'SendContentBeforeQuery':true,
                                            'BatchClientQuery':true,
                                            'FallbackLanguage':-1,
                                            'FallbackRankingModelID':'',
                                            'EnableStemming':true,
                                            'EnablePhonetic':false,
                                            'EnableNicknames':false,
                                            'EnableInterleaving':false,
                                            'EnableQueryRules':true,
                                            'EnableOrderingHitHighlightedProperty':false,
                                            'HitHighlightedMultivaluePropertyLimit':-1,
                                            'IgnoreContextualScope':true,
                                            'ScopeResultsToCurrentSite':false,
                                            'TrimDuplicates':false,
                                            'Properties':{&quot;TryCache&quot;:true,
                                            'Scope':'{Site.URL}',
                                            'UpdateLinksForCatalogItems':true,
                                            'EnableStacking':true,
                                            'ListId':'00000000-0000-0000-0000-000000000000'},
                                            'PropertiesJson':'{
                                                            \'TryCache\':true,
                                                            \'Scope\':\'{Site.URL}\',
                                                            \'UpdateLinksForCatalogItems\':true,
                                                            \'EnableStacking\':true,
                                                            \'ListId\':\'00000000-0000-0000-0000-000000000000\'}',
                                            'ClientType':'ContentSearchRegular',
                                            'UpdateAjaxNavigate':true,
                                            'SummaryLength':180,
                                            'DesiredSnippetLength':90,
                                            'PersonalizedQuery':false,
                                            'FallbackRefinementFilters':null,
                                            'IgnoreStaleServerQuery':false,
                                            'RenderTemplateId':'DefaultDataProvider',
                                            'AlternateErrorMessage':null,
                                            'Title':''}" 
                            BypassResultTypes="True" 
                            ResultsPerPage="3" 
                            SelectedPropertiesJson="null" 
                            HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" 
                            AvailableSortsJson="null" 
                            PreloadedItemTemplateIdsJson="null" 
                            ShowAlertMe="False" 
                            QueryGroupName="Default" 
                            StatesJson="{}" 
                            ServerIncludeScriptsJson="null" 
                            Title="&lt;%$Resources:Microsoft.Office.Server.Search,CBS_Title;%&gt;" 
                            FrameType="None" 
                            SuppressWebPartChrome="False" 
                            Description="&lt;%$Resources:Microsoft.Office.Server.Search,CBS_Description;%&gt;" 
                            IsIncluded="True" 
                            ZoneID="" 
                            PartOrder="0" 
                            FrameState="Normal" 
                            AllowRemove="True" 
                            AllowZoneChange="True" 
                            AllowMinimize="True" 
                            AllowConnect="True" 
                            AllowEdit="True" 
                            AllowHide="True" 
                            IsVisible="True" 
                            DetailLink=""
                            GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js"
                            RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_TopStories.js"
                            ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_TopStories.js" 
                            HelpLink="" 
                            HelpMode="Modeless" 
                            Dir="Default" 
                            PartImageSmall="" 
                            MissingAssembly="&lt;%$Resources:core,ImportErrorMessage;%&gt;" 
                            ImportErrorMessage="&lt;%$Resources:core,ImportErrorMessage;%&gt;" 
                            PartImageLarge="" 
                            IsIncludedFilter="" 
                            ExportControlledProperties="True" 
                            ConnectionID="00000000-0000-0000-0000-000000000000" 
                            ID="g_85c300b8_77cb_49d8_a4bb_eb33aa961bd7" 
                            ChromeType="None" 
                            ExportMode="All" 
                            __MarkupType="vsattributemarkup" 
                            __WebPartId="{85c300b8-77cb-49d8-a4bb-eb33aa961bd7}" 
                            WebPart="true" 
                            Height="" 
                            Width=""/>	
                    </div>
                 <div>
                <div data-module="news-archive-filter" class="sectionSubsite news" data-module-started="false">
                    <h3>News Archive</h3>
                    <div id="archive">
                </div>
                </div>

                <script id="archive-template" type="text/x-handlebars-template">
                 <ul class="accordion" data-module="accordion" id="newsAccordion">
                    {{#each Years}}
                    <li>
                    <div class="accordion-drawer">
                        <a class="header" href="#"><span id="tooltip" class="sr-only">Click to expand</span>{{year}}</a>
                        <div class="content-block">
                            {{#months}}
                            <a class="js-news-archive-filter-submit" data-year='{{../year}}' data-month='{{month}}' href="#">{{monthAsString}}</a>
                            {{/months}}
                        </div>
                    </div>
                    </li>
                    {{/each}}
                    </ul>
                </script>
                </div>
            </aside>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFullBottom" AllowPersonalization="false" ID="placeholdersectionOneFullBottom" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4 column-third">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol1" AllowPersonalization="false" ID="placeholdersectionOneThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-sm-6 col-md-4 column-third">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol2" AllowPersonalization="false" ID="placeholdersectionOneThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-sm-6 col-md-4 column-third">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol3" AllowPersonalization="false" ID="placeholdersectionOneThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-sm-6 col-md-4 column-third">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol4" AllowPersonalization="false" ID="placeholdersectionOneThirdCol4" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-sm-6 col-md-4 column-third">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol5" AllowPersonalization="false" ID="placeholdersectionOneThirdCol5" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-sm-6 col-md-4 column-third">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol6" AllowPersonalization="false" ID="placeholdersectionOneThirdCol6" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionTwoTop" AllowPersonalization="false" ID="placeholdersectionTwoTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionTwo" id="sectionTwo">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoFull" AllowPersonalization="false" ID="placeholdersectionTwoFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionTwoContent" AllowPersonalization="false" ID="placeholdersectionTwoContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoRightHandColumn" AllowPersonalization="false" ID="placeholdersectionTwoRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol1" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol2" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol3" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionThreeTop" AllowPersonalization="false" ID="placeholdersectionThreeTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionThree" id="sectionThree">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" Title="sectionThreeFull" AllowPersonalization="false" ID="placeholdersectionThreeFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionThreeContent" AllowPersonalization="false" ID="placeholdersectionThreeContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
           <WebPartPages:WebPartZone runat="server" Title="sectionThreeRightHandColumn" AllowPersonalization="false" ID="placeholdersectionThreeRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol1" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol2" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol3" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionFourTop" AllowPersonalization="false" ID="placeholdersectionFourTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFour" id="sectionFour">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourFull" AllowPersonalization="false" ID="placeholdersectionFourFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionFourContent" AllowPersonalization="false" ID="placeholdersectionFourContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>

            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourRightHandColumn" AllowPersonalization="false" ID="placeholdersectionFourRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol1" AllowPersonalization="false" ID="placeholdersectionFourThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol2" AllowPersonalization="false" ID="placeholdersectionFourThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol3" AllowPersonalization="false" ID="placeholdersectionFourThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionFiveTop" AllowPersonalization="false" ID="placeholdersectionFiveTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFive" id="sectionFive">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveFull" AllowPersonalization="false" ID="placeholdersectionFiveFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveContent" AllowPersonalization="false" ID="placeholdersectionFiveContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveRightHandColumn" AllowPersonalization="false" ID="placeholdersectionFiveRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
             <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol1" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol2" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
            <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol3" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<section>      
    <div class="container-fluid">                                 <div class="row editPanel">                                     <div class="col-md-12">                                         <PublishingWebControls:EditModePanel runat=server id="EditModePanel1">                                             <Taxonomy:TaxonomyFieldControl FieldName="PageCategory" runat="server"></Taxonomy:TaxonomyFieldControl>                                         </PublishingWebControls:EditModePanel>                                     </div>                                 </div>                               </div>
</section>
</asp:Content>