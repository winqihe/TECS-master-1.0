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
	 
<body>
<div class="wangid_conbox">
	<!-- 当前位置 -->
	<div class="zy_weizhi bord_b">
		<i class="fa fa-home fa-3x"></i>
		<a>首页</a>
		<a>学生管理</a>		
	</div>
	<!-- 筛选 --> 
	<div class="shuaix">				
		<div class="right">
			<input id="inquire" type="text" placeholder="请输入关键词查询">
			<a href="#" onclick="getInput()">查询</a>
		</div>
	</div>
	<!-- 下面写内容 -->
	<table class="layui-table" lay-filter="mylist" lay-size="lg">
		<thead>
			<tr>
				<th lay-data="{type:'checkbox',fixed:'left'}"></th>
				<th lay-data="{field:'xx', align:'center',width:120}">id</th>
				<th lay-data="{field:'yx', align:'center',width:120}">学号</th>
				<th lay-data="{field:'time',align:'center', Width:60}">姓名</th>
				<th lay-data="{field:'xx1',align:'center', Width:60}">班级</th>
				<th lay-data="{field:'xx2',align:'center', Width:60}">性别</th>
				<th lay-data="{field:'xx3',align:'center', Width:60}">电话</th>
				<th lay-data="{field:'option',align:'center',width:300,fixed: 'right'}">操作</th>
			</tr> 
		</thead>
		<tbody>
		<c:forEach items="${students}" var="item">
			<tr>
				<td></td>
				<td>${item.id}</td>
				<td>${item.student_no }</td>
				<td>${item.student_name}</td>
				<td>${item.classes.classes_no}</td>
				<td>${item.sex}</td>
				<td>${item.tel}</td>
				<td>		
					<div class="layui-inline">
						<button class="layui-btn layui-btn-sm layui-btn-normal " data-id="1" onclick="update('${item.id}')"><i class="layui-icon"></i>修改</button>
						<button class="layui-btn layui-btn-sm layui-btn-danger del-btn" data-id="1" onclick="del('${item.id}')"><i class="layui-icon"></i>删除</button>
					</div>
				</td>
			</tr>
		</c:forEach>
		</tbody>  
	</table>
</div> 

<script type="text/javascript">

	//1.模糊查询
	function getInput(){
		var url = "${pageContext.request.contextPath}/student_list_inquire";
		var info=$("#inquire").val();        
		layer.open({
			 type: 2,//层类型
		        //title: "修改信息",//标题
		        closeBtn: 1, //不显示关闭按钮
		        shade: [0.3],//遮罩
		        skin: 'demo_class_color',//iframe皮肤
		        shadeClose:Boolean,//点击遮罩关闭
		        area: ['1300px', '650px'],
		        // offset: 'rb', //右下角弹出
		        // time: 2000, //2秒后自动关闭
		        anim: 5,//动画
		        content: ['${pageContext.request.contextPath}/student_list_inquire?info='+info], //iframe的url，no代表不显示滚动条
		});
		
		/* 
		$.ajax({
			url:"${pageContext.request.contextPath}/student_list_inquire",
			async:false,
			type:"post",
			data:{info:val},
			dataType:"json",
			success:function(data){}
			}); */
		
		
		
	};
	
	
	
	
	
	//1.修改按钮
	function update(id){
   layer.open({
       type: 2,//层类型
       title: "修改学生信息",//标题
       closeBtn: 1, //不显示关闭按钮
       shade: [0.3],//遮罩
       skin: 'demo_class_color',//iframe皮肤
       shadeClose:Boolean,//点击遮罩关闭
       area: ['800px', '500px'],
       anim: 5,//动画
       content: ['student_update?id='+id, 'no'], //iframe的url，no代表不显示滚动条
   });
}

//删除按钮
function del(id){
	//询问框

	layer.confirm('你确定要删除该信息吗？', {
	  btn: ['确定','取消'] //按钮
	}, function(){
		
		$.ajax({
			url:"${pageContext.request.contextPath}/delete_student?id="+id,
			async:false,
			type:"post",				
			dataType:"json",
  			success:function(data){
      		    if(data.flag==1){
  					alert(data.content);	
  					//关闭当前遮罩层 			   	 	
  			   		var index = layer.getFrameIndex(window.name);  
    		    	layer.close(index);//关闭当前页  
		   	 		location.reload();//刷新父级页面
  				}else{
  					alert(data.content);
  				}
  			}
  		});
	  
	});
}
	//静态表格
    layui.use('table',function(){
    	var table = layui.table;
		//转换静态表格
		table.init('mylist', {
		  height: 'full-130' //高度最大化减去差值,也可以自己设置高度值：如 height:300
		  ,count: 50 //数据总数 服务端获得
		  ,limit: 10 //每页显示条数 注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
		  ,page:true //开启分页
		  ,toolbar: 'default'//工具栏
		  ,defaultToolbar:['filter', 'exports']
		  ,limits:[10, 20, 30, 40, 50]//分页显示每页条目下拉选择
		  ,cellMinWidth: 60//定义全局最小单元格宽度，其余自动分配宽度
		}); 
		//监听行工具事件
		table.on('tool(mylist)', function(obj){ //注：tool 是工具条事件名，mylist 是 table 原始容器的属性 lay-filter="对应的值"
			var data = obj.data //获得当前行数据
			,layEvent = obj.event; //获得 lay-event 对应的值
			if(layEvent === 'del'){
			    layer.confirm('真的删除行么', function(index){
				    obj.del(); //删除对应行（tr）的DOM结构
				    layer.close(index);
				    //向服务端发送删除指令
			    });
			} else if(layEvent === 'edit'){
			    layer.msg('修改操作');
			}
		}); 
		//监听头工具栏事件
		table.on('toolbar(mylist)', function(obj){
			var checkStatus = table.checkStatus(obj.config.id)
			,data = checkStatus.data; //获取选中的数据 
			switch(obj.event){ 
			case 'add': 
				//iframe窗 
				layer.open({
				type: 2,//层类型
				title: "添加学生",//标题
				closeBtn: 1, //不显示关闭按钮
				shade: [0.3],//遮罩
				skin: 'demo_class_color',//iframe皮肤
				shadeClose:Boolean,//点击遮罩关闭
				area: ['800px', '500px'],
				// offset: 'rb', //右下角弹出
				// time: 2000, //2秒后自动关闭
				anim: 5,//动画
				content: ['student_add', 'no'], //iframe的url，no代表不显示滚动条 
				});
				// 
			break;
			case 'update':
				if(data.length === 0){
				layer.msg('请选择一行');
				} else if(data.length > 1){
				layer.msg('只能同时编辑一个');
				} else {
				layer.alert('编辑 [id]：'+ checkStatus.data[0].id);
				}
			break;
			case 'delete':
				if(data.length === 0){
				layer.msg('请选择一行');
				} else {
				layer.msg('删除');
				}
			break;
			};
		});
	}); 
</script> 

</body>
</html>
