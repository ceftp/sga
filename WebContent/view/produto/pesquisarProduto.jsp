
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
			<td>Nome</td>
			<td>Código</td>
			<td>Marca</td>
			<td>Preço Custo</td>
			<td>Preço Venda</td>
			<td>Data compra</td>
			<td>Quantidade</td>
			<td>Imagem</td>
			<td>Remover</td>
			<td>Alterar</td>
	</tr>
			<c:forEach var="produto" items="${listaProduto}">
				<tr>
					<td>${produto.id}</td>
					<td>${produto.nome}</td>
					<td>${produto.codigo}</td>
					<td>${produto.marca}</td>
					<td>R$ ${produto.precoCusto}</td>
					<td>R$ ${produto.precoVenda}</td>
					<td><fmt:formatDate value="${produto.dataCompra}"	pattern="dd/MM/yyyy" /></td>
					<td>${produto.quantidade}</td>
					<td><img src="/view/img${produto.imagem}"></td>
					<td><a href="removerProduto?id=${produto.id}">Remover</a></td>
					<td><a href="alteraProduto?id=${produto.id}">alterar</a></td>
				</tr>
				</c:forEach>	
			</table>
			<br/>
			<a href="menu"> <button  class="btn btn-success btn-lg">Voltar</button></a>
</body>
</html>