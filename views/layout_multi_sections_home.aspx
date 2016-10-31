<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>                                 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>                                 <asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">                                     <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     <PublishingWebControls:EditModePanel runat="server">                                         <!-- Styles for edit mode only-->                                         <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"                                             After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>                                     </PublishingWebControls:EditModePanel>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">                                     <SharePointWebControls:ListProperty Property="Title" runat="server"/> - <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">                                     <SharePointWebControls:FieldValue FieldName="Title" runat="server" />                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">                                     <SharePointWebControls:ProjectProperty Property="Description" runat="server"/>                                 </asp:Content>                                 <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
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
                <SharePointWebControls:TextField FieldName="fa564e0f-0c70-4ab9-b863-0177e6ddd247" runat="server" /> 
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                  <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionOneRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
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
<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionTwo" id="sectionTwo">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionTwoThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionThree" id="sectionThree">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
           <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionThreeThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFour" id="sectionFour">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
             <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>

            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
                <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
               <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFourThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveTop" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
<section class="sectionFive" id="sectionFive">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveFull" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveContent" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveRightHandColumn" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
             <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol1" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
              <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol2" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
            <div class="col-md-4">
            <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="placeholdersectionFiveThirdCol3" FrameType="TitleBarOnly" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
            </div>
        </div>
    </div>
</section>
</asp:Content>