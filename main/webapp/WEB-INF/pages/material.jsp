<%--
  Created by IntelliJ IDEA.
  User: xugenli
  Date: 2017/5/17
  Time: 上午10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>VOAS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">


    <link href="assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="assets/js/dataTable/css/datatables.responsive.css">

    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle"
                    type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div id="logo-mobile" class="visible-xs">
                <h1>VOAS
                    <span>v1.0</span>
                </h1>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <div id="nt-title-container" class="navbar-left running-text visible-lg" style="width: auto">
                <ul class="digital">如有任何问题请直接联系IT</ul>
            </div>

            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        Hi, <c:out value="${user.name}"/>
                    </a>

                </li>
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-gear"></span>&#160;&#160;Setting</a>
                    <ul role="menu" class="dropdown-setting dropdown-menu">

                        <li class="theme-bg">
                            <div id="button-bg"></div>
                            <div id="button-bg2"></div>
                            <div id="button-bg3"></div>
                            <div id="button-bg5"></div>
                            <div id="button-bg6"></div>
                            <div id="button-bg7"></div>
                            <div id="button-bg8"></div>
                            <div id="button-bg9"></div>
                            <div id="button-bg10"></div>
                            <div id="button-bg11"></div>
                            <div id="button-bg12"></div>
                            <div id="button-bg13"></div>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- /END OF TOP NAVBAR -->
<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>VOAS<span>v1.0</span></h1>
    </div>

    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search"
                           placeholder="查找..." autofocus="">
                </span>
        </form>
    </div>

    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">
                <ul class="topnav menu-left-nest">
                    <li>
                        <a class="tooltip-tip ajax-load" href="#" title="Dashboard">
                            <i class="icon-window"></i>
                            <span>物品借用清单</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->

<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">
        <!-- END OF BREADCRUMB -->
        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">
                    <div class="nest" id="FootableClose">
                        <div class="body-nest" id="Footable">
                            <table class="table-striped footable-res footable metro-blue" data-page-size="20">
                                <thead>
                                <tr>
                                    <th>
                                        序号
                                    </th>
                                    <th>
                                        CDSID
                                    </th>
                                    <th>
                                        部门
                                    </th>
                                    <th>
                                        物品名称
                                    </th>
                                    <th>
                                        预计借用日期
                                    </th>
                                    <th>
                                        预计归还日期
                                    </th>
                                    <th>
                                        申请日期
                                    </th>
                                    <th>
                                        实际更还日期
                                    </th>
                                    <th>
                                        物品详情
                                    </th>
                                    <%--data-hide 修复边框问题--%>
                                    <th>
                                        状态
                                    </th>
                                    <th data-hide="phone">
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${materials}" var="material">
                                    <tr>
                                        <td>${material.id}</td>
                                        <td>${material.userCdsid}</td>
                                        <td>${material.department.name}</td>
                                        <td>${material.name}</td>
                                        <td>${material.borrowStart}</td>
                                        <td>${material.borrowEnd}</td>
                                        <td>${material.createDate}</td>
                                        <td>${material.modifyDate}</td>
                                        <td>${material.detailInfo}</td>
                                        <td>
                                            <select id="materialStatus">
                                                <c:forEach items="${status}" var="status">
                                                    <c:choose>
                                                        <c:when test="${status.statusId == material.statusId}">
                                                            <option selected>${material.status.statusName}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option>${status.statusName}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-success"
                                                    onclick="editMaterial(${material.id})">编辑
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="10">
                                        <div class="pagination pagination-centered"></div>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer-space"></div>
    </div>
</div>
<!--  END OF PAPER WRAP -->

<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>

<!-- /MAIN EFFECT -->
<!-- GAGE -->
<script type="text/javascript" src="assets/js/toggle_close.js"></script>
<script src="assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script src="assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>


<script type="text/javascript">
    $(function () {
        $('.footable-res').footable();
    });

    function editMaterial(id) {
        location.href = "/editMaterial?id="+id+"&cdsid=${user.cdsid}";
    }

</script>
</body>

</html>