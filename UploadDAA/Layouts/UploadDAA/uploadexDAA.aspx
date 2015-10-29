<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Assembly Name="Microsoft.Office.Policy.Pages, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" DynamicMasterPageFile="~masterurl/default.master" Inherits="Microsoft.Office.RecordsManagement.PolicyFeatures.ApplicationPages.UploadExPage"       %> <%@ Import Namespace="Microsoft.SharePoint.WebControls" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="wssawc" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormSection" src="~/_controltemplates/15/InputFormSection.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="InputFormControl" src="~/_controltemplates/15/InputFormControl.ascx" %>
<%@ Register TagPrefix="wssuc" TagName="ButtonSection" src="~/_controltemplates/15/ButtonSection.ascx" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
		<asp:PlaceHolder id="MultipleUploadWarning" Visible="false" runat="server">
			 <TR> <TD height="8px"><IMG SRC="/_layouts/images/blank.gif" width=1 height=8 alt=""></TD></TR>
			 <TR><TD colspan=2>
							 <table cellpadding=2 cellspacing=1 width=100% class="ms-informationbar" style="margin-bottom: 5px;" border=0>
									 <tr><td width=10 valign=center style="padding: 4px">
									<img src="/_layouts/images/exclaim.gif" alt="<%$Resources:wss,exclaim_icon%>" runat="server"/></td><TD class="ms-descriptiontext"><SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_document_required_multiple%>" EncodeMethod='HtmlEncode'/>
							</td></tr></table>
			  </TR></TD>
	   </asp:PlaceHolder>
</asp:Content>
<%@ Register Tagprefix="Publishing" Namespace="Microsoft.SharePoint.Publishing.Internal.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
	<% if (!string.IsNullOrEmpty(QueryTitle)) { %>
	<%= SPHttpUtility.HtmlEncode(QueryTitle) %>
	<% } else if (IsGeneralUpload) { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsDocumentLibrary && EnforceRouting) { %>
	<asp:Literal runat="server" Text='<%$Resources:dlcpolicy,uploadex_submit_title%>' />
	<% } else if (IsTemplateCatalog) { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_template_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsWebPartCatalog) { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_webpart_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsMasterPageCatalog) { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_masterpage_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsPictureLibrary) { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_imglib_15%>" EncodeMethod='HtmlEncode'/>
	<% } else { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_15%>" EncodeMethod='HtmlEncode'/>
	<% } %>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<asp:HyperLink id="ListTitle" runat="server"/>
	<% if (!string.IsNullOrEmpty(QueryTitle)) { %>
	<%= SPHttpUtility.HtmlEncode(QueryTitle) %>
	<% } else if (IsGeneralUpload) { %>
	: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsDocumentLibrary && EnforceRouting) { %>
	: <asp:Literal runat="server" Text='<%$Resources:dlcpolicy,uploadex_submit_title%>' />
	<% } else if (IsTemplateCatalog) { %>
	: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_template_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsWebPartCatalog) { %>
	: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_webpart_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsMasterPageCatalog) { %>
	: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_masterpage_15%>" EncodeMethod='HtmlEncode'/>
	<% } else if (IsPictureLibrary) { %>
	: <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_imglib_15%>" EncodeMethod='HtmlEncode'/>
	<% } else { %>
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_pagetitle_15%>" EncodeMethod='HtmlEncode'/>
	<% } %>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
<% if (!IsGeneralUpload && IsPictureLibrary) { %>
	<SharePoint:ScriptLink name="imglib.js" localizable="false" runat="server" />
<% } %>

<!-- Custom styles for DAA to hide the folder selection functions -->
<style type="text/css">
    #ctl00_PlaceHolderMain_ctl04_ctl01_selectTargetButton {
    display: none;
}
</style>

<SharePoint:ScriptBlock runat="server">
function _spBodyOnLoad()
{
	var controlId = "<%= InputFile.ClientID %>";
	var c = document.getElementById(controlId);
	if (c != null)
	{
		c.focus();
	}
	var linkName = "<%=OpenWithExplorerLink.ClientID%>";
	var linkElement = document.getElementById(linkName);
	var showLink = (Boolean(linkElement) && (linkElement.style.display != 'none')) && SupportsNavigateHttpFolder();
	<% if (IsGeneralUpload) { %>
	showLink = false;
	<% } %>
	if (!showLink && linkElement != null)
	{
		linkElement.style.display = "none";
	}
     greyDestinationField();
}
function LaunchOpenInExplorer()
{
	vCurrentListID = "<%= CurrentList.ID %>";
	vCurrentListUrlAsHTML = "<%= Web.Url + "/" + (CurrentList.RootFolder.Url.Length > 0 ? CurrentList.RootFolder.Url + "/" : "") %>";
	vCurrentWebUrl = "<%= Web.Url %>";
	var destinationFolder;
	var rootFolder = "";
	var destinationUrl;
	if (document.getElementById("destination") != null)
	{
		destinationFolder = document.getElementById("destination").value;
	}
	if (destinationFolder == null || destinationFolder == "")
	{
		rootFolder = GetUrlKeyValue("RootFolder", true);
	}
	if (Boolean(destinationFolder) && destinationFolder != "")
	{
		destinationUrl = destinationFolder;
	}
	else if (rootFolder != "")
	{
		destinationUrl = rootFolder;
	}
	else
	{
		destinationUrl = vCurrentListUrlAsHTML;
	}
	CoreInvoke('NavigateHttpFolder', destinationUrl , '_blank');
	return false;
}
function VerifyCommentLength()
{
<% if (VersionCommentSection.Visible) { %>
	var commentId = "<%= CheckInComment.ClientID %>";
	if (document.getElementById(commentId).value.length > 1023)
	{
		window.alert("<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,upload_comment_sizelimitexceeded_err%>' EncodeMethod='EcmaScriptStringLiteralEncode'/>");
		document.getElementById(commentId).focus();
		return false;
	}
<% } %>
	return true;
}
<% if (ShowFolderPicker) { %>
var updateCalledOnce = false;
function updateDestination()
{
	if(!updateCalledOnce)
	{
		updateCalledOnce = true;
	}
	else
	{
		return;
	}
	var hiddenDestination = document.getElementById("destination");
	var hiddenRedirectUrl = document.getElementById("Confirmation-URL");
	var uploadLocation = document.getElementById(uplocid).value;
	if(uploadLocation != null && uploadLocation != "")
	{
		hiddenDestination.value = hiddenDestination.value + uploadLocation;
		if(!isPopUI)
		{
			hiddenRedirectUrl.value = hiddenRedirectUrl.value + hiddenDestination.value;
		}
	}
}
<% } %>
function ForceRestoreToOriginalFormAction()
{
	if (_spOriginalFormAction != null)
	{
		document.forms[0].action = _spOriginalFormAction;
		document.forms[0]._initialAction = document.forms[0].action;
		_spOriginalFormAction = null;
		_spEscapedFormAction = null;
	}
}
function LaunchTargetPicker()
{
	var callback = function(dest)
	{
		if (dest != null && dest != undefined && dest[3] != null)
		{
			document.getElementById(uplocid).value = dest[3];
			currSelectionId = dest[0];
		}
	};
	libraryRelUrl = document.getElementById(uplocid).value;
	if(libraryRelUrl == null || libraryRelUrl == "" || libraryRelUrl == "/")
	{
		libraryRelUrl = "";
	}
	else if(libraryRelUrl.charAt(0) != '/')
	{
		libraryRelUrl = "/" + libraryRelUrl;
	}
	currSelectionUrl = libraryUrl + libraryRelUrl;
	var iconUrl = "/_layouts/15/images/smt_icon.gif?rev=23";
	SP.SOD.executeFunc('pickertreedialog.js', 'LaunchPickerTreeDialogSelectUrl', function(){
		LaunchPickerTreeDialogSelectUrl('CbqPickerSelectFolderTitle', 'CbqPickerSelectFolderText', 'websListsFolders', currAnchor, webUrl, currSelectionUrl, '', '', iconUrl, '', callback, 'true', '');
	});
}
var supportedExtensions = new Array(".docx",".docm",".dotx",".dotm",".pptx",".pptm",".potx",".ppsx",".ppsm",".xlsx",".xlsb",".xlsm",".xltx",".xltm",".gif",".jpeg",".jpg",".jpe",".jfif",".bmp",".dib",".png",".tif",".tiff",".ico",".wdp",".hdp",".one",".onetoc2");
var mediaPlayerSupportedExtensions;
function GetMediaPlayerSupportedExtensions()
{
	if(mediaPlayerSupportedExtensions == null)
	{
		mediaPlayerSupportedExtensions = new Array();
		<% foreach (string ext in Microsoft.SharePoint.Publishing.WebControls.MediaWebPart.MediaFileExtensions) { %>
			var tempExtension = <%= "\"" + ext.ToLower() + "\"" %>;
			if(tempExtension.charAt(0) != '.')
			{
				tempExtension = '.' + tempExtension;
			}
			mediaPlayerSupportedExtensions.push(tempExtension);
		<% } %>
		supportedExtensions = supportedExtensions.concat(mediaPlayerSupportedExtensions);
	}
}
function CheckAssetLibMediaExtension()
{
	<% if(CheckAssetLibraryForFileExtension) { %>
	var fileDiv = document.getElementById("<%= InputFile.ClientID %>");
	var showWarning = fileDiv != null;
	if (showWarning)
	{
		var filePath = fileDiv.value;
		var fileExtension = filePath.substr(filePath.lastIndexOf('.')).toLowerCase();
		GetMediaPlayerSupportedExtensions();
		for (var i = 0; i < supportedExtensions.length; i++)
		{
			if (fileExtension == supportedExtensions[i])
			{
				showWarning = false;
				break;
			 }
		}
	}
	var warningDiv = document.getElementById("AssetLibMediaWarning");
	if (warningDiv)
	{
		warningDiv.style.display = showWarning ? "" : "none";
	}
	<% } %>
}
function ResetSpFormOnSubmitCalled()
{
	_spFormOnSubmitCalled = false;
	return true;
}
function processInput()
{
	if(!VerifyCommentLength())
	{
		return false;
	}
	if(!document.getElementById("<%= InputFile.ClientID %>"))
	{
		return true;
	}
	if(document.getElementById("<%= InputFile.ClientID %>").value == "")
	{
		return false;
	}
}

function greyDestinationField()
{
    var element = document.querySelector('[fieldname="RoutingTargetPath"]');
    element.disabled = true;	
}

</SharePoint:ScriptBlock>
<SharePoint:StyleBlock runat="server">
	.routing_warning {
		color: black;
		background: rgb(255,251,231);
		margin: .5em .5em .5em .5em;
		padding: .3em .3em .3em .3em;
		border-color: black;
		border-style: solid;
		border-width: thin;
		border-color: rgb(255,239,181);
	}
</SharePoint:StyleBlock>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<input type="hidden" name="destination" id="destination" value="<asp:Literal ID='Destination' runat='server'/>" />
	<SharePoint:SPPageStatusSetter id="PageStatus" runat="server"/>
	<% if(!IsGeneralUpload && CheckAssetLibraryForFileExtension) { %>
	<SharePoint:UIVersionedContent UIVersion="4" runat="server">
		<ContentTemplate>
			<div id="AssetLibMediaWarning" style="display:none;" class="s4-status-s3" >
		</ContentTemplate>
	</SharePoint:UIVersionedContent>
	<SharePoint:UIVersionedContent UIVersion="3" runat="server">
		<ContentTemplate>
			<div id="AssetLibMediaWarning" style="display:none;" class="routing_warning" >
		</ContentTemplate>
	</SharePoint:UIVersionedContent>
	<asp:Literal runat="server" Text='<%$Resources:dlcpolicy,uploadex_file_assetlib_warning%>' />
	</div>
	<% } %>
	<table border="0" width="100%" cellspacing="0" cellpadding="0" class="ms-descriptiontext">
	<Control id="SingleItemSection" runat="server">
	<wssuc:InputFormSection runat="server" id="UploadDocumentSection" TopPadding="false">
		<Template_Title>
			<% if (IsAppPackageList) { %>
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,DevSite_upload_app%>" EncodeMethod='HtmlEncode'/>
			<% } else { %>
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,upload_document_title_15%>" EncodeMethod='HtmlEncode'/>
			<% } %>
		</Template_Title>
		<Template_Description>
			<% if (IsAppPackageList) { %>
				<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,DevSite_upload_app_description%>" EncodeMethod='HtmlEncode'/>
			<% } else if(EnforceRouting) { %>
				<asp:Literal runat="server" Text='<%$Resources:dlcpolicy,uploadex_submit_description%>' />
			<% } %>
		</Template_Description>
		<Template_InputFormControls>
			<wssuc:InputFormControl runat="server" SmallIndent="true">
			<Template_Control>
				<table class="ms-authoringcontrols" width="100%">
				<tr><td>
					<input type="file" id="InputFile" runat="server" class="ms-fileinput ms-fullWidth" size="35" onfocus="ResetSpFormOnSubmitCalled();" onchange="CheckAssetLibMediaExtension()" title="<%$Resources:wss,upload_document_title_15%>" />
				</td></tr>
				<tr><td>
					<wssawc:InputFormRequiredFieldValidator ControlToValidate="InputFile"
						Display="Dynamic" ErrorMessage="<%$Resources:wss,upload_document_file_missing%>" Runat="server"
						BreakBefore="false" BreakAfter="false" />
					<asp:CustomValidator ControlToValidate="InputFile"
						Display="Dynamic"
						ErrorMessage="<%$Resources:wss,upload_document_file_invalid%>"
						OnServerValidate="ValidateFile"
						runat="server"/>
				</td></tr>
				<tr><td>
					<asp:HyperLink id="OpenWithExplorerLink" visible="false"
						accesskey="<%$Resources:wss,openwithexplorer_accesskey%>"
						text="<%$SPHtmlEncodedResources:wss,upload_document_with_explorer%>"
						href='#'
						onclick="javascript:return !LaunchOpenInExplorer();"
						runat="server"/>
				</td></tr>
				<% if (IsGeneralUpload || (IsDocumentLibrary && !EnforceRouting) || !IsDocumentLibrary) { %>
				<tr><td>
					<asp:CheckBox id="OverwriteSingle" Checked="true" Text="<%$Resources:wss,upload_document_overwrite_file%>" runat="server" />
				</td></tr>
				<% } %>
				</table>
			</Template_Control>
			</wssuc:InputFormControl>
		</Template_InputFormControls>
	</wssuc:InputFormSection>
	<% if (ShowFolderPicker) { %>
	<wssuc:InputFormSection
		Title="<%$Resources:dlcpolicy,uploadex_target_location_title%>"
		TopPadding="false"
		runat="server">
		<Template_InputFormControls>
			<wssuc:InputFormControl runat="server" SmallIndent="true">
			<Template_Control>
				<table class="ms-authoringcontrols" width="100%">
				<tr>
				<td valign="top" width="99%">
					<wssawc:InputFormTextBox runat="server" id="uploadLocation" class="ms-fullWidth" FieldName="RoutingTargetPath" />
				</td>
				<td valign="top">
					<asp:Button class="ms-input ms-floatRight" runat="server" Text="<%$Resources:dlcpolicy,uploadex_choose_folder%>" id="selectTargetButton" onclientclick="LaunchTargetPicker();return false;" />
				</td>
				</tr>
				</table>
			</Template_Control>
			</wssuc:InputFormControl>
		</Template_InputFormControls>
	</wssuc:InputFormSection>
	<% } %>
	<% if (IsGeneralUpload) { %>
	<wssuc:InputFormSection runat="server"
		id="SelectListSection"
		Title="<%$Resources:wss,upload_choose_library%>"
		TopPadding="false">
		<Template_InputFormControls>
			<wssuc:InputFormControl runat="server" SmallIndent="true">
			<Template_Control>
				<asp:DropDownList id="AvailableDocLibs" runat="server" class="ms-fullWidth" title="<%$Resources:wss,upload_choose_library%>" />
			</Template_Control>
			</wssuc:InputFormControl>
		</Template_InputFormControls>
	</wssuc:InputFormSection>
	<% } %>
	<wssuc:InputFormSection runat="server"
		id="VersionCommentSection"
		Title="<%$Resources:wss,upload_version_title%>"
		TopPadding="false">
		<Template_InputFormControls>
			<wssuc:InputFormControl runat="server" SmallIndent="true">
			<Template_Control>
				<asp:TextBox TextMode="MultiLine" Rows="5" Columns="45" id="CheckInComment" class="ms-fullWidth" runat="server" title="<%$Resources:wss,upload_version_title%>" />
			</Template_Control>
			</wssuc:InputFormControl>
		</Template_InputFormControls>
	</wssuc:InputFormSection>
	</Control>
	<wssuc:ButtonSection runat="server" ControlToShowProgress="btnOK">
		<Template_Buttons>
			<input id="btnOK" runat="server" type="button" accesskey="<%$Resources:wss,multipages_okbutton_accesskey%>" class="ms-ButtonHeightWidth" value="<%$Resources:wss,multipages_okbutton_text%>" onclick="processInput();" onserverclick="OnSubmit" />
		</Template_Buttons>
	</wssuc:ButtonSection>
	</table>
</asp:Content>
