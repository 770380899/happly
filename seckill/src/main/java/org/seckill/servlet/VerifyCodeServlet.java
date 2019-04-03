package org.seckill.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Created by CJS on 2018/3/6
 */
public class VerifyCodeServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) {

        VerifyCode.getVerifyCode(request, response);
    }
}
