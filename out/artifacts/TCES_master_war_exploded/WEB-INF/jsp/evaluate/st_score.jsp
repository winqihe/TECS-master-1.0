<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="名榜,wangid">
    <title>教师综合评价系统</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/children.css">

    <!-- 在线图标库 地址：http://fontawesome.dashgame.com/-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- layui css -->
    <link rel="stylesheet" href="layui/css/layui.css">
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    
</head>

<body>
    <div class="wangid_conbox">

        <!-- 内容 -->    
        <div class="layui-row layui-col-space10">
		     <div class="layui-col-md12">
		    	<div class="layui-row grid-demo grid-demo-bg1">
		      		<div class="layui-col-md12 " style="text-align:center;font-size:25px;height:90px;line-height:90px;margin-top:15px;">
		        		<h3>学期：2018-2019第一学期</h3>
		      		</div>
		        		<div class="layui-col-md6" style="text-align:right;padding-right:50px;font-size:20px;height:50px;line-height:50px;">
		        		课程：<span id="course_name1">${teacher_course.course.course_name }</span>
		      			</div>
		      			<div class="layui-col-md6" style="text-align:left;padding-left:50px;font-size:20px;height:50px;line-height:50px;">
		        		教师：${teacher_course.teacher.teacher_name}
		      			</div>
		    	</div>
		  	</div>
		</div>
		<c:forEach items="${standards}" var="item" varStatus="status">
			<fieldset class="layui-elem-field layui-field-title"> 
   				<legend>${item.title_con}</legend>
			</fieldset>
			<div class="test1" style="padding-left:30px"></div>
			<input id="${status.index}" type="hidden" name="number" value="0" >
		</c:forEach>
		
		<div class="layui-row layui-col-space10">
			<div class="layui-col-md12">
				<button type="button" class="layui-btn layui-btn-lg" onclick="submit()"style="width:160px;margin-left:100px;">提交</button>
				<button type="button" class="layui-btn layui-btn-lg" style="width:160px;margin-left:100px;">重置</button>
			</div>
		</div>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
layui.use(['rate'], function(){
	  var rate = layui.rate;
	  var $ = layui.jquery;
	  layui.each($('.test1'),function (index,elem){
		  //自定义文本
		  rate.render({
			  elem: elem
			  ,value: 0
			  ,text: true
			  ,choose: function(value){
				  if(value==0){
					  $("#"+index).val(value);
				  }else{
					  $("#"+index).val(value*2);
				  }
			  }
			  ,setText: function(value){ //自定义文本的回调
				  var arrs = {
					      '0': '',  
					      '2': '极差',
					      '4': '差',
					      '6': '中等',
					      '8': '好',
					      '10': '极好'
					    };
					    this.span.text( ( value*2 + "分"));
			  }			   
			    
		  });
	  });

 });

function submit(){
	
	var st_score=0;
	var student_id=${user.id};
	var classes_id=${teacher_course.classes_id};
	var teacher_id=${teacher_course.teacher_id};
	var course_name=$("#course_name1").html();
	$('input[name=number]').each(function(index,element){
		st_score=st_score+parseInt($("#"+index).val());
	});
	//提交内容
 	$.ajax({
		url:"${pageContext.request.contextPath}/st_score_submit",
		async:false,
		type:"post",
		dataType:"json",
		data:{student_id:student_id,classes_id:classes_id,teacher_id:teacher_id,st_score:st_score,course_name:course_name},
 		success:function(data){
     		  if(data.flag==1){
     				alert(data.content); 
   		   	 		parent.location.reload();//刷新父级页面
     			}else{
	      			alert(data.content);
	      		}
     		    
 			}
 		});
	
}
</script>
</body>

</html>