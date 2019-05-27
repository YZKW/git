<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(name){
		//1.创建异步对象
		var  xhr = new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(xhr.readyState == 4 && xhr.status == 200){
				//4.接受相应的数据
				var data = xhr.responseText;
				if(data == true){
					document.getElementById("s").innerText ="该名称可以被使用";
				}else{
					document.getElementById("s").innerText ="该名称已被占用";
				}
				//alert(data);
			}
		}

		//2.创建一个新的请求
		xhr.open("get","CheckServlet?name="+name,false);
		//3.发送异步请求
		xhr.send(null);
		
		
	}
</script>
</head>
<body>
	<form>
		请输入用户名:<input type="text" name="uname" id="uname" onblur="check(this.value);" />
		<span id="s"></span>
	
	</form>

</body>
</html>