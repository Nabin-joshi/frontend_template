<html>
	<head>
		<!-- <link rel="shortcut icon" type="image/png"  href="favicon.ico"> -->
		<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
		<link href="resources/css/styles.css" rel="stylesheet" type='text/css' />
		<link href="resources/css/ui.datepicker.css" rel="stylesheet"/>
		<link href="resources/css/ui.all.css" rel="stylesheet"/>
		<link href="resources/css/group-combo.css" rel="stylesheet" type='text/css' />

		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<!--<script type="text/javascript" src="resources/js/jquery-ui-1.7.3.custom.js"></script>-->
		<script type="text/javascript" src="resources/js/jquery-ui-1.8.24.custom.min.js"></script>
		<script type="text/javascript" src="resources/js/ui.core.js"></script>
		<script type="text/javascript" src="resources/js/jquery.jstree.js"></script>
		<script type="text/javascript" src="resources/js/tablesorter.js"></script>
		<script type="text/javascript" src="resources/js/tablesorterpager.js"></script>
		<script type="text/javascript" src="resources/js/ui.datepicker.js"></script>
		<script type="text/javascript" src="resources/js/application-script.js"></script>
		<script type="text/javascript" src="resources/js/master-data-layouts-script.js"></script>
		<!--[if IE]>
		<link href="resources/css/ie-styles.css" rel="stylesheet"/>
		<![endif]-->
		
	</head>
  <body>
    <div id="pageWrapper" class="pageWrapper">
    	<div id="headerWrapper" class="headerWrapper">
    	      <div class="logoutDiv">
	<div class="fright">
		<a href="/logout">
			<img src="resources/images/logout-bg.png" class="logoutImage">
			<span>logout</span>
		</a>
	</div>
	<div class="cboth"></div>
</div>
<div class="headerNav">
	<div class="fleft">
		<img src="resources/images/logo.png" alt="Pricer Manager">
	</div>
	<div class="fright mainNavWrapper">
		<ul class="mainNavList">
			<li>
				<a href="" id="configurationLink">
					<img src="resources/images/configuration-bg.png">
					<span>Configuration</span>
				</a>
			</li>
			<li>
				<a href="" id="pricingPreferencesLink">
					<img src="resources/images/pricing-bg.png">
					<span>Pricing Preferences</span>
				</a>
			</li>
			<li>
				<a href="" id="administratorLink">
					<img src="resources/images/administrator-bg.png">
					<span>Administrator</span>
				</a>
			</li>
			<li>
				<a href="" id="reportsLink">
					<img src="resources/images/reports-bg.png">
					<span>Reports</span>
				</a>
			</li>
			<li class="last-child">
				<a href="" id="helpLink">
					<img src="resources/images/help-bg.png">
					<span>Help</span>
				</a>
				<div class="helpDropdown" id="helpDropDownList">
					<ul class="helpOptionsList">
						<li class="">
							<a href="">SC Pricer Maintenance Help</a>
						</li>
						<li class="">
							<a href="">About Price</a>
						</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="cboth"></div>
</div>
<div class="subNavWrapper">
	<div class="selectViewTab fleft">
		<a href="" class="viewTabSelect" id="viewTabLink">
			<span>View Tab</span>
			<img src="resources/images/th-sort-down.png"/>
		</a>
		<div class="helpDropdown" id="viewTabOptions">
			<ul class="helpOptionsList viewTabOptionsList">
				<li class="">
					<label for="masterDataVisual">
						<input type="checkbox" class="checkboxTab" <c:if test="${UI_CONFIGURATION['VIEW_TAB_MASTER_DATA'] == 'visible'}">checked </c:if> tabView="masterDataTab" id="masterDataVisual"/>
						<span>Master Data</span>
					</label>	
				</li>
				<li class="">
					<label for="pricingTypeVisual">
						<input type="checkbox" class="checkboxTab" <c:if test="${UI_CONFIGURATION['VIEW_TAB_PRICING_TYPES_N_SEQ'] == 'visible'}">checked </c:if> tabView="pricingTypeTab" id="pricingTypeVisual"/>
						<span>Pricing Types &amp; Sequences</span>
					</label>	
				</li>
				<li class="">
					<label for="groupComboVisual">
						<input type="checkbox" class="checkboxTab" <c:if test="${UI_CONFIGURATION['VIEW_TAB_GROUP_COMBO'] == 'visible'}">checked </c:if> tabView="groupComboTab" id="groupComboVisual"/>
						<span>Group Combo &amp; Attributes</span>
					</label>	
				</li>
				<li class="">
					<label for="testingVisual">
						<input type="checkbox" class="checkboxTab" <c:if test="${UI_CONFIGURATION['VIEW_TAB_TESTING'] == 'visible'}">checked </c:if> tabView="testingTab" id="testingVisual"/>
						<span>Testing</span>
					</label>	
				</li>
				<li class="">
					<label for="hierarchyVisual">
						<input type="checkbox" class="checkboxTab" <c:if test="${UI_CONFIGURATION['VIEW_TAB_HIERARCHIES'] == 'visible'}">checked </c:if> tabView="hierarchyTab" id="hierarchyVisual"/>
						<span>Hierarchies</span>
					</label>	
				</li>
			</ul>
		</div>
	</div>
	<!-- <div class="fright rotateTextChange">
		<div class="rotateChange fleft">
			<a href="" class="fleft">
				<img src="resources/images/clockwise-bg.png">
			</a>
			<a href="" class="fleft">
				<img src="resources/images/anticlockwise-bg.png">
			</a>
		</div>
		<div class="textChange fright">
			<ul>
				<li class="adjustText">
					Adjust font size: 
				</li>
				<li>
					<a href="" class="smallest">A</a>
				</li>
				<li>
					<a href="" class="bigger">A</a>
				</li>
				<li>
					<a href="" class="biggest">A</a>
				</li>
			</ul>
		</div>
	</div> -->
	<div class="cboth"></div>
</div>

<!--Page Overlay Popup-->
<div class="pageOverlay"></div>

<!-- Layout Options Popups -->
<div class="layoutOptionsLinks">
	<a href="" class="chooseLayout" id="chooseLayoutLink">Choose Layout</a>
</div>

<div class="popupWrapper" id="chooseLayoutOptionsPopup" style="display:none">
	<%@ include file="chooseLayoutMasterDataPopup.jspf" %>
</div>

<!-- Pane Selection in Layout Popup -->
<div class="popupWrapper" id="paneSelectionPopup" style="">
	<%@ include file="paneArrangementPopup.jspf" %>
</div>

<!--- Configuration Popup -->
<div class="popupWrapper" id="configurationSettingPopup" style="display:none;">
	<%@ include file="configurationPopup.jspf" %>
</div>	

<div class="popupWrapper" id="pricingPreferencePopup" style="display:none;">
	<%@ include file="pricingPreferencesPopup.jspf" %>
</div>	

<div class="popupWrapper popupwrapperSmall" id="administratorPopup" style="display:none;">
	<%@ include file="administratorPopup.jspf" %>
</div>		

<div class="popupWrapper popupwrapperSmall" id="recordsPerPagePopUp" style="display:none;">
    <%@ include file="recordsPerPageOption.jspf" %>
</div>  

<div class="popupWrapper" id="reportsPopup" style="display:none;">
	<%@ include file="reportsPopup.jspf" %>
</div>		

<div class="popupWrapper popupwrapperSmall" id="newReportQueryPopup">
	<%@ include file="newReportQuery.jspf" %>
</div>

<div class="popupWrapper alertConfPopup" id="alertPopup">
	<%@ include file="alertPopup.jspf" %>
</div>

<div class="errorMessageDiv notifDiv" id="innerNotifDiv">
	<div class="posRel">
		<div class="successMessageDiv">Mesaage will come here</div>
	   <a href="" class="closeLoginError closeInnerNotif">
			<img src="resources/images/closeloginerror.png"/>
		</a>
	</div>
</div>
    	</div>
    	<div id="contentWrapper" class="contentWrapper">
    		<div id="recordsWrapper" class="recordsWrapper">
				 <div class="recordCategoryListWrapper">
	<div class="tabListWrapper">
		<ul class="tabList">
			<li id="masterData" class="masterDataTab mainTab" style="display: ${UI_CONFIGURATION['VIEW_TAB_MASTER_DATA']}">
				<a href="/master-data" class="fleft">Master Data</a>
				<a href="JavaScript:popupWindow('/master-data')" class="popchecked fright"><img src="resources/images/popchecked.png"></a>
				<a href="" class="removeTabLink fright"><img src="resources/images/removetablink.png"></a>
			</li>
			<li id="pricingTypesAndSequences" class="pricingTypeTab mainTab" style="display: ${UI_CONFIGURATION['VIEW_TAB_PRICING_TYPES_N_SEQ']}">
				<a href="/pricing-type" class="fleft">Pricing Types &amp; Sequences</a>
				<a href="JavaScript:popupWindow('/pricing-type')" class="popchecked fright"><img src="resources/images/popchecked.png"></a>
				<a href="" class="removeTabLink fright"><img src="resources/images/removetablink.png"></a>
			</li>
			<li id="groupComboAndAttributes" class="groupComboTab mainTab" style="display: ${UI_CONFIGURATION['VIEW_TAB_GROUP_COMBO']}">
				<a href="/group-combo" class="fleft">Group Combo &amp; Attributes</a>
				<a href="JavaScript:popupWindow('/group-combo')" class="popchecked fright"><img src="resources/images/popchecked.png"></a>
				<a href="" class="removeTabLink fright"><img src="resources/images/removetablink.png"></a>
			</li>
			<li id="testing" class="testingTab mainTab" style="display: ${UI_CONFIGURATION['VIEW_TAB_TESTING']}">
				<a href="/testing" class="fleft">Testing</a>
				<a href="JavaScript:popupWindow('/testing')" class="popchecked fright"><img src="resources/images/popchecked.png"></a>
				<a href="" class="removeTabLink fright"><img src="resources/images/removetablink.png"></a>
			</li>
		</ul>
	</div>
	<div class="tabsBottomDiv">
	</div>
</div>
				 <jsp:invoke fragment="tabData"/>
			</div>
			<div class="hierarchyWrapper" style="display: ${UI_CONFIGURATION['VIEW_TAB_HIERARCHIES']}">
	<div class="recordCategoryListWrapper">
		<div class="tabListWrapper">
			<ul class="tabList">
				<li class="active hierarchyTab" id="hierarchy">
					<a href="" class="fleft">Hierarchies</a>
					<a href="" class="removeTabLink fright"><img src="resources/images/removetablink.png"></a>
				</li>
			</ul>
		</div>
		<div class="tabsBottomDiv">
		</div>
	</div>
	<div class="contentRecordsTableContainer">
		<div class="hierarchySettingsDiv">
			<ul class="hierarchySettingList">
				<li>
					<a href=""><img src="resources/images/add-child.png" title="Add Child" class="addChildInHierachlyLink" id="add-Child"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/add-siblings.png" title="Add Siblings" class="addSiblingInHierarchyLink"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/edit-node.png" title="Edit" class="editNodeInHierarchyLink" id="editHierarchy"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/delete-node.png" title="Delete" id="deleteNode" class="deleteHierarchyLink"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/cut-node.png" title="Cut" id='cutNode' onclick="return false"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/copy-node.png" title="Copy" id='copyNode' onclick="return false"/></a>
				</li>
				<li>
					<a href=""><img src="resources/images/paste-node.png" title="Paste" id='pasteNode'/></a>
				</li>
			</ul>
		</div>
		<div class="hierarchyContainer" id="organizationContainer">
			<div class="hierarachy-Div recordTableWrapper" id="organizationHierarchy">
			${orgHirachy}
			</div>
		</div>
		<div class="hierarchyContainer" id="productContainer">
			<div class="hierarachy-Div recordTableWrapper" id="productHierarchy">${productHir}
			</div>
		</div>
	</div>
</div>
<div class="cboth"></div>
<!-- Add Child/Siblings in Hierarchy -->
<div class="popupWrapper" id="addChildInHierarchyPopup" style="display:none">
	<div class="popupHeading">
	<h2 class="fleft">
		Add Child for <span class="childTo"></span>
	</h2>
	<a href="" class="closeButton fright"><img src="resources/images/removetablink.png" alt="close"></a>
	<div class="cboth"></div>
</div>
<div class="popupSubHeadingDiv createProduct">
	<h1 class="heading">Add Child</h1>
	<div>
		Add a new org Child for <span class="childTo"></span>
	</div>
</div>
<div class="popupContentWrapper" id="addChild">
	<form id="addChildGroup">
		<div class="chooseColoumnsWrapper">
			<div class="fieldDiv popUpFormSectionWrapper">
				<table class="formSection" cellpadding="0" cellspacing="0">
					<tr>
						<td class="col1">Unique ID:<span class="mandatorySign">*</span> </td>
						<td class="col2">
							<input type="text" class="inputText unid mandatory" title="Enter Text" id="unid"/>
							<span class="validationMsg"><br/>Please enter a valid unid.</span>
						</td>
						<td class="col3">
							
						</td>
					</tr>
					<tr>
						<td class="col1">Group Name:<span class="mandatorySign">*</span> </td>
						<td class="col2">
							<input type="text" class="inputText groupname mandatory" title="Enter Text" id="groupName"/>
							<span class="validationMsg"><br/>Please enter a valid group name.</span>
						</td>
						<td class="col3">
							
						</td>
					</tr>
					<tr>
						<td class="col1">Effectively Dates:<span class="mandatorySign">*</span> </td>
						<td class="col2">
							<input type="text" class="inputText datepickerInput startDate mandatory" id="startDate" readonly value="${CONFIGURATION['EFF_DATE_FROM']}"/>
							<span class="toDateSpan">to</span>
							<input type="text" class="inputText datepickerInput endDate mandatory" id="endDate" readonly value="${CONFIGURATION['EFF_DATE_TO']}"/>
							<span class="validationMsg"><br/>Please enter valid effective dates.</span>
						</td>
						<td class="col3">

						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="submitDiv tCenter">
			<input type="button" value="Add" class="submit_btn border-rad" id="addChildHir"/>
			<input type="button" value="Cancel" class="submit_btn cancel_btn border-rad"/>
		</div>
	</form>
</div>

<script type="text/javascript">
	$('.datepickerInput').datepicker({
				dateFormat: "mm/dd/yy",
				showOn: "button",
				buttonImage: "resources/images/calendar-bg.png",
				buttonImageOnly: true
		});
	
</script>
</div>
<div class="popupWrapper" id="choosePasteOption" style="display:none">
    <%@ include file="chooseHierarchyAddOption.jspf" %>
</div>
<div class="popupWrapper" id="addSiblingInHierarchyPopup" style="display:none">
	<%@ include file="addSiblingInHierarchy.jspf" %>
</div>

<div class="popupWrapper" id="editNodeInHierarchyPopup" style="display:none">
	<%@ include file="editNodeInHierarchy.jspf" %>
</div>

<div class="popupWrapper" id="deleteNodeInHierarchyPopup" style="display:none">
	<%@ include file="deleteNodeInHierarchy.jspf" %>
</div>
    	</div>
    	<jsp:invoke fragment="footer"/>
    </div>
  </body>
  <script type="text/javascript">
  	var targetPage = "${targetPage}";
  	$("#" + targetPage).addClass("active");
  </script>
</html>