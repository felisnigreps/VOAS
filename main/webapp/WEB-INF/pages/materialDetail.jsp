<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>VOAS v1.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link href="assets/js/colorPicker/bootstrap-colorpicker.css" rel="stylesheet">
    <link href="assets/js/validate/validate.css" rel="stylesheet">
    <link href="assets/js/idealform/css/jquery.idealforms.css" rel="stylesheet">


    <link rel="stylesheet" href="assets/js/timepicker/bootstrap-timepicker.css">
    <link rel="stylesheet" href="assets/js/datepicker/datepicker.css">
    <link rel="stylesheet" href="assets/js/datepicker/clockface.css">
    <link rel="stylesheet" href="assets/js/datepicker/bootstrap-datetimepicker.css">

    <link rel="stylesheet" type="text/css" href="assets/js/tag/jquery.tagsinput.css">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>
<!-- Preloader -->

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
                           placeholder="Search Menu..." autofocus="">
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
                    <div class="nest" id="validationClose">
                        <div class="title-alt">
                            <h6>材料详情页</h6>
                            <div class="titleClose">
                                <a class="gone" href="#validationClose">
                                    <span class="entypo-cancel"></span>
                                </a>
                            </div>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#validation">
                                    <span class="entypo-up-open"></span>
                                </a>
                            </div>

                        </div>


                        <div class="body-nest" id="validation">
                            <div class="form_center">

                                <form action="contact" id="contact-form" class="form-horizontal">
                                    <fieldset>
                                        <div class="control-group">
                                            <label class="control-label" for="materialId">物品序号</label>
                                            <div class="controls">
                                                <input type="text" class="form-control" name="materialId"
                                                       id="materialId" value="${material.id}">
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="cdsid">借用人员</label>
                                            <div class="controls">
                                                <input type="text" class="form-control" name="cdsid" id="cdsid"
                                                       value="${material.userCdsid}">
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="dept">部门名称</label>
                                            <div class="controls">
                                                <input type="text" class="form-control" name="dept" id="dept"
                                                       value="${material.department.name}">
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="borrowStart">预计借用</label>
                                            <div class="controls">
                                                <div class="controls">
                                                    <input class="form-control" type="date" id="borrowStart"
                                                           name="borrowStart"
                                                           value="${material.borrowStart}"/>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="date2">预计归还</label>
                                            <div class="controls">
                                                <input class="form-control" type="date" id="date2"
                                                       value="${material.borrowEnd}"/>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="date3">申请</label>
                                            <div class="controls">
                                                <input class="form-control" type="date" id="date3"
                                                       value="${material.createDate}"/>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="date4">实际归还</label>
                                            <div class="controls">
                                                <input class="form-control" type="date" id="date4"
                                                       value="${material.modifyDate}"/>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label" for="materialStatus">状态</label>
                                            <div class="controls">
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
                                            </div>
                                        </div>

                                        <div class="form-actions" style="margin:20px 0 0 0;">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <button type="reset" class="btn">Cancel</button>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--  END OF PAPER WRAP -->
<!-- RIGHT SLIDER CONTENT -->


<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>


<!-- /MAIN EFFECT -->

<script type="text/javascript" src="assets/js/colorPicker/bootstrap-colorpicker.min.js"></script>
<script type="text/javascript" src="assets/js/switch/bootstrap-switch.js"></script>
<script type="text/javascript" src="assets/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/idealform/jquery.idealforms.js"></script>

<script type="text/javascript" src="assets/js/tag/jquery.tagsinput.js"></script>

<script type="text/javascript">


</script>

</body>

</html>
