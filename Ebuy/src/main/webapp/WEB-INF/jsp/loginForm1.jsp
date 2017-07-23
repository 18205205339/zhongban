<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>

<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <title>login</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Specific Meta  -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <!-- Custom CSS -->
        <link href="css/style1.css" rel="stylesheet">
            <script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>      
    </head>

    <body>
        <header>
            
            <div class="header-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-12 col-xs-8">
                            <div class="logo">
                                <a href="index.html"><img src="images/logoxin.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 hidden-xs">
                            <div class="search-box">
                                <form action="#">
                                    <input class="form-control search-form" type="text" placeholder="search" />
                                    <button class="search-button" value="Search" type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 col-xs-4 col-sm-6">
                            <div class="shopping-cart">
                                <a class="cart" href="#" title="view shopping cart"><span class="hidden-xs">shopping <br><small>2 item - ￥6000</small></span></a>
                                <div class="top-cart-content">
                                    <div class="media header-middle-checkout">
                                        <div class="media-left check-img">
                                            <a href="#"><img src="images/login-xiaomi4.jpg" alt="" /></a>
                                        </div>
                                        <div class="media-body checkout-content">
                                            <h4 class="media-heading">
                                                    <span class="cart-count">高配</span>
                                                    <a href="#">小米4</a>
                                                    <span class="btn-remove checkout-remove" title="remove this product from my cart"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                </h4>
                                            <p>￥2500</p>
                                        </div>
                                    </div>
                                    <div class="media header-middle-checkout last-child">
                                        <div class="media-left check-img">
                                            <a href="#"><img src="images/login-oppor9s.jpg" alt="" /></a>
                                        </div>
                                        <div class="media-body checkout-content">
                                            <h4 class="media-heading">
                                                    <span class="cart-count">高配</span>
                                                    <a href="#">oppoR9s</a>
                                                    <span class="btn-remove checkout-remove" title="remove this product from my cart"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                </h4>
                                            <p>￥3500</p>
                                        </div>
                                    </div>
                                    <div class="cart-total">
                                        <span>Total</span>
                                        <span><b>￥6000</b></span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
       
        <!-- slider-start -->
<div class="container">
		<div class="account">
				<div class="form-bottom">
			        <form class="form-horizontal" action="login" method="post" >
			            <div class="form-group">
                            <i class="fa fa-user fa-lg"></i>
			                <label class="sr-only" for="loginname">Username</label>
			                <input type="text" name="loginname" placeholder="用户名" class="form-username form-control" id="loginname">
			            </div>
			            <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
			                <label class="sr-only" for="password">Password</label>
			                <input type="password" name="password" placeholder="密码" class="form-password form-control" id="passward">
			            </div>
                        <div class="form-group">  
                            <label class="checkbox">  
                                <input type="checkbox" name="remember"/> 记住密码      <a href="findpassword">忘记密码</a>
                                <a href="alterpassword">修改密码</a>
                          </label> 
                        	
                        </div>
                         
			            <button type="submit" class="btn btn-success">登录</button>
			        </form>
			        <div class="header">	
					<a href="register">注册账号</a>				
		</div>
		        </div>
		</div>
	</div>
       
        
    </body>

</html>

