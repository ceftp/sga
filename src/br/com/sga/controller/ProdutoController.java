package br.com.sga.controller;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.sga.dao.ProdutoDao;
import br.com.sga.model.Produto;
import br.com.sga.util.Util;

@Controller
public class ProdutoController {
	
	@RequestMapping("/incluirProduto")
	public String incluirProduto(Produto produto ,@RequestParam("file") MultipartFile imagem, Model model){
		
		if (Util.fazerUploadImagem(imagem)) {
			produto.setImagem(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
			}
		ProdutoDao dao = new ProdutoDao();
		dao.salvar(produto);
		System.out.println("Entrou no segundo metodo");
		
		model.addAttribute("mensagem", "Produto Inclui­do com Sucesso");
		return "menu";
	}
	
	@RequestMapping("/cadastrar")
	public String exibirCadastrarProduto(){
		
		System.out.println("ENTROU NO METODO");
		return "produto/cadastrar";
	}
	
	@RequestMapping("listarProduto")
	public String listarProduto(Model model) {
		ProdutoDao dao = new ProdutoDao();
		List<Produto> listaProduto = dao.listar();
		model.addAttribute("listaProduto", listaProduto);

		return "produto/pesquisarProduto";
	}
	
	
	@RequestMapping("removerProduto")
	public String removerProduto(Produto produto, Model model) {
	ProdutoDao dao = new ProdutoDao();
	dao.remover(produto);
	model.addAttribute("mensagem", "Produto Removido com Sucesso");
	
	return "forward:listarProduto";
	}
	
	@RequestMapping("alteraProduto")
	public String alterarProduto(Produto produto, Model model) {

		ProdutoDao dao = new ProdutoDao();
		Produto produtoalterar = dao.buscarPorId(produto.getId());
		model.addAttribute("produto", produtoalterar);

		return "produto/editar";
	}
	
	
	@RequestMapping("editar")
	public String processaEditarProduto(Model model, Produto produto) throws SQLException{
		ProdutoDao dao = new ProdutoDao(); 
		dao.alterar(produto);
		
		model.addAttribute("mensagem", "Produto alterado com Sucesso");

		return "forward:listarProduto";
	}


}


