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
    <title>修改班级界面</title>

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
<form id="updateclass">
    <table class="if_tianjiatext layui-table" lay-size="lg">
        <tbody>
        <tr>
        	<input type="hidden" name="id" value="${classes.id}">
            <td class="td_1">系别</td>
            <td>
                <div class="layui-input-inline">
                    <select name="dep_id">                      		
                    	<c:forEach items="${department}" var="item">                   		
                    		<option value="${item.id}" ${item.dep_name==classes.department.dep_name?'selected':''}>${item.dep_name}</option>                   		
                        </c:forEach>                      
                    </select>
                </div>
            </td>
        </tr>
        <tr>
            <td  class="class_no">班级</td>
            <td><input type="text" readonly="readonly" name="classes_no" value="${classes.classes_no}"></td>
        </tr>
        <tr class="tianjie_button">
            <td colspan="2" style="border-right:1px solid #e6e6e6;">
                <button type="button" onclick="update_commit()">确定修改</button>
            </td>
        </tr>
        </tbody>
    </table>
    </form>
</div>
<script type="text/javascript">
	//修改班级信息
	//先查询班级信息并展示
	function update_commit(){
		var i=true;
		 $("input[type='text']").each(function () {
	           if ($(this).val() == "") {	   
	               alert("内容不能为空！");
	               i=false;
	           }
	           if(i==true){   
	        	//提交内容
	      		$.ajax({
					url:"${pageContext.request.contextPath}/update_class",
					async:false,
					type:"post",
					data:$("#updateclass").serialize(),
					dataType:"json",
	      			success:function(data){
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
		      		    
	      			}
	      		});
	           }	 
	     })

	}
</script>
</body>

</html>
