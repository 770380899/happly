<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>


<script>
	$(function(){
		$("#userDg").datagrid({
			fit:true,
			url:'/Sunday/back/user/user.json',
			toolbar:'#tb',//定义工具栏
			columns:[[
			          {title:'cks',field:'cks',checkbox:true},
			          {title:'id',field:id,width:120,align:'center',halign:'left',},
			          {title:'姓名',field:'name',width:100,align:'center',resizable:false},
			          {title:'工资',field:salary,width:100,align:'center',resizable:false},
			          {title:'年龄',field:age,width:100,align:'center',resizable:false},
			          {title:'操作',field:'options',width:300,align:'center',
			        	  formatter:function(value,row,index){
			        		  //js函数在传递js对象时要求必须将js对象转为json格式字符串进行传递  接收方会自动将json字符串转为js对象
			        		  //js对象  转为json格式字符串  json字符串js  JSON.Stringify()
			        		  var json = JSON.stringify(row);
			        		  //console.log(json);
			        		  //console.log(row);
			        		  return "<a href='#' onClick='delRow("+json+");' data-options=\"iconCls:'icon-remove',plain:true\" class='options'>删除</a>"+
			        		  		 "&nbsp;&nbsp;<a href='#' onClick='openEditDialg("+json+");' data-options=\"iconCls:'icon-edit',plain:true\" class='options'>修改</a>";
			        	  }
			          },
			          ]],
			          onLoadSuccess:function(){
				        	 $(".options").linkbutton();
				        	 
				      }
		});
		
	});
	
	
	//打开编辑的对话框
		function openEditDialg(row){
			//当前修改id
			var id = row.id;
			//打开修改的对话框
			$("#edit").dialog({
				href:"${pageContext.request.contextPath}/user/update?id="+id,
				buttons:[
				          {
				        	  iconCls:'icon-save',
				        	  text:"修改",
				        	  handler:saveEditUserInfo,
				          },
				          {
				        	  iconCls:'icon-cancel',
				        	  text:"关闭",
				        	  handler:function(){alert();}
				          }
				        ]
			});
		}
		
		//点击修改对话框中修改按钮
		function saveEditUserInfo(){
			$("#editForm").form('submit',{
				url:"${pageContext.request.contextPath}/user/update",
				success:function(result){//这里result是一个json字符串 使用时需要转为js对象
					//关闭对话框
					$("#edit").dialog('close');
					 //提示状态
				    $.messager.show({title:"提示",msg:"修改用户成功..."});
				    //刷新现有datagrid表格
				    $("#userDg").datagrid('reload');
					
				}
			});
		}
		
		//点击删除按钮删除一行
		function delRow(row){
		    console.log(row.id);
		    //提示确认删除
		    $.messager.confirm("提示","您确定要删除吗?",function(result){
		    	if(result){
		    		 //发送ajax请求删除一行数据
				    $.post("${pageContext.request.contextPath}/user/delete",{id:row.id},function(result){  //jquery的ajax请求获取的是js对象 使用时直接使用
				    	
				    	 //提示状态
					    $.messager.show({title:"提示",msg:"删除用户成功..."});
					    //刷新现有datagrid表格
					    $("#userDg").datagrid('reload');
				    	
				    },"JSON");
		    	}
		    });
		}
		
		//点击添加时执行openDialog
		function openDialog(){
			$("#dia").dialog({
				href:"/easyui_day4/back/user/save.jsp",
				buttons:[
				   {
					   iconCls:'icon-save',
					   text:'保存',
					   plain:true,
					   handler:saveUserInfo,
				   },
				   {
					   iconCls:'icon-cancel',
					   text:'关闭',
					   plain:true,
					   handler:closeDialog,
				   }   
				]
			});
		}
		
		//点击对话框保存按钮触发函数
		function saveUserInfo(){
			$("#ff").form('submit',{
				url:"${pageContext.request.contextPath}/user/save",
				success:function(result){//注意:result是一个json字符串使用必须转为j是对象
					//关闭对话框
					closeDialog();
				    //提示状态
				    $.messager.show({title:"提示",msg:"保存用户成功..."});
				    //刷新现有datagrid表格
				    $("#userDg").datagrid('reload');
				}
			});
		}
		//关闭对话框
		function closeDialog(){
			//关闭对话框
			$("#dia").dialog('close');
		}
		
		//批量删除所有行
		function delBatchRows(){
			var rows = $("#userDg").datagrid('getSelections');
			if(rows.length>0){
				$.messager.confirm("提示","您确定要删除所有选中的行吗?",function(result){
					if(result){
						var ids = [];
						for(var i=0;i<rows.length;i++){
							console.log(rows[i].id);
							ids.push(rows[i].id);//将id放入数组中
						}
						
						//发送ajax请求删除选中row
						$.ajax({
							url:"${pageContext.request.contextPath}/user/deleteAll",
							type:"POST",
							data:{ids:ids},
							dataType:"JSON",
							traditional:true,//在ajax中传递数组类型的数据必须使用$.ajax 在$.ajax中必须设置traditional属性为true
							success:function(result){
								//提示状态
								//刷新datagrid
							}
						});
						
					}
				})
			}else{
				$.messager.show({title:"提示",msg:"至少选中一行!!!"});
			}
			
			
		}
</script>

	<table id="userDg"></table>



	<!-- 数据表格工具栏  -->
	<div id="tb">
		<a href="#" class="easyui-linkbutton" data-options="onClick:openDialog,iconCls:'icon-add',plain:true">添加</a>
		<a href="#" class="easyui-linkbutton" data-options="onClick:delBatchRows,iconCls:'icon-remove',plain:true">删除</a>
	</div>
	
	
	<!-- 保存对话框 -->
	<div id="dia" data-options="width:600,height:400,title:'保存用户信息',iconCls:'icon-save'" ></div>
	
	<!-- 修改的对话框 -->
	<div id="edit" data-options="width:600,height:400,title:'编辑用户信息',iconCls:'icon-edit'"></div>
	
	