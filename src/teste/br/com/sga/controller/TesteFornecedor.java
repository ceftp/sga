package teste.br.com.sga.controller;

import org.junit.Assert;
import org.junit.Test;

import br.com.sga.dao.FornecedorDao;
import br.com.sga.model.Fornecedor;

public class TesteFornecedor {

	@Test
	public void TesteInserirFornecedor() {
		Fornecedor fornecedor = new Fornecedor();
		FornecedorDao dao = new FornecedorDao();

		fornecedor.setId(1);
		fornecedor.setRazaoSocial("dISTRIBUIDA Peças");
		fornecedor.setCnpj("3213.3213.2133-0001");
		fornecedor.setRepresentante("Junior jamelão");
		fornecedor.setTelefone("8213-3213");
		fornecedor.setEndereco("IFPE");

		int qtdInicio = dao.listar().size();
		dao.salvar(fornecedor);
		int qtdFim = dao.listar().size();

		Assert.assertEquals(qtdInicio + 1, qtdFim);

	}
}
