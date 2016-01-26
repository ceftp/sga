<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>Cadastrar Produto </legend>
		<form action="incluirProduto" method="post"	enctype="multipart/form-data">
		
		<div style="text-align: center; color: red;"> ${mensagem} </div>
		
			<p>Nome :</p>
			<input type="text" name="nome"> <br /> <br />
			<p>Marca :</p>
			<input type="text" name="marca"> <br /> <br />
			<p>Codigo :</p>
			<input type="text" name="codigo"> <br /> <br />
			<p>Preço Custo :</p>
			<input type="text" name="precoCusto"> <br /> <br />
			<p>Preço Venda :</p>
			<input type="text" name="precoVenda"> <br /> <br />
			<p>Quantidade:</p>
			<input type="text" name="quantidade"> <br /> <br />
			<p>Imagem :</p>
			<img alt=""	src="/home/ifpe/workspace/SGA/WebContent/view/img">
			<input type="file" name="file"> <br /> <br />
			<p>Data da compra :</p>
			<input type="text" name="dataCompra"> <br /> <br /> <input
				type="submit" value="CADASTRAR PRODUTO">
		</form>
	</fieldset>
</body>
</html>