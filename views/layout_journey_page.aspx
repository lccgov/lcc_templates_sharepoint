<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register TagPrefix="LatestNews" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<div class="journey-page-template" id="main" role="main">
<WebPartPages:WebPartZone runat="server" Title="sectionOneTop" AllowPersonalization="false" ID="placeholdersectionOneTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionOne">
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
        </div>
        <div class="row">
            <div class="col-md-8">
                <h1>[Page category]</h1> 
                <aside class="part-navigation__container" role="complementary">
                    <nav role="navigation" class="part-navigation" aria-label="Pages in this guide">
                        <ol>
                            <li>[Page 1 name - static]</li>
                            <li><a href="#">[Page 2 name - link]</a></li>
                            <li><a href="#">[Page 3 name - link]</a></li>
                            <li><a href="#">[Page 4 name - link]</a></li>
                        </ol>
                    </nav>
                </aside>
                <div class="part-content">
                    <h1><SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /></h1> 
                    <WebPartPages:WebPartZone runat="server" Title="sectionOneContent" AllowPersonalization="false" ID="placeholdersectionOneContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
                <nav class="pagination-nav" role="navigation" aria-label="Pagination">
                    <ul>
                        <li class="pagination-nav__previous-page">
                            <a href="#" rel="prev">
                            <span class="pagination-nav__part-title">Previous</span>
                            <span class="pagination-nav__label">[PAGE NAME]</span>
                            </a>
                        </li>
                        <li class="pagination-nav__next-page">
                            <a href="#" rel="next">
                            <span class="pagination-nav__part-title">Next</span>
                            <span class="pagination-nav__label">[PAGE NAME]</span>
                            </a>
                        </li>
                        <div style="clear:both"></div>
                    </ul>
                </nav>
    
            </div>
            <aside role="complementary" class="col-md-4">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneRightHandColumn" AllowPersonalization="false" ID="placeholdersectionOneRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </aside>
        </div> 
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFullBottom" AllowPersonalization="false" ID="placeholdersectionOneFullBottom" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<section>      
    <div class="container-fluid">                                 <div class="row editPanel">                                     <div class="col-md-12">                                         <PublishingWebControls:EditModePanel runat=server id="EditModePanel1">                                             <Taxonomy:TaxonomyFieldControl FieldName="PageCategory" runat="server"></Taxonomy:TaxonomyFieldControl>                                         </PublishingWebControls:EditModePanel>                                     </div>                                 </div>                               </div>
</section>
</div>
</asp:Content>