<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body background='photo\a.jpg' style="font-family:'华文新魏'">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" role="form" >
				<div>
					&nbsp;
					&nbsp;
					&nbsp;
				    &nbsp;					
				</div>
            </form>
			<form class="form-horizontal" role="form" >
			    
			    <div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						用户名
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="username" id="inputPassword3">
					</div>
				</div>
			    
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						密码
					</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password" id="inputPassword3">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						确认密码
					</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password1" id="inputPassword3">
					</div>
				</div>
                <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
                            
							确认修改
                            
						</button>
						<button type="submit" class="btn btn-default">
						<a href="login"> 返回登陆 </a>                                                        
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    <script>
    var userName,
            password,
            password2;
    function sub() {
        userName = document.getElementById('userName').value;
        password = document.getElementsByClassName('password')[0].value;
        password2 = document.getElementsByClassName('password')[1].value;
 
        if (userName.length < 4 || userName.length > 10) {
            alert('用户名长度为4~10位');
            return;
        }
 
        if (!password || !password2) {
            alert('密码为空');
            return;
        }
 
        if (password !== password2) {
            alert('两次密码输入不一样,请重新输入');
            return;
        }
 
        alert('注册成功');
 
    }
</script>
</body>
</html>