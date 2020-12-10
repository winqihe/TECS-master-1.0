<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="layui/css/layui.css" media="all">
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script> 
	<!-- layui js -->
	<script src="layui/layui.js"></script>
</head>


<body style="background: #fff;">
<div class="tianjia_xx">
<form id="form">
    <table class="if_tianjiatext layui-table" lay-size="lg"> 
    <tbody>
         <tr> 
             <td class="td_1">学期</td> 
             <td> 
                 <div class="layui-input-inline"> 
                     <select name="term_id"> 
                    	<c:forEach items="${term}" var="item"> 
                     		<option value="${item.id}">${item.term_name}</option> 
                         </c:forEach>    
                     </select> 
                 </div> 
            </td> 
        </tr> 
        <tr>
            <td class="td_1">教师</td>
            <td>
                <div class="layui-input-inline">
                    <select name="teacher_id">
                    	<c:forEach items="${teacher}" var="item">
                    		<option value="${item.id}">${item.teacher_name}</option>
                        </c:forEach>   
                    </select>
                </div>
            </td>
        </tr>
        <tr>
            <td class="td_1">班级</td>
            <td>
                <div class="layui-input-inline">
                    <select name="classes_id">
                    	<c:forEach items="${classes}" var="item">
                    		<option value="${item.id}">${item.classes_no}</option>
                        </c:forEach>   
                    </select>
                </div>
            </td>
        </tr>
        <tr>
            <td class="td_1">课程</td>
            <td>
                <div class="layui-input-inline">
                    <select name="course_id">
                    	<c:forEach items="${course}" var="item">
                    		<option value="${item.id}">${item.course_name}</option>
                        </c:forEach>   
                    </select>
                </div>
            </td>
        </tr>
        <tr class="tianjie_button" >
            <td colspan="2" style="border-right:1px solid #e6e6e6;">
                <button type="button" onclick="add()">确定添加</button>
            </td>  
        </tr>
    </tbody>
    </table>
</form>
</div>
<script type="text/javascript">
	 function add(){

        	 var url="${pageContext.request.contextPath}/add_teacher_course";//跳的controller对应的方法
      		 var param=$("#form").serialize();

      		$.ajax({
				url:url,
				async:false,
				type:"post",
				data:param,
				dataType:"json",
      			success:function(data){
	      			if(data.flag==1){
      					alert(data.content);	
      					//关闭当前遮罩层
      				  	var index = parent.layer.getFrameIndex(window.name);  
      			   	 	parent.layer.close(index);//关闭当前页  
      			   		parent.location.reload();

      				}else{
      					alert(data.content);
      				}
	      		    
      			}
      		});
		
	 }
	 
	 
	

</script> 
</body>

</html>
    