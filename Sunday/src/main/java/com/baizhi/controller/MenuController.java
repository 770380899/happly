package com.baizhi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baizhi.entity.Menu;
import com.baizhi.service.MenuService;

@Controller
@RequestMapping("menuController")
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("shouAllMenu")
	@ResponseBody
	public List<Menu> shouAllMenu(){
		List<Menu> shouAllMenu = menuService.shouAllMenu();
		return shouAllMenu;
	}
}
