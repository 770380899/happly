package com.baizhi.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.baizhi.entity.Menu;
import com.baizhi.entity.User;
import com.baizhi.service.MenuService;
import com.baizhi.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserTest {
	@Autowired
	private UserService userService;
	@Autowired
	private MenuService mk;
	@Test
	public void test1(){
		 User user = new User();
		 user.setAge(22);
		 user.setName("索隆");
		 user.setSalary(2000.12);
		userService.insertUser(user);
	}
	
	@Test
	public void test2(){
		List<User> shouUser = userService.shouUser();
		for (User user : shouUser) {
			System.out.println(user);
		}
	}
	@Test
	public void test3(){
		List<Menu> shouAllMenu = mk.shouAllMenu();
		for (Menu menu : shouAllMenu) {
			System.out.println(menu);
		}
		
	}
}
