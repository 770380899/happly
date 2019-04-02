<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">   
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css">   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/easyui-lang-zh_CN.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/form.validator.rules.js"></script> 
	<script>
		$(function(){
			//发送ajax请求
			$.get("${pageContext.request.contextPath}/menuController/shouAllMenu",function(result){
				$.each(result,function(i,menu){
					//遍历孩子
					var content = "<div style='text-align:center'>";
					$.each(menu.children,function(j,child){
					content += "<div style='margin-top:5px;'><a class='easyui-linkbutton' data-options=\"plain:true,iconCls:'"+child.iconCls+"'\" style='width:90%;border:1px #95B8E7 solid;'>"+child.title+"</a></div><br/>";				
			});
			content+="</div>";
			//添加以及菜单
			$("#pp").accordion('add',{
				title:menu.title,
				iconCls:menu.iconCls,
				content:content,
			});
		});
		},"JSON");
		});
	
	
	</script>
	
</head>
<body>
	<!-- 菜单容器 -->
	<div id="pp" class="easyui-accordion" data-options="width:200,height:400">
		
	</div>
	
	
</body>
</html>
