package teste.br.com.sga.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Assert;
import org.junit.Test;


import br.com.sga.dao.ProdutoDao;
import br.com.sga.model.Produto;

public class TesteProduto {

	
	@Test
	public void testeInserirProduto() {

		Date date = null;
		String dataEmTexto = "23/23/2321";
		try {
			date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		} catch (ParseException e) {
			System.out.println("Falha na conversão");
		}
		
		Produto produto = new Produto();

		produto.setId(1);
		produto.setNome("opa");
		produto.setCodigo("codigo");
		produto.setMarca("marca");
		produto.setPrecoCusto(200);
		produto.setPrecoVenda(250);
		produto.setDataCompra(date);
		produto.setQuantidade(1);
		produto.setImagem("imagem");

		ProdutoDao dao = new ProdutoDao();
		
		int qtdInicio = dao.listar().size(); 
		dao.salvar(produto); 
		int qtdFim = dao.listar().size(); 

		Assert.assertEquals(qtdInicio + 1, qtdFim);
	}

}
