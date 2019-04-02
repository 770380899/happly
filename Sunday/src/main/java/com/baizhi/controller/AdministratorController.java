package com.baizhi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.Administrator;
import com.baizhi.service.AdministratorService;

@Controller
@RequestMapping("administrator")
public class AdministratorController {
	@Autowired
	private  AdministratorService ad;

	@RequestMapping("login")
	public String login(Administrator administrator,HttpSession session){
		Administrator user2 = ad.nameAndpassword(administrator);
		if(user2!=null){
			session.setAttribute("user", user2);
			System.out.println("登录成功");
			return "redirect:/user/shou";
		}
		System.out.println("登录失败");
		return "redirect:/denglu.jsp";
	}
	//添加
	@RequestMapping("insertAdministrator")
	public String insertAdministrator(Administrator administrator){
		ad.insertAdministrator(administrator);
		return "redirect:/denglu.jsp";
	}
	//查询
	@RequestMapping("shouAllAdministrator")
	public String shouAllAdministrator(HttpServletRequest request){
		List<Administrator> shouAllAdministrator = ad.shouAllAdministrator();
		request.setAttribute("shouAllAdministrator", shouAllAdministrator);
		return "";
	}
}
