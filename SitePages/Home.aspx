<%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ProjectProperty Property="Title" runat="server"/> - <SharePoint:ListItemProperty runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><SharePoint:AlphaImage ID='onetidtpweb1' Src="/_layouts/15/images/wiki.png?rev=23" Width='145' Height='54' Alt="" Runat="server"/></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="CollaborationServer" content="SharePoint Team Web Site" />
	<SharePoint:ScriptBlock runat="server">var navBarHelpOverrideKey =
	'WSSEndUser'; </SharePoint:ScriptBlock>
	<SharePoint:RssLink runat="server"/>

	<!--jQuery library-->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<!--SPServices library-->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.SPServices/2014.02/jquery.SPServices-2014.02.min.js"></script>
	<!--Slick plugin -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="../SiteAssets/slick-theme.css"/>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- main css -->
	<link rel="stylesheet" type="text/css" href="../SiteAssets/main.css"/>

	</asp:Content>
	<asp:Content ContentPlaceHolderId="PlaceHolderMiniConsole" runat="server">
		<SharePoint:FormComponent TemplateName="WikiMiniConsole" ControlMode="Display" runat="server" id="WikiMiniConsole"/>
	</asp:Content>

	<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
		<!-- <SharePoint:RecentChangesMenu runat="server" id="RecentChanges"/>  -->
	</asp:Content>

	<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
		<!-- show Link -->
		<div class="result_Link_div"></div>
		<script type="text/javascript" src="../SiteAssets/jquery.getlist.js"></script>

		<hr>
		<!-- show Carousel -->
		<div class="result_Carousel_div"></div>

		<script type="text/javascript" src="../SiteAssets/jquery.carousel.js"></script>

		<hr>
		<!-- show Filter -->
		<div class="custom-select"></div>

		<script type="text/javascript" src="../SiteAssets/jquery.filter.js"></script>

		<div class="filter_div">

			<div class="filter_child" id="Department A">
				<div>
					<h1>Department A</h1>
					<span style="color:navy">This is the content of Department A</span>
				</div>
			</div>
			<div class="filter_child" id="Department B">
				<div>
					<h1>Department B</h1>
					<span style="color:navy">This is the content of Department B</span>
				</div>
			</div>
			<div class="filter_child" id="Department C">
				<div>
					<h1>Department C</h1>
					<span style="color:navy">This is the content of Department C</span>
				</div>
			</div>

		</div>
	</asp:Content>
