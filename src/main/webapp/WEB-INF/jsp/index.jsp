<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${ctx}/static/bootstrap/css/bootstrap.min.css?${version_css}" type="text/css" rel="stylesheet" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" type="image/x-icon" href="${ctx}/static/images/favicon.ico">
<link rel="shortcut icon" type="image/x-icon" href="${ctx}/static/images/favicon.ico">

<c:set var="version_css" value="20160909" scope="application"></c:set>
<c:set var="version_js" value="20160909" scope="application"></c:set>

<title>定时任务控制台</title>

<!-- Bootstrap core CSS -->
<link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${ctx}/static/css/grid.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${ctx}/static/js/ie10-viewport-bug-workaround.js"></script>
</head>

<body>
	<div class="container">

		<div class="page-header">
			<h1>Bootstrap grid examples</h1>
			<p class="lead">Basic grid layouts to get you familiar with building within the Bootstrap grid system.</p>
		</div>

		<h3>Five grid tiers</h3>
		<p>There are five tiers to the Bootstrap grid system, one for each range of devices we support. Each tier starts at a minimum viewport size and automatically applies to the larger devices unless overridden.</p>

		<div class="row">
			<div class="col-xs-4">.col-xs-4</div>
			<div class="col-xs-4">.col-xs-4</div>
			<div class="col-xs-4">.col-xs-4</div>
		</div>

		<div class="row">
			<div class="col-sm-4">.col-sm-4</div>
			<div class="col-sm-4">.col-sm-4</div>
			<div class="col-sm-4">.col-sm-4</div>
		</div>

		<div class="row">
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
		</div>

		<div class="row">
			<div class="col-lg-4">.col-lg-4</div>
			<div class="col-lg-4">.col-lg-4</div>
			<div class="col-lg-4">.col-lg-4</div>
		</div>

		<div class="row">
			<div class="col-xl-4">.col-xl-4</div>
			<div class="col-xl-4">.col-xl-4</div>
			<div class="col-xl-4">.col-xl-4</div>
		</div>

		<h3>Three equal columns</h3>
		<p>
			Get three equal-width columns <strong>starting at desktops and scaling to large desktops</strong>. On mobile devices, tablets and below, the columns will automatically stack.
		</p>
		<div class="row">
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
			<div class="col-md-4">.col-md-4</div>
		</div>

		<h3>Three unequal columns</h3>
		<p>
			Get three columns <strong>starting at desktops and scaling to large desktops</strong> of various widths. Remember, grid columns should add up to twelve for a single horizontal block. More than that, and columns start stacking no matter the viewport.
		</p>
		<div class="row">
			<div class="col-md-3">.col-md-3</div>
			<div class="col-md-6">.col-md-6</div>
			<div class="col-md-3">.col-md-3</div>
		</div>

		<h3>Two columns</h3>
		<p>
			Get two columns <strong>starting at desktops and scaling to large desktops</strong>.
		</p>
		<div class="row">
			<div class="col-md-8">.col-md-8</div>
			<div class="col-md-4">.col-md-4</div>
		</div>

		<h3>Full width, single column</h3>
		<p class="text-warning">No grid classes are necessary for full-width elements.</p>

		<hr>

		<h3>Two columns with two nested columns</h3>
		<p>
			Per the documentation, nesting is easy—just put a row of columns within an existing column. This gives you two columns <strong>starting at desktops and scaling to large desktops</strong>, with another two (equal widths) within the larger column.
		</p>
		<p>At mobile device sizes, tablets and down, these columns and their nested columns will stack.</p>
		<div class="row">
			<div class="col-md-8">
				.col-md-8
				<div class="row">
					<div class="col-md-6">.col-md-6</div>
					<div class="col-md-6">.col-md-6</div>
				</div>
			</div>
			<div class="col-md-4">.col-md-4</div>
		</div>

		<hr>

		<h3>Mixed: mobile and desktop</h3>
		<p>The Bootstrap 3 grid system has four tiers of classes: xs (phones), sm (tablets), md (desktops), and lg (larger desktops). You can use nearly any combination of these classes to create more dynamic and flexible layouts.</p>
		<p>Each tier of classes scales up, meaning if you plan on setting the same widths for xs and sm, you only need to specify xs.</p>
		<div class="row">
			<div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
			<div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
		</div>
		<div class="row">
			<div class="col-xs-6">.col-xs-6</div>
			<div class="col-xs-6">.col-xs-6</div>
		</div>

		<hr>

		<h3>Mixed: mobile, tablet, and desktop</h3>
		<p></p>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-lg-8">.col-xs-12 .col-sm-6 .col-lg-8</div>
			<div class="col-xs-6 col-lg-4">.col-xs-6 .col-lg-4</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
			<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
			<div class="col-xs-6 col-sm-4">.col-xs-6 .col-sm-4</div>
		</div>

		<hr>

		<h3>Column clearing</h3>
		<p>
			<a href="http://getbootstrap.com/css/#grid-responsive-resets">Clear floats</a> at specific breakpoints to prevent awkward wrapping with uneven content.
		</p>
		<div class="row">
			<div class="col-xs-6 col-sm-3">
				.col-xs-6 .col-sm-3 <br> Resize your viewport or check it out on your phone for an example.
			</div>
			<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>

			<!-- Add the extra clearfix for only the required viewport -->
			<div class="clearfix visible-xs"></div>

			<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
			<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
		</div>

		<hr>

		<h3>Offset, push, and pull resets</h3>
		<p>Reset offsets, pushes, and pulls at specific breakpoints.</p>
		<div class="row">
			<div class="col-sm-5 col-md-6">.col-sm-5 .col-md-6</div>
			<div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0">.col-sm-5 .col-sm-offset-2 .col-md-6 .col-md-offset-0</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-5 col-lg-6">.col-sm-6 .col-md-5 .col-lg-6</div>
			<div class="col-sm-6 col-md-5 col-md-offset-2 col-lg-6 col-lg-offset-0">.col-sm-6 .col-md-5 .col-md-offset-2 .col-lg-6 .col-lg-offset-0</div>
		</div>


	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->


</body>
</html>