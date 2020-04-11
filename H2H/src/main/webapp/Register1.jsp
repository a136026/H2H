<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!doctype html>
<html>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
<script src="../js/bootstrap.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="../css/buttons.css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/backgroundShow.js"></script>
<script>
	      		function login(){
	      			
	      			var account=document.getElementById("useraccount").value;
	      			var pd=document.getElementById("userpassword").value;
	      			loginurl = "login?useraccount="+account+"&userpassword="+pd;
	      			if(account==""){
	      				alert("please input useraccount");
	      			}
	      			else{
	      				if(pd==""){
		      				alert("please input password");
	      				}
	      				else{
	      					
	    	      			document.getElementById("log").submit();
	    	      		}
	      			}			
	      		}


	      		function forgetpd(){
                    var xhttp;
                    if (window.XMLHttpRequest) {
                        xhttp = new XMLHttpRequest();
                    } else {
                        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    var st=document.getElementById("email").value;
                    xhttp.open("post","/login/getMailCode?account="+st,false);
                    xhttp.send();
                    alert(xhttp.responseText);
	      		}

		  </script>

<style type="text/css">
.d1 {
	width: 100%;
	height: 100%;
	display: block;
	position: absolute;
	left: 0px;
	top: 0px;
}

.bg {
	width: 300px;
	height: 500px;
	background: inherit;
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	margin: auto;
}

.bg:after {
	content: "";
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	background: inherit;
	filter: blur(15px) opacity(97%);
	z-index: 11;
}

.mydiv {
	border-radius: 8px;
	background-color: rgba(200, 200, 200, 0.13);
	width: 300px;
	height: 500px;
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	right: 0;
	margin: auto;
	z-index: 99;
}

.myinput {
	font-weight: bold;
	background-color: rgba(200, 200, 200, 0);
	border-style: solid;
	border-width: 2px;
	border-color: rgba(0, 0, 0, 0.8);
	border-radius: 4px;
	width: 210px;
	height: 25px;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.4) inset;
	position: relative;
	left: 40px;
}

.myp {
	color: #000000;
	line-height: 5px;
	font-size: 20px;
	font-weight: 800;
	position: relative;
	left: 40px;
}

.myh1 {
	font-weight: bold;
	font-family: Microsoft YaHei;
	position: relative;
	left: 40px;
	bottom: 20px;
}
</style>
</head>

<body>

	<!-- 登录窗口      -->
	<div class="mydiv">
		<img src="../images"
			style="width: 30%; height: 10%; position: relative; left: 200px; top: -5px;" />
		<div id="topbar"></div>
		<div id="middlecontainer" style="position: relative; top: -20px;">
			<div id="login">
				<div id="container1" >
					<br />
					<h1 class="myh1">注 册</h1>
				</div>

				<div id="container2" style="position: relative; top: -5px;">
					<form id="form" action="/login/registerService" method="post">
						<div id="container2-1">
							<p class="myp">学  号:</p>
						</div>
						<div id="container2-2">
							<input name="user.num" maxlength="14"
								type="text" class="myinput">
						</div>
						<div id="container2-1">
							<p class="myp" style="position: relative; top: 10px;">昵 称:</p>
						</div>
						<div id="container2-2"style="position: relative; top: 10px;">
							<input name="user.name" maxlength="14"
								type="text" class="myinput">
						</div>
						<div id="container2-3">
							<p class="myp" style="position: relative; top: 20px;">密   码:</p>
						</div>
						<div id="container2-4">
							<input name="user.password" maxlength="14"
								type="password" class="myinput"
								style="position: relative; top: 20px;">
						</div>
												<div id="container2-3">
							<p class="myp" style="position: relative; top: 30px;">重 复 密 码:</p>
						</div>
												<div id="container2-4">
							<input name="userpassword2" value="" maxlength="14"
								type="password" class="myinput"
								style="position: relative; top: 30px;">
						</div>
						
						<div id="container2-3">
							<p class="myp" style="position: relative; top: 40px;">电 子 邮 箱:</p>
						</div>
					 	
						
						<div id="container2-4">
							<input id="email" name="user.email" maxlength="20"
								type="text" class="myinput"
								style="position: relative; top: 40px;">
							<a id="mailText" style="color : #2F4F4F; position: relative; right: 45px; top: 65px; font-weight: bold; font-size: 12px;"
						onClick="forgetpd()" >发送邮件验证码</a>
						<p class="myp" style="position: relative; top: 60px;">验 证 码:</p>
							<input id="mailbox" name="mailbox" value="" maxlength="14"
								type="text" class="myinput"
								style="position: relative; top: 60px;">
						</div>
				

					</div>
					<div id="container3"
						style="position: relative; left: 52px; top: 40px;">
						<button style="padding: 0.7em 2em;"
							class="button button--round-s button--wayra button--border-medium button--text-thick button--size-l"
							type="submit">立即注册</button>
					</div>
				</form>
			</div>
		</div>
		<div id="bottombar"></div>
	</div>

	<!--  背景     -->
	<div id="banner"
		style="width: 100%; height: 100%; margin: 0; padding: 0;">
		<div class="d1"
			style="background-image: url(../images/help1.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
		<div class="d1"
			style="background-image: url(../images/help2.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
		<div class="d1"
			style="background-image: url(../images/help3.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
		<div class="d1"
			style="background-image: url(../images/help4.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
				<div class="d1"
			style="background-image: url(../images/help5.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
		<div class="d1"
			style="background-image: url(../images/help6.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
			<div class="bg"></div>
		</div>
	</div>
	<script type="text/javascript">banner()</script>
</body>
</html>
