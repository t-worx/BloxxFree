<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<dnn:META runat="server" id="dnnMeta" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, minimal-ui" />
<dnn:META runat="server" id="dnnEdge" http-equiv="X-UA-Compatible" Content="IE=edge" />
<dnn:JQUERY runat="server" id="dnnjQuery" jQueryHoverIntent="true" />
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="<%= SkinPath %>js/smoothscroll.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="<%= SkinPath %>js/common.js" type="text/javascript"></script>
<!-- Bloxx Free Theme by T-WORX | Default | 01.00.01 -->
<div id="mobileMenu" class="collapse mobileMenuMain"> <a class="menuClose" data-toggle="collapse" data-target="#mobileMenu">×</a>
	<dnn:MENU MenuStyle="menus/mobmenu" runat="server"></dnn:MENU>
</div>
<div class="siteWrapper BloxxFreeTheme defaultPage">
	<header class="headerMain">
		<div class="siteWidth">
			<div class="header-wrap">
				<% If PortalSettings.ActiveTab.Title.Length > 1 %>
					<h1 class="pageTitle">
						<%=PortalSettings.ActiveTab.Title %>
					</h1>
						<% else %>
					<h1 class="pageTitle">
						<%=PortalSettings.ActiveTab.TabName %>
					</h1>
				<% End If %>
				<div class="searchMain">
					<dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="SearchInput" ShowSite="False" ShowWeb="False" Submit="&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt;" UseWebForSite="False" UseDropDownList="False" />
				</div>
				<div class="logoMain header-inner">
					<dnn:LOGO runat="server" id="dnnLOGO" />
				</div>
				<div class="menuMain header-inner"><span class="mobileMenuMain hidden-md hidden-lg"><a class="menuButton" data-toggle="collapse" data-target="#mobileMenu"><em class="fa fa-bars"></em></a></span>
					<div class="menuMainInner hidden-sm hidden-xs">
						<dnn:MENU MenuStyle="menus/menu" runat="server"></dnn:MENU>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="heroMain sectionMain">
		<div class="myPane" id="HeroPane" runat="server" visible="false"></div>
	</div>
	<div class="contentMain sectionMain">
		<div class="siteWidth">
			<div class="myPane" id="ContentPane" runat="server" visible="false"></div>
			<div class="col-md-6 noPad">
				<div class="myPane" id="PaneHalfLeft" runat="server" visible="false"></div>
			</div>
			<div class="col-md-6 noPad">
				<div class="myPane" id="PaneHalfRight" runat="server" visible="false"></div>
			</div>
			<div class="clearfix"></div>
			<div class="myPane" id="BottomPane" runat="server" visible="false"></div>
		</div>
	</div>
</div>
<footer class="invert BloxxTheme">
	<div class="breadcrumbMain">
		<div class="siteWidth">
			<dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB"  CssClass="breadcrumbText" RootLevel="0" Separator="&nbsp;&nbsp;|&nbsp;" />
		</div>
	</div>
	<div class="footerMain">
		<div class="siteWidth">
			<div class="col-sm-6 col-md-3 noPad">
				<div class="myPane" id="FooterQuarterPane1" runat="server" visible="false"></div>
			</div>
			<div class="col-sm-6 col-md-3 noPad">
				<div class="myPane" id="FooterQuarterPane2" runat="server" visible="false"></div>
			</div>
			<div class="clearfix visible-sm"></div>
			<div class="col-sm-6 col-md-3 noPad">
				<div class="myPane" id="FooterQuarterPane3" runat="server" visible="false"></div>
			</div>
			<div class="col-sm-6 col-md-3 noPad">
				<div class="myPane" id="FooterQuarterPane4" runat="server" visible="false"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footerBottom">
		<div class="siteWidth">
			<div class="col-md-9 noPad">
			  <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="footerTXT" />
			  <dnn:TERMS runat="server" id="dnnTERMS" CssClass="footerTXT" />
			  <dnn:PRIVACY runat="server" id="dnnPRIVACY" CssClass="footerTXT" />
			  <dnn:LOGIN runat="server" id="dnnLOGIN" CssClass="footerTXT" LegacyMode="true" />
			  <dnn:USER runat="server" id="dnnUSER" CssClass="footerTXT" LegacyMode="true" />
			</div>
			<div class="col-md-3 noPad">
				<div class="myPane" id="FooterSocialPane" runat="server" visible="false"></div>
			</div>
			<div class="col-md-12 noPad">
				<!-- Original Theme by T-Worx -->
				<!-- http://www.t-worx.com -->
				<!-- You can remove the link below but must leave this comments even when modifying this theme -->
				<div class="byT-worx"><span class="footerTXT">Original Theme by <a href="http://www.t-worx.com" target="_blank">T-Worx Inc</a></span></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</footer>
