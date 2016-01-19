<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> Bem vindo Administrador</title>

<link rel="stylesheet" type="text/css" href="css/Ceft.css">
	
	
</head>
<body>

<div class="loginAdmin" align="center" >
	
	 <a href="index.php" ><img alt="" style="margin-top: 2%" src="Imagens/ceft.png"> </a> 
	<div style="margin-top: 8%; margin-bottom: 10%">
	<form action="conexaoAdmin.php" method="POST">
	<label style="font-size: 20px">Login</label> <br>
	<input id=login type="text" name="login" >
	<br>
	<label style="font-size: 20px">Senha</label> <br>
	<input id=senha type="password" name="senha" >
	<br><br>
	<input style="font-size: 20px " id=entrar type="submit" name="entrar" value="Entrar">
	
	</form>
	</div>
	
	

</div>

</body>
</html>
