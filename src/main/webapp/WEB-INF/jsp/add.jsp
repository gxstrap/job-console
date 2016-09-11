<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>定时任务控制台</title>

<link href="${ctx}/static/bootstrap/css/bootstrap.css?${version_css}" rel="stylesheet">
<link href="${ctx}/static/bootstrap/css/dashboard.css?${version_css}" rel="stylesheet">
<link href="${ctx}/static/jquery/ui/jquery-ui.min.css?${version_css}" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/jquery/ui/jquery-ui-timepicker-addon.css?${version_css}" rel="stylesheet">

<script src="${ctx}/static/bootstrap/js/ie-emulation-modes-warning.js?${version_js}"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">定时任务系统</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">定时任务系统</a>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2 col-md-1 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="${ctx }/index">控制台</a></li>
					<li class="active"><a href="${ctx }/add">新增</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-11 col-md-offset-1 main">
				<div class="row">
					<div class="col-md-8">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="triggerName" class="col-sm-2 control-label">Trigger名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="triggerName" name="triggerName" placeholder="必填">
								</div>
							</div>
							<div class="form-group">
								<label for="triggerGroup" class="col-sm-2 control-label">Trigger分组</label>
								<div class="col-sm-10">
									<select class="form-control" id="triggerGroup" name="triggerGroup">
										<option value="DEFAULT">default</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="startTime" class="col-sm-2 control-label">开始时间</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="startTime" name="startTime" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label for="endTime" class="col-sm-2 control-label">结束时间</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="endTime" name="endTime" readonly="readonly">
								</div>
								<!-- 								<p class="help-block">Example block-level help text here.</p> -->
							</div>
							<div class="form-group">
								<label for="repeatCount" class="col-sm-2 control-label">执行次数</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="repeatCount" name="repeatCount" placeholder="表示Trigger启动后执行多少次结束，不填写执行一次">
								</div>
							</div>
							<div class="form-group">
								<label for="repeatInterval" class="col-sm-2 control-label">执行间隔</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="repeatInterval" name="repeatInterval" placeholder="表示Trigger间隔多长时间执行一次，不填写前后两次执行没有时间间隔，直到任务结束">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-info">添加</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${ctx}/static/jquery/jquery-3.1.0.min.js?${version_js}"></script>
	<script src="${ctx}/static/jquery/ui/jquery-ui.min.js?${version_js}"></script>
	<script src="${ctx}/static/jquery/ui/jquery-ui-timepicker-addon.js?${version_js}"></script>

	<script src="${ctx}/static/bootstrap/js/bootstrap.min.js?${version_js}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${ctx}/static/bootstrap/js/ie10-viewport-bug-workaround.js?${version_js}"></script>
	<script type="text/javascript">
    var _ctx = "${ctx}";
    var currentPage = "add";
  </script>
	<script src="${ctx}/static/js/job.js?${version_js}"></script>


</body>
</html>
