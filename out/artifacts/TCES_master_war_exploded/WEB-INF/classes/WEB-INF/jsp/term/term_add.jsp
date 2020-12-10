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
	<title>添加学期界面</title>

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
<form id="addterm">
    <table class="if_tianjiatext layui-table" lay-size="lg"> 
    <tbody>
        <tr>
            <td  class="class_no" >学期名称</td>
            <td><input type="text" name="term_name" placeholder="请输入学期名称"></td>
        </tr>
        <tr>
            <td  class="class_no" >是否开启</td>
            <td><input type="text" name="is_open"  value="否" readonly></td>
        </tr>
        <tr class="tianjie_button" >
            <td colspan="2" style="border-right:1px solid #e6e6e6;">
                <button type="button" onclick="addccc()">确定添加</button>
            </td>  
        </tr>
    </tbody>
    </table>
</form>
</div>
<script type="text/javascript">
	 function addccc(){
		 var i=true;
		//1.先判断输入框内容是否为空，再添加班级
		 $("input[type='text']").each(function () {
	           if ($(this).val() == "") {
	               alert("内容不能为空！");
	               i=false;
	           }
				
	     });
		

         if(i==true){
			var term_name = $("input[name='term_name']").val();
			var is_open = 0;
			
    		$.ajax({
				url:"${pageContext.request.contextPath}/add_term",
				async:false,
				type:"post",
				data:{term_name:term_name,is_open:is_open},
				dataType:"json",
    			success:function(data){
	      		    if(data.flag==1){
	      				alert(data.content);
	      				
	      				var index = parent.layer.getFrameIndex(window.name);  
	  			   	 	parent.layer.close(index);//关闭当前页  
	  			   	parent.location.reload();
	      			}else{
		      			alert(data.content);
		      		}
	      		    
    			}
    		});
         }
		
	 }
	 
	 
	

</script> 
</body>

</html>
    