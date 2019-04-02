package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.User;

public interface UserDAO {
	//查询所有员工
	List<User> shouUser();
	//添加
	void insertUser(User user);
	//删除
	void deleteUser(Integer id);
	//修改
	void updateUser(User user);
	//根据id查询
	User idUser(Integer id);
}
