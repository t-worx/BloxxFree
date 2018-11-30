<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<!-- Bloxx Free Containers | H1 Title No Bottom Pad Container | 01.00.00 -->
<div class="siteWidth">
	<div class="TitleWidth TitleColor padThis noBottomPad">
		<div class="TitleIcon">
			<dnn:ICON runat="server" id="ICON" />
		</div>
		<div class="TitleTitle">
			<h1>
				<dnn:TITLE runat="server" id="Title" CssClass="noClass" />
			</h1>
		</div>
		<div class="TitleContentpane" id="ContentPane" runat="server"></div>
		<div class="clearfix"></div>
	</div>
</div>
