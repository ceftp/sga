<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="editarFornecedor" method="post">
		<input type='hidden' name='id' value='  ${fornecedor.id} ' />
		Razão social: <br/> <input type='text' name="razaoSocial" value='${fornecedor.razaoSocial} ' /> <br />
		Cnpj: <br/> <input type='text' name="cnpj" value='${fornecedor.cnpj} ' /> <br />
		Representante: <br/> <input type='text' name="representante" value='${fornecedor.representante} ' /> <br />
		Telefone: <br/> <input type='text' name="telefone" value='${fornecedor.telefone} ' /> <br />
		Endereço <br/> <input type='text' name="endereco" value='${fornecedor.endereco} ' /> <br />

			<input type='submit' value='Alterar' />

		</form>

	</body>
</html>