<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xugenli
  Date: 2017/3/8
  Time: 下午1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>VOAS 1.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <link rel="shortcut icon" href="assets/ico/minus.png">
    <script>
        function checkLogin() {
            if ($("#cdsid").val() == '' || $("#password").val() == '') {
                //属性也要加引号
                $("#validate").css('visibility','visible');
                $("#wrongInfo").css('visibility','hidden');
            }else{
                $("#userInfo").submit();
            }
        }
    </script>
</head>

<body>
<!-- Preloader -->
<div class="container">
    <div class="" id="login-wrapper">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div id="logo-login">
                    <h1>VOAS<span>v1.3</span></h1>
                </div>
            </div>
        </div>
        <form id="userInfo" method="post" action="/login">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box">
                        <div class="form-group">
                            <label for="cdsid">用户名</label>
                            <input type="text" name="cdsid" id="cdsid" class="form-control">
                        </div>
                        <div class="form-group">
                            <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                            <label for="password">密码</label>
                            <input type="password" name="password" id="password" class="form-control">
                        </div>
                        <c:if test="${message==3}">
                            <span id="wrongInfo" style="color: #d9534f"><c:out value="用户名或密码错误"></c:out></span>
                        </c:if>
                        <span id="validate" style="color: #d9534f;visibility:hidden" >请输入用户名或密码</span>
                        <%--不设置type的话默认为submit--%>
                        <button type="button" class="btn btn btn-primary pull-right" onclick="checkLogin()">登 录</button>
                        <div class="row-block">
                            <div class="row">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <p>&nbsp;</p>
    <div style="text-align:center;margin:0 auto;">
        <h6 style="color:#fff;">Copyright(C)Volvo CEP-IT All Rights Reserved</h6>
    </div>
</div>

<!--  END OF PAPER WRAP -->
<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
<script type="text/javascript" src="assets/js/map/gmap3.js"></script>
</body>

</html>
