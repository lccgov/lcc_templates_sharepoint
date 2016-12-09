<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section id="main" class="sectionOne">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="breadcrumb">
                    <ASP:SITEMAPPATH runat="server" sitemapproviders="SPSiteMapProvider,SPXmlContentMapProvider" rendercurrentnodeaslink="false" hideinteriorrootnodes="true" RootNodeStyle-CssClass="bc-root"><PATHSEPARATORTEMPLATE></PATHSEPARATORTEMPLATE></ASP:SITEMAPPATH> 
                </div>
                <h1><SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /></h1> 
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                <PublishingWebControls:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server"></PublishingWebControls:RichHtmlField> 
            </div>
            <div class="col-md-4">
                  <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                  <div id="keywordFilter" data-module="keyword-filter" class="sectionSubsite news" data-module-started="false">
                        <h3>View News By Keyword</h3>
                    
                                <input type="text" class="js-keyword">
                                <a href="#" class="button js-keyword-submit">Go</a>
                          
                 </div>
                 <div id="dateRangeFilter" class="sectionSubsite news" data-module="date-range-filter" data-module-started="false">
                    <h3>View News By Date</h3>
                            <div class="datePickerContainer">
                                <label for="Start-date">Start date</label>    
                                <input name="Start-date" type="text" class="datepicker js-date-range-start hasDatepicker">
                                </div>
                                  <div class="datePickerContainer">
                                <label for="End-date">End date</label>    
                                <input name="End-date" type="text" class="datepicker js-date-range-end hasDatepicker">
                                <a href="#" class="button js-date-range-submit">Go</a>
                            </div>
                 </div>
                 <div>
                <div data-module="news-archive-filter" class="sectionSubsite news" data-module-started="false">
                    <h3>News Archive</h3>
                    <div id="archive">
                </div>
                </div>

                <script id="archive-template" type="text/x-handlebars-template">
                 <ul class="accordion" data-module="accordion">
                    {{#each Years}}
                    <li>
                    <div class="accordion-drawer">
                   <a class="header" href="#"><span id="tooltip" class="sr-only">Click to expand</span>{{year}}</a>
                    {{#months}}
                        <div class="content-block"><a class="js-news-archive-filter-submit" data-year='{{../year}}' data-month='{{month}}' href="#">{{monthAsString}}</a></div>
                    {{/months}}
                    </div>
                    </li>
                    {{/each}}
                    </ul>
                </script>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneFullBottom" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
    </div>
</section>
<section>      
    <div class="container-fluid">                                 <div class="row editPanel">                                     <div class="col-md-12">                                         <PublishingWebControls:EditModePanel runat=server id="EditModePanel1">                                             <Taxonomy:TaxonomyFieldControl FieldName="71aeea80-d174-4461-b2ad-b40d1f6ef43a" runat="server"></Taxonomy:TaxonomyFieldControl>                                         </PublishingWebControls:EditModePanel>                                     </div>                                 </div>                               </div>
</section>
</asp:Content>