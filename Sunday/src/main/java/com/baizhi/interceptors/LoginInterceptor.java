package com.baizhi.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 强制用户登录的拦截器
 * @author admin
 *
 */
public class LoginInterceptor  implements HandlerInterceptor{

	/**
	 * 强制用户登录
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		Object attribute = request.getSession().getAttribute("user");
		if(attribute!=null){
			return true;
		}
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		return false;
	}
	
	

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}
	
	
	
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	

}
