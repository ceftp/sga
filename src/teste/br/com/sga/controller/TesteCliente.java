package teste.br.com.sga.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Assert;
import org.junit.Test;

import br.com.sga.dao.ClienteDao;
import br.com.sga.model.Cliente;

public class TesteCliente {
	@Test
	public void testeInserirCliente() {

		Date date = null;
		String dataEmTexto = "23/23/2321";
		try {
			date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		} catch (ParseException e) {
			System.out.println("Falha na conversão");
		} 
		
		ClienteDao dao = new ClienteDao();
		Cliente cliente = new Cliente();

		cliente.setId(1);
		cliente.setNome("opa");
		cliente.setCpf("123.123.123-23");
		cliente.setEndereco("IFPE");
		cliente.setTelefone("9284-3213");
		cliente.setCarro("2321321");
		cliente.setPlaca("XKS-2312");
		cliente.setQuantidade(1);
		cliente.setData(date);

		int qtdInicio = dao.listar().size();
		dao.salvar(cliente);
		int qtdFim = dao.listar().size();

		Assert.assertEquals(qtdInicio + 1, qtdFim);
	}
}
