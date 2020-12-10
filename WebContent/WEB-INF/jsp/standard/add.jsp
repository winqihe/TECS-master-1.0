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
	<meta name="description" content="名榜,wangid">
	<title>增加选项指标内容</title>

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
	<form method="post" id="form">
	    <table class="if_tianjiatext layui-table" lay-size="lg"> 
	    <tbody>
	        <tr>
	            <td  class="td_1">指标内容</td> 
	            <td><input type="text" placeholder="请输入指标内容" name="title_con"></td>
	        </tr>
	        <tr>
	            <td  class="td_1">指标类别</td> 
	            <td><input type="text" placeholder="请输入指标类别   0：学生—教师  1：教师—教师" name="type"></td>
	        </tr>
	        
	        <tr class="tianjie_button">
	            <td colspan="2" style="border-right:1px solid #e6e6e6;">
	                <button onclick="add()">确定添加</button>
	            </td>  
	        </tr>
	    </tbody>
	    </table>
    </form>
</div>
<script type="text/javascript">
	 function add(){
		 //判断输入框内容是否为空
		 var i=true;
		 $("input[type='text']").each(function () {
	           if ($(this).val() == "") {
	        	   alert('内容不能为空！');
	           		i=false;
	           }	         
	     })
	     
	     if(i==true){
	           $.ajax({
					url:"${pageContext.request.contextPath}/add_standard",
					async:false,
					type:"post",
					data:$("#form").serialize(),
					dataType:"json",
	      			success:function(data){
		      		    if(data.flag==-1){		    	
		      		    	alert(data.content);
		      		    	
		      			}else if(data.flag==1){
		      				alert(data.content);
		      				
		      				var index = parent.layer.getFrameIndex(window.name);  
		        		    parent.layer.close(index);//关闭当前页  
		    		   	 	parent.location.reload();//刷新父级页面
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
    