<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="Taxonomy" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register TagPrefix="LatestNews" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<WebPartPages:WebPartZone runat="server" Title="sectionOneTop" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section id="main" class="sectionOne">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFull" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <h1 style="display:none"><SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /></h1> 
                <WebPartPages:WebPartZone runat="server" Title="sectionOneContent" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                <PublishingWebControls:RichHtmlField FieldName="f55c4d88-1f2e-4ad9-aaa8-819af4ee7ee8" runat="server"></PublishingWebControls:RichHtmlField> 
            </div>
            <div class="col-md-4">
                  <WebPartPages:WebPartZone runat="server" Title="sectionOneRightHandColumn" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
         <div class="row">
            <div class="col-md-6">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneHalf" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
               <div class="col-md-6">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneHalfRight" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
         </div>   
        <div class="row">
            <div class="col-lg-12">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneFullBottom" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol1" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol2" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionOneThirdCol3" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionTwoTop" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionTwo" id="sectionTwo">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoFull" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionTwoContent" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoRightHandColumn" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol1" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol2" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionTwoThirdCol3" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionThreeTop" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionThree" id="sectionThree">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" Title="sectionThreeFull" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionThreeContent" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
           <WebPartPages:WebPartZone runat="server" Title="sectionThreeRightHandColumn" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol1" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol2" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionThreeThirdCol3" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionFourTop" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFour" id="sectionFour">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourFull" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" Title="sectionFourContent" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>

            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourRightHandColumn" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol1" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol2" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" Title="sectionFourThirdCol3" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" Title="sectionFiveTop" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFive" id="sectionFive">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveFull" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveContent" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveRightHandColumn" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
             <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol1" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol2" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
            <WebPartPages:WebPartZone runat="server" Title="sectionFiveThirdCol3" AllowPersonalization="false" ID="placeholder%s" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<section>      
    <div class="container-fluid">                                 <div class="row editPanel">                                     <div class="col-md-12">                                         <PublishingWebControls:EditModePanel runat=server id="EditModePanel1">                                             <Taxonomy:TaxonomyFieldControl FieldName="PageCategory" runat="server"></Taxonomy:TaxonomyFieldControl>                                         </PublishingWebControls:EditModePanel>                                     </div>                                 </div>                               </div>
</section>
</asp:Content>