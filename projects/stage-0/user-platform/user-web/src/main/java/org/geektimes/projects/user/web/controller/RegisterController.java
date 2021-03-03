package org.geektimes.projects.user.web.controller;

import org.geektimes.web.mvc.controller.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

/**
 * register Controller
 */
@Path("/register")
public class RegisterController implements RestController {
    @GET
    @POST
    @Path("/submitUser") // /submitUser 注册提交方法
    public void execute1(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        //获取用户名
        String username = request.getParameter("username");
        //获取密码
        String userpass = request.getParameter("userpass");
        //todo 保存数据库
        // 注册成功，转发到welcome.jsp
        response.sendRedirect("/success.jsp");
    }

}

