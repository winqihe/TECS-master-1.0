<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生——评教目录</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/children.css">

    <!-- 在线图标库 地址：http://fontawesome.dashgame.com/-->
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- layui css -->
	<link rel="stylesheet" href="layui/css/layui.css">
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	
</head>

<body class="layui-layout-body control_box">
	<!-- 背景 -->
	<div class="bg_box" style="background: url(images/20190415.jpg) no-repeat center center; background-size: cover;"></div>
	<!-- content box-->
	<div class="layui-layout layui-layout-admin">
		<!-- top -->
		<div class="layui-header">
			<div class="top_box">
		        <div class="logo">
		        	<img src="">
		        	<span style="background-image:none"></span>
		        	<b></b>
		        </div>

				<div class="top_user">
					<span><img src="images/head.jpg" /></span>
					<dl>
						<dt>姓名：${user.student_name}</dt>
						<dd>级别：学生</dd>
					</dl>
				</div>

		        <div class="top_icon">
		        	<a href="${pageContext.request.contextPath}/ReturnStudentIndex" title="首页"><img src="images/top_home.png"></a>
		        	<a href="#" title="个人设置"><img src="images/top_person.png"></a>
		        	<a href="${pageContext.request.contextPath}/exit" title="退出"><img src="images/top_exit.png"></a>
		        </div>
		    </div>
		</div> 
	    <!-- side menu -->
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree"  lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed">
						<a  href="${pageContext.request.contextPath}/st_evaluate_list" target="main_self_frame"><i class="fa fa-clipboard fa-fw"></i>在线评教</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath}/show_st_score" target="main_self_frame"><i class="fa fa-shield fa-fw"></i>查看结果</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;"><i class="fa fa-user fa-fw"></i>个人信息</a>
						<dl class="layui-nav-child">
							<dd><a href="${pageContext.request.contextPath}/studentInformation_list" target="main_self_frame">查看个人信息</a></dd>
							<dd><a href="${pageContext.request.contextPath}/updatestudent_pwd" target="main_self_frame">修改密码</a></dd>
						</dl>
					</li>


				</ul>
			</div>
		</div>
	  
		<div class="layui-body">
			<!-- 展开收起按钮 -->
			<div class="open_shrink open" title="展开/收起">
				<span></span>
			</div>
			<script type="text/javascript">
				$(function(){
					$(".open_shrink").click(function(){
						if ($(this).hasClass("open")) {
							$(this).removeClass("open");
							$(".layui-side").stop().animate({left:-220},300);
							$(".layui-body").stop().animate({left:0},300);
						}else{
							$(this).addClass("open");
							$(".layui-side").stop().animate({left:0},300);
							$(".layui-body").stop().animate({left:220},300);
						}
					})
				})
			</script>
			<!-- iframe -->
			<iframe src="${pageContext.request.contextPath}/st_evaluate_list" name="main_self_frame" frameborder="0" class="layadmin-iframe" scrolling="yes"></iframe>
		</div>
	  
	</div>
	<!-- layui js -->
	<script src="layui/layui.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function(){
		  var element = layui.element;
		  
		});
		
	</script>

</body>

</html>

    