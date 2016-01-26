package teste.br.com.sga.controller;

import org.junit.Assert;
import org.junit.Test;


import br.com.sga.dao.ProdutoDao;
import br.com.sga.model.Produto;

public class TesteProduto {

	@Test
	public void testeInserirProduto() {
		Produto produto = new Produto();

		produto.setId(1);
		produto.setNome("opa");
		produto.setCodigo("codigo");
		produto.setMarca("marca");
		produto.setPrecoCusto(200);
		produto.setPrecoVenda(250);
		produto.setDataCompra(null);
		produto.setQuantidade(1);
		produto.setImagem("imagem");

		ProdutoDao dao = new ProdutoDao();
		
		int qtdInicio = dao.listar().size(); 
		dao.salvar(produto); 
		int qtdFim = dao.listar().size(); 

		Assert.assertEquals(qtdInicio + 1, qtdFim);
	}

}
