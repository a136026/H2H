<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<script src="../backSettings/js/jquery-1.8.3.min.js"></script>
<link href="../backSettings/filter/Fliter.css" rel="stylesheet" />
<link rel="stylesheet" href="../backSettings/css/bootstrap.min.css">
<script src="../backSettings/filter/Filter.js"></script>
<script src="../backSettings/js/bootstrap.min.js"></script>
<script src="../backSettings/js/CJL.0.1.min.js"></script>
<title>task manage</title>
</head>

<body style="margin-left:100px;margin-top:50px">
	<h1>任务管理</h1>
	
	<form class="navbar-form navbar-left" role="search" action = "/admin/taskSearch"  method="post">
	<div style="position: relative;top:20px">
	
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search" name = "search" >
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    	<select name="type" id="select" placeholder="任务类型" >
		<option value="已审核" selected="selected">已审核</option>
		<option value="未审核" selected="selected">未审核</option>
		<option value="全部" selected="selected"> 全部</option>
		</select>
	</div>
		</form>
	
<div class="table-responsive" style="position: absolute;margin-top:8%">
	<table class="table">
		<thead>
			<tr>
				<th>任务编号</th>
				<th>任务</th>
				<th>发布人</th>
				<th>通过</th>
				<th>不通过</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tasks}" var="task" varStatus="st">
			<tr>
				<td>${task.getStr("taskID")}</td>
				<td><a onClick="href='/admin/showTask?taskID=${task.getStr("taskID")}'">${task.getStr("title")}</a></td>
				<td>${task.getStr("publisherNum")}</td>
				<td>
					
						<a href="/admin/checkTask?taskid=${task.getStr("taskID")}" ><input type="submit"    name="pass" value="通过" > </a>
					
				</td>
				<td>
					
						<a href="/admin/checkTask_no?taskid=${task.getStr("taskID")}" ><input type="submit"    name="pass" value="不通过" > </a>
					
				</td>
				<td>
					
						<a href="/admin/taskDelete?taskid=${task.getStr("taskID")}" ><input type="submit" name="delete" value="删除"></a>
					
				</td>
			</tr>
			
			</c:forEach>
		</tbody>
</table>
</div>  	
</body>
<script>
var judge=${judge};
if(judge == 1){
	alert("该任务已被审核！");
}

</script>



</html>


