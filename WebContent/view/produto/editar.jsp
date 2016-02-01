<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="editar" method="post"	enctype="multipart/form-data">
		<input type='hidden' name='id' value='  ${produto.id} ' />
		Nome: <br/> <input type='text' name='nome' value=' ${produto.nome} ' /> <br />
		Codigo: <br/> <input type='text' name='email' value='  ${produto.codigo} ' /> <br />
		Marca: <br/> <input type='text' name='marca' value='   ${produto.marca} ' /> <br />
		Preço Custo: <br/> <input type='text' name='precoCusto' value=' ${produto.precoCusto} ' /> <br />
		Preço Venda <br/> <input type='text' name='precoVenda' value='  ${produto.precoVenda} ' /> <br />
		Data compra: <br/> <input type='text' name='dataCompra' value='  ${produto.dataCompra}  ' /> <br />
		Quantidade: <br/> <input type='text' name='quantidade' value='${produto.quantidade}  ' /> <br />
		Imagem: <br/> <input type="hidden" name='imagem' value='"  ${produto.imagem} "' /> <br />

			<input type='submit' value='Alterar' />

		</form>

	</body>
</html>