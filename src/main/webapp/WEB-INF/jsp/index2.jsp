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

<c:set var="version_css" value="20160909" scope="application"></c:set>
<c:set var="version_js" value="20160909" scope="application"></c:set>

<title>定时任务控制台</title>

<link href="${ctx}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/static/bootstrap/css/dashboard.css" rel="stylesheet">

<script src="${ctx}/static/bootstrap/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<div class="navbar navbar-inverse navbar-static-top">
		<div class="container-fluid">
			<a href="#" class="navbar-brand">定时任务控制台</a>
		</div>
	</div>


	<div class="album text-muted">
		<div class="container">
			<div class="row">
				<form class="form-inline" role="form">
					<div class="form-group">
						<label class="sr-only" for="exampleInputEmail2">Trigger 名称</label> <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Trigger 名称">
					</div>
					<div class="form-group">
						<label class="sr-only" for="exampleInputEmail2">Trigger 分组</label> <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Trigger 分组">
					</div>
					<button type="submit" class="btn btn-info">查询</button>
					<button type="submit" class="btn btn-success">新增</button>
				</form>
			</div>
			<br />
			<div class="row">
				<table class="table table-condensed table-bordered">
					<thead>
						<tr class="success">
							<th>Trigger 名称</th>
							<th>Trigger 分组</th>
							<th>下次执行时间</th>
							<th>上次执行时间</th>
							<th>优先级</th>
							<th>Trigger 状态</th>
							<th>Trigger 类型</th>
							<th>开始时间</th>
							<th>结束时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${list }">
							<tr>
								<td>${t.display_name}</td>
								<td>${t.trigger_group}</td>
								<td>${t.next_fire_time}</td>
								<td>${t.prev_fire_time}</td>
								<td>${t.priority}</td>
								<td>${t.statu}</td>
								<td>${t.trigger_type}</td>
								<td>${t.start_time}</td>
								<td>${t.end_time}</td>
								<td>
									<button type="button" class="btn btn-info btn-xs" id="pause" onclick="doCmd('pause','${t.trigger_name}','${t.trigger_group}','${t.trigger_state}')">暂停</button>
									<button type="button" class="btn btn-info btn-xs" id="resume" onclick="doCmd('resume','${t.trigger_name}','${t.trigger_group}','${t.trigger_state}')">恢复</button>
									<button type="button" class="btn btn-info btn-xs" id="remove" onclick="doCmd('remove','${t.trigger_name}','${t.trigger_group}','${t.trigger_state}')">删除</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<footer class="text-muted">
	<div class="container">
		<p class="pull-right">
			<a href="#">回到顶部</a>
		</p>
		<p>
			&copy; <a href="https://github.com/wangxinforme">Vincent Github</a> , Inc.
		</p>
	</div>
	</footer>

	<script src="${ctx}/static/js/jquery-3.1.0.min.js"></script>
	<script src="${ctx}/static/js/holder.min.js"></script>
	<script>
    $(function() {
      Holder.addTheme("thumb", {
        background: "#55595c",
        foreground: "#eceeef",
        text: "Thumbnail"
      });
    });
  </script>
	<script src="${ctx}/static/js/bootstrap.min.js"></script>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${ctx}/static/js/jquery-3.1.0.min.js"></script>
	<script src="${ctx}/static/bootstrap/js/bootstrap.min.js"></script>
	<script src="${ctx}/static/bootstrap/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${ctx}/static/bootstrap/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
