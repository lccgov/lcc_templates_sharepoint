<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register TagPrefix="LatestNews" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WebPartPages:WebPartZone runat="server" Title="sectionOneTop" AllowPersonalization="false" ID="placeholdersectionOneTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section id="main" class="sectionOne">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFull" AllowPersonalization="false" ID="placeholdersectionOneFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
             <div class="breadcrumb">
                    <ASP:SITEMAPPATH runat="server" sitemapproviders="SPSiteMapProvider,SPXmlContentMapProvider" rendercurrentnodeaslink="false" hideinteriorrootnodes="true" RootNodeStyle-CssClass="bc-root"><PATHSEPARATORTEMPLATE></PATHSEPARATORTEMPLATE></ASP:SITEMAPPATH> 
             </div>
            </div>
            </div>
            <div class="row">
                    <div class="col-md-8">
                    <h1><SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /></h1> 
                        <PublishingWebControls:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server"></PublishingWebControls:RichHtmlField> 
                        <WebPartPages:WebPartZone runat="server" Title="sectionOneContent" AllowPersonalization="false" ID="placeholdersectionOneContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                    </div>
                    <div class="col-md-4">
                        <WebPartPages:WebPartZone runat="server" Title="sectionOneRightHandColumn" AllowPersonalization="false" ID="placeholdersectionOneRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                    </div>
           </div>
         <div class="row">
                <div class="col-md-6">
                    <WebPartPages:WebPartZone runat="server" Title="sectionOneHalf" AllowPersonalization="false" ID="placeholdersectionOneHalf" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
                <div class="col-md-6">
                    <WebPartPages:WebPartZone runat="server" Title="sectionOneHalfRight" AllowPersonalization="false" ID="placeholdersectionOneHalfRight" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
         </div>   
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFullBottom" AllowPersonalization="false" ID="placeholdersectionOneFullBottom" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol1" AllowPersonalization="false" ID="placeholdersectionOneThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol2" AllowPersonalization="false" ID="placeholdersectionOneThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol3" AllowPersonalization="false" ID="placeholdersectionOneThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
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