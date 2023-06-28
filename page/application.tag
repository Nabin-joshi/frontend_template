<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="tabs" fragment="true" %>
<%@attribute name="tabData" fragment="true" %>
<%@attribute name="hierarchy" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
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
    	      <jsp:invoke fragment="header"/>
    	</div>
    	<div id="contentWrapper" class="contentWrapper">
    		<div id="recordsWrapper" class="recordsWrapper">
				 <jsp:invoke fragment="tabs"/>
				 <jsp:invoke fragment="tabData"/>
			</div>
			 <jsp:invoke fragment="hierarchy"/>
    	</div>
    	<jsp:invoke fragment="footer"/>
    </div>
  </body>
  <script type="text/javascript">
  	var targetPage = "${targetPage}";
  	$("#" + targetPage).addClass("active");
  </script>
</html>