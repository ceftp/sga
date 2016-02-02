
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar </title>
</head>
<body>

<div style="text-align: center; color: red;"> ${mensagem} </div>
	<table border='1' style='width: 100%;'>
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			<td>Id</td>
			<td>Razão Social</td>
			<td>Cnpj</td>
			<td>Representante</td>
			<td>Telefone</td>
			<td>Endereço</td>
			<td>Remover</td>
			<td>Alterar</td>
	</tr>
			<c:forEach var="fornecedor" items="${listaFornecedor}">
				<tr>
					<td>${fornecedor.id}</td>
					<td>${fornecedor.razaoSocial}</td>
					<td>${fornecedor.cnpj}</td>
					<td>${fornecedor.representante}</td>
					<td>${fornecedor.telefone}</td>
					<td>${fornecedor.endereco}</td>
					<td><a href="removerFornecedor?id=${fornecedor.id}">Remover</a></td>
					<td><a href="alteraFornecedor?id=${fornecedor.id}">alterar</a></td>
				</tr>
				</c:forEach>	
			</table>
			<br/>
			<a href="menu"> <button  class="btn btn-success btn-lg">Voltar</button></a>
			
</body>
</html>