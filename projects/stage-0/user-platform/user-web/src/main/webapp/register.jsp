<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册界面</title>
    <script language="javascript">
        var flag = 0;//全局变量
        function onChangPassword(obj) {
            var obValue = obj.value;
            var pass = document.getElementById("userpass").value;
            if (obValue != pass) {
                document.getElementById("usPass1").innerHTML = "<font name='usPass1' style='font-size:12px;color:red'>请再次确认密码!</font>";
                flag = 0;
            } else {
                document.getElementById("usPass1").innerHTML = "<font name='usPass1' style='font-size:12px;color:green'>通过</font>";
                flag++;
            }
        }

        function res() {
            document.getElementById("username").value = "";
            document.getElementById("userpass").value = "";
            document.getElementById("userpass1").value = "";
        }

        function sub() {
            var name = document.getElementById("username").value;
            var pass = document.getElementById("userpass").value;
            var pass1 = document.getElementById("userpass1").value;
            if (name != null && pass != null && pass1 != null && pass.equals("pass1")) {
                if (flag == 1) {
                    document.register.submit();
                } else {
                    alert("请认真填写注册信息");
                    document.getElementById("username").value = "";
                    document.getElementById("userpass").value = "";
                    document.getElementById("userpass1").value = "";
                    document.getElementById("usName").innerHTML = "";
                    document.getElementById("usPass").innerHTML = "";
                    document.getElementById("usPass1").innerHTML = "";
                }
            }
        }
    </script>
</head>
<body>
<form method="post" action="/register/submitUser" name="register">
    <table style="height:100%;width:100%">
        <tr align="center" valign="middle">
            <td>
                <table width="392" height="200" border=0 align="center">
                    <tbody>
                    <tr valign="middle" align="center">
                        <td colspan="3" height="40" valign="middle" align="center">
                            <font face="黑体" size="5px" color="#196ed1" style="padding-left:20px;">用户注册 </font>
                        </td>
                    </tr>
                    <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="username" id="username" value="">
                        <td id="usName"></td>
                    </tr>

                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="userpass" id="userpass" value="">
                        <td id="usPass"></td>
                    </tr>
                    <tr>
                        <td>确认密码：</td>
                        <td><input type="password" name="userpass1" id="userpass1" value=""
                                   onChange="onChangPassword(this)">
                        <td id="usPass1"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="提交" onClick="sub()">
                        <td><input type="button" value="重置" onClick="res()">
                    </tr>
                    </tbody>
                </table>
        </tr>
    </table>
</form>
</body>
</html>