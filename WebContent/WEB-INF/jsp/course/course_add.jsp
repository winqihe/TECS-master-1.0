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
	<title>添加课程界面</title>

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
<form id="updatecourse">
    <table class="if_tianjiatext layui-table" lay-size="lg"> 
    <tbody>
        <tr>
            <td class="td_1">院系</td>
            <td>
                <div class="layui-input-inline">
                    <select name="dep_id">
                    	<c:forEach items="${depname}" var="item">
                    		<option value="${item.id}">${item.dep_name}</option>
                        </c:forEach>   
                    </select>
                </div>
            </td>
        </tr>
        <tr>
            <td  class="class_no" >课程</td>
            <td><input type="text" name="course_name" placeholder="请输入课程名称"></td>
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
		 var i=true;
		//1.先判断输入框内容是否为空，再添加班级
		 $("input[type='text']").each(function () {
	           if ($(this).val() == "") {
	               alert("内容不能为空！");
	               i=false;
	           }
				
	           if(i==true){
	        	 var url="${pageContext.request.contextPath}/add_course";//跳的controller对应的方法
	      		 var param=$("#updatecourse").serialize();

	      			$.post(url,param,function(data){
	      				
	      				if(data.flag==1){
	      					alert(data.content);	
	      					//关闭当前遮罩层
	      				  	var index = parent.layer.getFrameIndex(window.name);  
	      			   	 	parent.layer.close(index);//关闭当前页  
	      			        //location.reload();
	      			   	parent.location.reload();

	      				}else{
	      					alert(data.content);
	      				}
	      			});
	           }
	     });
		
	 }
	 
	 
	

</script> 
</body>

</html>
    