package br.com.sga.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.sga.dao.FornecedorDao;
import br.com.sga.model.Fornecedor;

@Controller
public class FornecedorController {
	
	
	@RequestMapping("/cadastrarFornecedor")
	public String exibirTelaFornecedor(){
		return "fornecedor/cadastrar";
	}
	
	
	@RequestMapping("/incluirFornecedor")
	public String incluirFornecedor(Fornecedor fornecedor, Model model){
		FornecedorDao dao = new FornecedorDao();
		dao.salvar(fornecedor);
		
		model.addAttribute("mensagem", "Fornecedor incluido com Sucesso");
		return "comum/menu";
	}

	
	@RequestMapping("listarFornecedor")
	public String listarFornecedor(Model model) {
		FornecedorDao dao = new FornecedorDao();
		List<Fornecedor> listaFornecedor = dao.listar();
		model.addAttribute("listaFornecedor", listaFornecedor);
		
		return "fornecedor/pesquisarFornecedor";
	}
	
	@RequestMapping("removerFornecedor")
	public String removerFornecedor(Fornecedor fornecedor, Model model){
		
		FornecedorDao dao = new FornecedorDao();
		dao.remover(fornecedor);
		model.addAttribute("mensagem", "Fornecedor removido com sucesso");
		
		return "forward:listarFornecedor";
	}
	
	@RequestMapping("alteraFornecedor")
	public String processaLerProduto(Model model, Fornecedor fornecedor){
		FornecedorDao dao = new FornecedorDao();
		Fornecedor fornecedoalterar = dao.buscarPorId(fornecedor.getId());
		model.addAttribute("fornecedor", fornecedoalterar);
		
		return "fornecedor/editar";
		
	}
	
	@RequestMapping("editarFornecedor")
	public String processaEditarFornecedor(Model model,Fornecedor fornecedor) throws SQLException{
		FornecedorDao dao = new FornecedorDao();
		dao.alterar(fornecedor);
		model.addAttribute("mensagem", "Fornecedor alterado com sucesso");
		
		return "forward:listarFornecedor";
	}

}
