<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

 <head>
        <meta charset="utf-8">
        <title>商品详情</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Specific Meta  -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style1.css" rel="stylesheet">
       
        <script src="js/jquery.min.js"></script>
        </head>
<body>                  
            <div class="header-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-12 col-xs-8">
                            <div class="logo">
                                <a href="loginForm"><img src="images/logoxin.png" alt="" /></a>
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
                        <div class="header-in">
						<div>当前在线人数：${applicationScope.count}</div>
						 <div>${ sessionScope.user.username }</div>
						 <a href ="main">注销</a>
	  					</div>
                        <div class="col-md-3 col-xs-4 col-sm-6">
                            <div class="shopping-cart">
                                <a class="cart" href="#" title="view shopping cart"><span class="hidden-xs"> <br><small></small></span></a>
                                <div class="top-cart-content">
                                    <div class="media header-middle-checkout">
                                        <div class="media-left check-img">
                                            <img src="images/login-xiaomi4.jpg" alt="" />
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
<div class="main-menu-area hidden-xs hidden-sm">
		<div class="container">
			<div class="row">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
												
						<li><a href="huawei" >华为</a></li>            
						<li><a href="oppo" >oppo</a></li>						  				 
						<li><a href="xiaomi" >小米</a></li>
						<li><a href="vivo" >vivo</a></li>
						<li><a href="chuizi" >锤子</a></li>
						<li><a href="collection.action?username=${ sessionScope.user.username }" >收藏列表</a></li>
                		<li><a href="order">订单列表</a></li>
                		<li><a href="cart.action?username=${ sessionScope.user.username }"  class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> 购物车 </a>  </li>       
						<li><a href="comment" >订单评价</a></li>
					</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
<div class="container" >
 		<c:forEach items="${requestScope.p_list }" var="product">
 <div class="col-md-1" >
   				
     <div class="row">
        <div class="thumbnail"> <img src="images/${product.image }" alt="Thumbnail Image 1" class="img-responsive"></div>
     </div>
   
      <div class="row">
        	<div class="thumbnail"> <img src="images/${product.image2 }" alt="Thumbnail Image 2" class="img-responsive"></div>
      </div>
      
      <div class="row">
      		<div class="thumbnail"> <img src="images/${product.image3 }" alt="Thumbnail Image 3" class="img-responsive"></div>
      </div>
       
      <div class="row">
       		<div class="thumbnail"> <img src="images/${product.image4 }" alt="Thumbnail Image 4" class="img-responsive"></div>
      </div>
    </div>
   <div class="col-md-6" >
   		<div class=" text-center"> <img src="images/${product.image }"  style="width:300px"></div>
   </div>
   <div class="col-md-4 col-md-offset-1">
   		<div><p align="left">${product.name}</p> </div>
        <br>
        <div class="panel panel-default">
            <div class="panel-heading">
                <p>${product.descripts}</p>
            </div>
        </div>
 		<div class="available">
								<ul>
									<li>选择颜色:
										<select>
										<option>玫瑰金</option>
										<option>曜石黑</option>
										<option>陶瓷白</option>
										<option>草木绿</option>
										<option>星空灰</option>
									</select></li>
								<li>购买方式:<select>
									<option>官方标配</option>
									<option>定位套装</option>
									<option>豪华套装</option>
									<option>移动优惠购</option>
									<option>联通优惠购</option>
									<option>电信优惠购</option>
									</select></li>
								<li>选择版本:<select>
									<option>2GB 32G</option>
									<option>3GB 64G</option>
									<option>4GB 128G</option>
									<option>6GB 128G</option>
								</select></li>
							</ul>
						</div>
        <p>价格  ${product.price}   </p>
       	<div class="row">          
         </div>  
         <p> <div class="col-md-6">已销售： ${product.sales}  台</div> 
             <div class="col-md-6">库存：${product.stock}   台</div> 
         <br><br> 
         <form action="newcollect" method="get">
         <div class="col-md-9">
         		<input type="hidden" name="id" id="id" tabindex="1" class="form-control" value="${product.id}" > 
                <input type="hidden" name="goodsname" id="goodsname" tabindex="1" class="form-control" value="${product.name}" >
                <input type="hidden" name="price" id="price" tabindex="1" class="form-control" value="${product.price}" >
                <input type="hidden" name="image" id="image" tabindex="1" class="form-control" value="${product.image}" >
                <input type="hidden" name="descripts" id="descripts" tabindex="1" class="form-control" value="${product.descripts}" >
                <input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${ sessionScope.user.username }" >
          </div> 
        <div class="row">
            <div class="col-md-5  col-md-offset-1">
                 <button type="submit" class="btn btn-danger btn-lg " >加入收藏列表</button>
            </div>          
         </div>
        </form>
         
        <div class="row">
            <div class="col-md-5  col-md-offset-1">
                  <p><a href="save?product_id=${product.id}" class="btn btn-danger btn-lg " role="button"> 加入购物车</a></p>
            </div>
           </div>          
     
        </div> 
   </c:forEach>
   </div>   
 <hr>
 <div class="container">
 <form action="product.comment" method="post">
 <c:forEach items="${requestScope.comment_list }" var="c">
  <div class="row">
            <h1 class="text-left">商品评论</h1>
    </div>
   <div class="row">
   		<div class="col-md-2">
           <p>用户名 ${c.username}</p>
        </div>
        <div class="col-md-10">
        <div class="row">
         	<ul>
            	<li>商品质量:   <a class="text-danger">${c.quality}分 </a></li>
            	<li>卖家服务:   <a class="text-danger">${c.service}分 </a> </li>
                <li>物流服务:   <a class="text-danger">${c.logistics}分 </a></li>
            </ul> 
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <p>${c.comments}</p>
            </div>
            <div class="row">
            <div class="col-md-2 col-md-offset-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            <div class="col-md-2">
             <img src="1.jpg" class="img-responsive">
            </div>
            </div>
        </div>
             
        </div>
   </div>
   </c:forEach>
   
   </form>
</div>
		</div>  
		

<p class="footer-class">Copyright@利</p>
			<script type="text/javascript">
						$(document).ready(function() {
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				

		
   </body>
   </html>