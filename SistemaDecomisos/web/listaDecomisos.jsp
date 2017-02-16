<%-- 
Document   : actaDecomiso
Created on : 26-oct-2016, 11:52:35
Author     : Mery Zúñiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sistema de Gestión de Decomisos</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/chosen.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="css/nprogress.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


        <!-- Custom Theme Style -->
        <link href="css/custom.min.css" rel="stylesheet">
        <link href="css/forms.css" rel="stylesheet">
        <link rel="shortcut icon" href="media/images/logo2.ico" type="image/x-icon" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
        <link href="fileinput/themes/explorer/theme.css" media="all" rel="stylesheet" type="text/css"/> 
        <link rel="stylesheet" href="css/jquery.dataTables.min.css">

    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="home.jsp" class="site_title"><img src="media/images/logo_home.png"></a>
                        </div>
                        <div class="clearfix"></div>
                        <%@ include file="Fragmentos/side.jspf" %>
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>
                            <%@ include file="Fragmentos/header.jspf" %>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->

                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Daily active users <small>Sessions</small></h2>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <table class="table table-striped table-bordered bootstrap-datatable datatable responsive" id="decomisosTable">
                                            <thead>
                                                <tr class="headings">
                                                    <th>
                                                        <input type="checkbox" class="tableflat">
                                                    </th>
                                                    <th>Invoice </th>
                                                    <th>Invoice Date </th>
                                                    <th>Order </th>
                                                    <th>Bill to Name </th>
                                                    <th>Status </th>
                                                    <th>Amount </th>
                                                    <th class=" no-link last"><span class="nobr">Action</span>
                                                    </th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer selected">
                                                    <td class="a-center ">
                                                        <input type="checkbox" checked class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer selected">
                                                    <td class="a-center ">
                                                        <input type="checkbox" checked class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer selected">
                                                    <td class="a-center ">
                                                        <input type="checkbox" checked class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer selected">
                                                    <td class="a-center ">
                                                        <input type="checkbox" checked class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="tableflat">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <br />
                            <br />
                            <br />

                        </div>
                    </div>
                    <!-- footer content -->
                    <footer>
                        <div class="pull-right">
                            Municipalidad de Heredia. 2016 Todos los derechos reservados.
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <!-- /footer content -->

                </div>
                <!-- /page content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="js/chosen.jquery.js"></script>
        <script src="js/jquery.maskedinput.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="js/fastclick.js"></script>
        <!-- NProgress -->
        <script src="js/nprogress.js"></script>
        <!--Date-->
        <script src="js/daterangepicker.js"></script>
        <script src="js/moment.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="js/custom.js"></script>
        <script src="js/home.js"></script>
        <script src="js/Utils.js"></script>
        <script src="js/forms.js"></script>
        <script src="js/multifield.js"></script>
        <script src="js/validator.js"></script>
        <script src="js/listaDecomisos.js"></script>
        <script src="js/Proxy.js"></script>
        <script src="js/BaseDatos.js"></script>        
        <script src="js/objects/ActaDecomiso.js"></script>
        <script src="js/objects/ActaDonacion.js"></script>
        <script src="js/objects/Decomiso.js"></script>
        <script src="js/objects/Distrito.js"></script>
        <script src="js/objects/Funcionario.js"></script>
        <script src="js/objects/Interesado.js"></script>
        <script src="js/objects/Lugar.js"></script>
        <script src="js/objects/Persona.js"></script>
        <script src="js/objects/Policia.js"></script>
        <script src="js/objects/Testigo.js"></script>  
        <script src="js/objects/Usuario.js"></script>  
        <script src="fileinput/js/plugins/sortable.js" type="text/javascript"></script>
        <script src="fileinput/js/fileinput.js" type="text/javascript"></script>
        <script src="fileinput/js/locales/es.js" type="text/javascript"></script> 
        <script src="fileinput/themes/explorer/theme.js" type="text/javascript"></script>
    </body>
</html>

