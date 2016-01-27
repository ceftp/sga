package br.com.sga.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.sga.dao.FornecedorDao;
import br.com.sga.model.Fornecedor;

@Controller
public class FornecedorController {
	
	@RequestMapping("/incluirFornecedor")
	public String incluirFornecedor(Fornecedor fornecedor, Model model){
		FornecedorDao dao = new FornecedorDao();
		dao.salvar(fornecedor);
		
		model.addAttribute("mensagem", "Fornecedor incluido com Sucesso");
		return "menu";
	}
	
	@RequestMapping("/cadastrarFornecedor")
	public String exibirTelaFornecedor(){
		return "fornecedor/cadastrar";
	}
	
	
	@RequestMapping("listarFornecedor")
	public String listarFornecedor(Model model) {
		FornecedorDao dao = new FornecedorDao();
		List<Fornecedor> listaFornecedor = dao.listar();
		model.addAttribute("listaFornecedor", listaFornecedor);
		
		return "fornecedor/pesquisarFornecedor";
	}
	
	

}
