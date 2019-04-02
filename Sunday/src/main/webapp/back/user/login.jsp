<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html>
	<head>
		<title>管理员登陆</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
			
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">   
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css">   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>   
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/easyui-lang-zh_CN.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/form.validator.rules.js"></script> 
	<script>
		$(function(){
			$('#wrap').dialog({    
				width:400,
			  	height:200,
			  	iconCls:'icon-add',
			  	maximizable:true,	
				
			});
		});
	</script>
	</head>


	<body >
		<div id="wrap">
<%
	//系统当前时间
	Date date = new Date();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	String time = simpleDateFormat.format(date);
%>
			<div id="top_content" style="text-align: center;">
					
						<div id="rightheader" style="text-align: center;">
							<p>
								服务器当前时间:<%=time %>
								<br />
							</p>
						</div>
						
			</div>
					
				<div id="vv" style="text-align: center;">
					<form action="${pageContext.request.contextPath}/administrator/login" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table" align="center">
							
							<tr >
								<td valign="middle"  >
									用户名:
								</td>
								<td valign="middle" >
									<input  data-options="required:true," class="easyui-textbox"   name="username" />
								</td>
							</tr>
							<tr>
								<td valign="middle" >
									密码:
								</td>
								<td valign="middle" >
									<input class="easyui-passwordbox" data-options="required:true,"    name="password" />
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="登陆 &raquo;" />
							
						</p>
					</form>
				</div>
				
		
			
		</div>
	</body>
</html>