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
			
			//页面加载完成后渲染菜单
			$.get("${pageContext.request.contextPath}/menuController/shouAllMenu",function(result){
				$.each(result,function(i,menu){
					//遍历孩子
					var content = "<div style='text-align:center'>";
					$.each(menu.menuId,function(j,child){
						var json = JSON.stringify(child);
						content += "<div style='margin-top:5px;'><a onClick='addTabs("+json+")' class='easyui-linkbutton' data-options=\"plain:true,iconCls:'"+child.iconCls+"'\" style='width:90%;border:1px #95B8E7 solid;'>"+child.title+"</a></div><br/>";
					});
					content+="</div>";
					//添加以及菜单
					$("#menu").accordion('add',{
						title:menu.title,
						iconCls:menu.iconCls,
						content:content,
					});
				});
			},"JSON");
		
		});
		
		//点击二级菜单添加选项卡
		function addTabs(child){
			console.log(child);
			if(!$("#tabs").tabs('exists',child.title)){//不存在添加
				$("#tabs").tabs('add',{
					title:child.title,
					iconCls:child.iconCls,
					closable:true,
					href:'${pageContext.request.contextPath}/'+child.href,
				});
			}else{
				$("#tabs").tabs('select',child.title);//存在选中
			}
			
		}
	</script>
</head>
<body class="easyui-layout">
	
		<!-- 页面头部 -->
	    <div data-options="region:'north',href:'/Sunday/back/main/head.jsp'" style="height:100px;"></div>   
	    <!-- 页面尾部 -->
	    <div data-options="region:'south',href:'/Sunday/back/main/footer.jsp'" style="height:30px;"></div>   
	    <!-- 页面的左侧 -->
	    <div data-options="region:'west',title:'菜单'" style="width:200px;">
	    	
	    	<!-- 分类容器 -->
	    	<div id="menu" class="easyui-accordion" data-options="fit:true"></div>
	    	
	    </div>
	    
	    <!-- 页面中心 -->
	    <div data-options="region:'center'">
	    	
	    	<!-- 选项卡容器 -->
	    	<div id="tabs" class="easyui-tabs" data-options="fit:true"></div>
	    
	    </div>   

	
</body>
</html>
