<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<!-- Bloxx Free Containers | H3 Title Container | 01.00.01 -->
<div class="siteWidth">
	<div class="TitleWidth TitleColor padThis">
		<div class="TitleIcon">
			<dnn:ICON runat="server" id="ICON" />
		</div>
		<div class="TitleTitle">
			<h3>
				<dnn:TITLE runat="server" id="Title" CssClass="noClass" />
			</h3>
		</div>
		<div class="TitleContentpane" id="ContentPane" runat="server"></div>
		<div class="clearfix"></div>
	</div>
</div>
