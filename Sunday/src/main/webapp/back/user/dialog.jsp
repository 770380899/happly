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
			$('#aa').dialog({    
			  	width:500,
			  	height:300,
			  	iconCls:'icon-add',
			  	//content:'今天周四',
			  	maximizable:true,
			  	buttons:[{
			  		text:'注册',
			  		iconCls:'icon-mini-edit',
				  	handler:function(){
				  	location.href='${pageContext.request.contextPath }/back/user/regist.jsp';	
				  	}
			  	},{
			  		text:'登录',
			  		iconCls:'icon-large-chart',
			  		handler:function(){
			  			location.href='${pageContext.request.contextPath }/back/user/login.jsp';
			  		}
			  	}
			  	         
			  	         ]
			});
		});
	</script>
	
</head>
<body>

	<div id="aa">
			<div></div>
	</div>
	
	
</body>
</html>
