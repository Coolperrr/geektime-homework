package org.geektimes.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * REST 控制器（标记接口）
 *
 * @since 1.0
 */
public interface RestController extends Controller {
    /**
     * @param request  HTTP 请求
     * @param response HTTP 相应
     * @return 注册用户地址路径
     * @throws Throwable 异常发生时
     */
    void execute1(HttpServletRequest request, HttpServletResponse response) throws Throwable;

}
