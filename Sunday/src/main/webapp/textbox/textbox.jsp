<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">   
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css">   
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/IconExtension.css">   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/easyui-lang-zh_CN.js"></script> 
	<script>
	$('#tb').textbox({    
	    buttonText:'Search',    
	    iconCls:'icon-man', 
	    iconAlign:'left'       
	});
	</script>
</head>
<body>
	<input id="tb">
	<input id="tb">
	
</body>
</html>	