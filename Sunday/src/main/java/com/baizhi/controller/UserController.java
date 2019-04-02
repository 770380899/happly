package com.baizhi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired 
	private UserService userService;

	@RequestMapping("shou")
	@ResponseBody
	public List<User> shou(){
		List<User> shouUser = userService.shouUser();
		return shouUser;
	}
	
	
	
	
	@RequestMapping("insertUser")
	public String insertUser(User user){
		userService.insertUser(user);
		return"redirect:/user/shou";
	}
	//删除
	@RequestMapping("deleteUser")
	public String deleteUser(Integer id){
		userService.deleteUser(id);
		return"redirect:/user/shou";
	}
	//批量删除
	@RequestMapping("delete")
	public String delete(Integer[] id,User user){
		for (Integer in : id) {
			System.out.println("批量删除");
			user.setId(in);
			userService.deleteUser(in);
		}
		return "redirect:/user/shou";
	} 
	@RequestMapping("updateUser")
	public String updateUser(User user){
		userService.updateUser(user);
		return"redirect:/user/shou";
	}
	@RequestMapping("idUser")
	public String idUser(Integer id,HttpServletRequest request){
		User idUser = userService.idUser(id);
		request.setAttribute("idUser", idUser);
		return"back/user/userindex";
	}
}
