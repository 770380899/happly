package com.baizhi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.baizhi.dao.UserDAO;
import com.baizhi.entity.User;
@Controller
@Transactional
public class UserServiceImpl implements UserService{	
	@Autowired
	private UserDAO userDAO;
	@Override
	public List<User> shouUser() {
		// TODO Auto-generated method stub
		return userDAO.shouUser();
	}

	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userDAO.insertUser(user);
	}

	@Override
	public void deleteUser(Integer id) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(id);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDAO.updateUser(user);
	}

	@Override
	public User idUser(Integer id) {
		// TODO Auto-generated method stub
		return userDAO.idUser(id);
	}

}
