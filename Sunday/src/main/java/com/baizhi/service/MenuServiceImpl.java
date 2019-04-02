package com.baizhi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.baizhi.dao.MenuDAO;
import com.baizhi.entity.Menu;
@Controller
@Transactional
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuDAO mk;
	@Override
	public List<Menu> shouAllMenu() {
		
		return mk.shouAllMenu();
	}

}
