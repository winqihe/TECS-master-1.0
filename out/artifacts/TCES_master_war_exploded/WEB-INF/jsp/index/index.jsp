<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="名榜,wangid">
    <title>首页</title>

    <link rel="stylesheet" href="css/style.css">
    <style>
		.scroll-bar {
		    height: 40px;
		    width:100%;
		    line-height: 40px;
		    font-size: 40px;
			color:#fff;
		}
		#marquee{
			margin: 0;
			padding: 0;
		}
		#marquee li{
			width:100%;
		}

	</style>


        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/Tdrag.min.js"></script>

</head>

<body>

	<div class="bg_box" style="background: url(images/bg_default.jpg) no-repeat center center; background-size: cover;"></div>
	<div class="container">

	    <div class="content_box">

	    	<div class="right_box">
	    		<div class="icon_box" >

						<section class="scroll-bar" id="scrollText">
   						 <ul id="marquee">
       						 <li>欢迎来到河南工学院计算机科学与技术学院教师综合评价系统！</li>
   						 </ul>
						</section>


					<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
					<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
					<script>
					$(function(){
						$("#marquee").marquee({
							duration: 15000,//时间
							gap: 400,//间距
							delayBeforeStart: 0,//开始滚动延迟时间
							direction: 'left',//滚动方向
							duplicated: true,//是否循环播放
						});
					})
					</script>
	    		</div>

	    		<div class="info_box">
	    			<div class="box battle">
	    				<div class="tit">
	    <div class="scrollnews">
	    	   					<span>最新发言：</span>
	    	   					<ul>
	    	   						<li >
	    	   							<b>（朱命冬）</b>朱命冬老师厉害厉害真厉害！<i></i>
	    	   						</li>
	    	   						<li >
	    	   							<b>（户庆凯）</b>户老师讲得很清楚，棒棒的！<i></i>
	    	   						</li>
	    	   						<li >
	    	   							<b>（李敬伟）</b>我最喜欢李敬伟老师的课。<i></i>
	    	   						</li>
	    	   					</ul>
	    	   					<script type="text/javascript">
	    	   						$(document).ready(function(){
					                    //滚动文字
					                    function runtxt(){
					                        $(".scrollnews ul").animate({marginTop:"-54px"},300,
					                            function(){
					                                $(".scrollnews ul li:last").after($(".scrollnews ul li:first"))
					                                $(".scrollnews ul").css("margin-top",0)
					                            }
					                        )
					                    }
					                    $(".scrollnews ul li a").mouseenter(
					                        function(){
					                            clearInterval(timer)
					                        }
					                    )
					                    $(".scrollnews ul li a").mouseleave(
					                        function(){
					                            timer=setInterval(runtxt,4000)
					                        }
					                    )
					                    timer=setInterval(runtxt,2000)
					                })
	    	   					</script>
	    	   				</div>
	    				</div>
	    				<div class="conbox">
	    					<div class="con">
	    						<h1>2020-2021学年第一学期最受欢迎教师展示图</h1>
	    						<div class="countbox">
	    							<div class="count">
	    								<span class="x"><img src="images/X.png"> x/教师</span>
	    								<span class="y"><img src="images/Y.png"> y/分数</span>
	    								<ul>
	    									<li class="y1" style="height: calc(2% * 2); background: #ff4e00;"></li>
	    									<li class="y2" style="height: calc(3% * 2); background: #ffa200;"></li>
	    									<li class="y3" style="height: calc(7% * 2); background: #fffc00;"></li>
	    									<li class="y6" style="height: calc(5% * 2); background: #00ff55;"></li>
	    									<li class="y8" style="height: calc(3% * 2); background: #00ffd5;"></li>
	    									<li class="y10" style="height: calc(8% * 2); background: #00c0ff;"></li>
	    									<li class="y11" style="height: calc(4% * 2); background: #0078ff;"></li>
	    									<li class="y12" style="height: calc(6% * 2); background: #4200ff;"></li>
	    									<li class="y13" style="height: calc(14% * 2); background: #fc00ff;"></li>
	    									<li class="y16" style="height: calc(8% * 2); background: #ff007e;"></li>
	    									<li class="y18 on" style="height: calc(40% * 2); background: #ff0000;">
	    								 		<img src="images/flag.png" />
	    								 	</li>
	    								</ul>
	    							</div>
	    							<div class="num">
	    								<a>tom</a>
	    								<a>户庆凯</a>
	    								<a>王镇威</a>
	    								<a>徐晶晶</a>
	    								<a>庞笑笑</a>
	    								<a>安德宇</a>
	    								<a>常万军</a>
	    								<a>葛洪芳</a>
	    								<a>孙新领</a>
	    								<a>张皓</a>
	    								<a>谌湘倩</a>
	    							</div>
	    						</div>
	    					</div>
	    					<div class="con">
	    						<h1>2018-2019学年第一学期最佳教师度展示图</h1>
	    						<div class="countbox">
	    							<div class="count">
	    								<span class="x"><img src="images/X.png"> x/教师</span>
	    								<span class="y"><img src="images/Y.png"> y/分数</span>
	    								<ul>
	    									<li class="y1" style="height: calc(40% * 2); background: #ff4e00;"></li>
	    									<li class="y2 on" style="height: calc(60% * 2); background: #ffa200;">
	    								 		<img src="images/flag.png" />
	    								 	</li>
	    								 	<li class="y3" style="height: calc(7% * 2); background: #fffc00;"></li>
	    									<li class="y6" style="height: calc(5% * 2); background: #00ff55;"></li>
	    									<li class="y8" style="height: calc(3% * 2); background: #00ffd5;"></li>
	    								 	<li class="y10" style="height: calc(8% * 2); background: #00c0ff;"></li>
	    									<li class="y11" style="height: calc(4% * 2); background: #0078ff;"></li>
	    									<li class="y12" style="height: calc(6% * 2); background: #4200ff;"></li>
	    									<li class="y13" style="height: calc(14% * 2); background: #fc00ff;"></li>
	    									<li class="y16" style="height: calc(8% * 2); background: #ff007e;"></li>
	    								</ul>
	    							</div>
	    							<div class="num">
	    								<a>户庆凯</a>
	    								<a>王镇威</a>
										<a>庞笑笑</a>
										<a>安德宇</a>
										<a>常万军</a>
										<a>葛洪芳</a>
										<a>孙新领</a>
										<a>张皓</a>
										<a>谌湘倩</a>
	    								<a>tom</a>
	    							</div>
	    						</div>
	    					</div>
	    				</div>
    					<script type="text/javascript">
    						$(function(){
    							var n=0;
    							$(".right_box .info_box .battle .tit a").mouseover(
    								function(){
    									n=$(this).index();
    									$(this).addClass("on")
    									$(this).siblings().removeClass("on")
    									$(".right_box .info_box .battle .con").hide().eq(n).fadeIn()
    								}
    							)
    						})
    					</script>
	    			</div>
	    			<div class="box honor">
	    				<div class="tit">
	    					<a class="on">本学年最受欢迎教师</a><a>本学年最佳教师</a>
								<div></div>
	    				</div>
	    				<div class="conbox">
	    					<div class="con">
	    						<div>
		    						<ul>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>谌湘倩</dt>
		    									<dd>学院：计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_1.png"></b>
		    							</li>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>户庆凯</dt>
		    									<dd>学院:计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_2.png"></b>
		    							</li>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>庞笑笑</dt>
		    									<dd>学院：计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_3.png"></b>
		    							</li>
		    						</ul>
		    						<dl>
		    							<dt>去年前三名</dt>
		    							<dd>户庆凯</dd>
		    							<dd>王镇威</dd>
		    							<dd>葛洪芳</dd>
		    						</dl>
		    					</div>
		    					<p>计算机学院的老师们很给力，加油！</p>
	    					</div>
	    					<div class="con">
	    						<div>
		    						<ul>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>户庆凯</dt>
		    									<dd>学院：计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_1.png"></b>
		    							</li>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>王镇威</dt>
		    									<dd>学院：计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_2.png"></b>
		    							</li>
		    							<li>
		    								<i><img src="images/head.jpg"></i>
		    								<dl>
		    									<dt>葛洪芳</dt>
		    									<dd>学院：计算机学院</dd>
		    								</dl>
		    								<b><img src="images/honor_3.png"></b>
		    							</li>
		    						</ul>
		    						<dl>
		    							<dt>去年前三名</dt>
		    							<dd>户庆凯</dd>
		    							<dd>王镇威</dd>
		    							<dd>葛洪芳</dd>
		    						</dl>
		    					</div>
		    					<p>计算机学院的老师们很给力，加油！</p>
	    					</div>
	    				</div>
	    				<script type="text/javascript">
    						$(function(){
    							var n=0;
    							$(".right_box .info_box .honor .tit a").mouseover(
    								function(){
    									n=$(this).index();
    									$(this).addClass("on")
    									$(this).siblings().removeClass("on")
    									$(".right_box .info_box .honor .con").hide().eq(n).fadeIn()
    								}
    							)
    						})
    					</script>
	    			</div>
	    		</div>
	    	</div>
	    </div>
    </div>

</body>

</html>

-->




<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="renderer" content="webkit"/>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>首页</title>
	<link rel="stylesheet" href="css/index.css" />
	<style>
		table {
			width: 320px;
			border-collapse: separate;
			border-spacing: 0px 10px;
			border: 0;
			text-align: center;
			margin: auto;
		}

		td {
			text-align: center;
			font-size: 12px;
			color: #e8e8e8;
			border: 0;
		}

		th {
			text-align: center;
			color: #5f72bd;
			border: 0;
		}
	</style>
	<!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="./css/swiper-bundle.min.css">

	<!-- Demo styles -->
	<style>
		body {
			position: relative;
			height: 100%;
		}

		body {
			font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
			font-size: 14px;
			color: #fff;
			margin: 0;
			padding: 0;
		}

		.swiper-container {
			width: 90%;
			height: 85%;
		}

		.swiper-slide {
			text-align: center;
			font-size: 18px;
			/* Center slide text vertically */
			display: -webkit-box;
			display: -ms-flexbox;
			display: -webkit-flex;
			display: flex;
			-webkit-box-pack: center;
			-ms-flex-pack: center;
			-webkit-justify-content: center;
			justify-content: center;
			-webkit-box-align: center;
			-ms-flex-align: center;
			-webkit-align-items: center;
			align-items: center;
		}
	</style>
</head>

<body>
<!-- 头部 -->
<header>
	<h1>计算机科学与技术学院</h1>
	<div class="show-time"></div>
	<script>
		var t = null;
		t = setTimeout(time, 1000); //开始运行
		function time() {
			clearTimeout(t); //清除定时器
			dt = new Date();
			var y = dt.getFullYear();
			var mt = dt.getMonth() + 1;
			var day = dt.getDate();
			var h = dt.getHours(); //获取时
			var m = dt.getMinutes(); //获取分
			var s = dt.getSeconds(); //获取秒
			document.querySelector(".show-time").innerHTML =
					"时间：" +
					y +
					"/" +
					mt +
					"/" +
					day +
					"/" +
					h +
					":" +
					m +
					":" +
					s +
					"";
			t = setTimeout(time, 1000); //设定定时器，循环运行
		}
	</script>
</header>

<!-- 页面主体 -->
<section class="mainbox">
	<!-- 左侧盒子 -->
	<div class="column">
		<div class="panel pie">
			<h2>专本人数</h2>
			<div class="chart"></div>
			<div class="panel-footer"></div>
		</div>
		<div class="panel bar2" style="width: 350px; height: 230px;">
			<h2>各专业人数</h2>
			<div class="chart"></div>
			<div class="panel-footer"></div>
		</div>
	</div>
	<!-- 中间盒子 -->
	<div class="column">
		<!-- 头部 no模块 -->
		<div class="no">
			<div class="no-hd">
				<ul>
					<li>1940</li>
				</ul>
			</div>
			<div class="no-bd">
				<ul>
					<li style="color: #4facfe;">学生人数</li>
				</ul>
			</div>
		</div>
		<!-- map模块 -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="./images/img7.jpg" alt="" width="465px" height="355px">
				</div>
				<div class="swiper-slide">
					<img src="./images/img.jpg" alt="" width="510px" height="400px">
				</div>
				<div class="swiper-slide">
					<img src="./images/img3.jpg" alt="" width="510px" height="400px">
				</div>
				<div class="swiper-slide">
					<img src="./images/img4.jpg" alt="" width="510px" height="400px">
				</div>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
		</div>
	</div>
	<!-- 右侧盒子 -->
	<div class="column">
		<div class="panel bar">
			<h2>学院信息</h2>
			<!-- 伪元素绘制盒子下边角 -->
			<div class="table">
				<table border="1">
					<th>姓名</th>
					<th>学号</th>
					<th>专业</th>
					<th>入校时间</th>
					<tr>
						<td>keyte</td>
						<td>2011241303</td>
						<td>数据科学</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>贺文奇</td>
						<td>1907381113</td>
						<td>数据科学</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>wenqi</td>
						<td>1907381113</td>
						<td>数据科学</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>wenqihe</td>
						<td>2020201022</td>
						<td>软件工程</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>hewenqi</td>
						<td>2020201022</td>
						<td>物联网工程</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>Lili</td>
						<td>2011241303</td>
						<td>数字媒体技术</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>coco</td>
						<td>2011241303</td>
						<td>软件工程</td>
						<td>2020-10-12</td>
					</tr>
					<tr>
						<td>jack</td>
						<td>2020201022</td>
						<td>物联网工程</td>
						<td>2020-10-12</td>
					</tr>
				</table>
			</div>
			<div class="panel-footer"></div>
		</div>
		<div class="panel pie2" style="width: 350px;height: 230px;">
			<h2>专业人数占比</h2>
			<div class="chart"></div>
			<div class="panel-footer"></div>
		</div>
	</div>
</section>
<script type="text/javascript" charset="UTF-8" src="./js/swiper-bundle.min.js"></script>
<script type="text/javascript" charset="UTF-8" src="./js/flexible.js"></script>
<script type="text/javascript" charset="UTF-8" src="./js/echarts.min.js"></script>
<script type="text/javascript" charset="UTF-8"src="./js/jquery.js"></script>
<script type="text/javascript" charset="UTF-8" src="./js/china.js"></script>
<script type="text/javascript" charset="UTF-8" src="./js/index.js"></script>
<script>
	const swiper = new Swiper('.swiper-container', {
		pagination: {
			el: '.swiper-pagination',
		},
		loop: true,
		autoplay: true,
	});
</script>
</body>
</html>