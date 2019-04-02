package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Administrator;

public interface AdministratorService {
	//查名字和密码
		Administrator nameAndpassword(Administrator administrator);
		//添加管理员
		void insertAdministrator(Administrator administrator);
		//判断管理员是否注册过
		Administrator  MailAlone(Administrator administrator);
		//查询
		public List<Administrator> shouAllAdministrator();
}
