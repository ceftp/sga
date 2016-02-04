package br.com.sga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.sga.dao.AdminDao;
import br.com.sga.model.Admin;

@Controller
public class AdminController {
	
	@RequestMapping("/logar")
	public String logando(Admin admin, Model model){
		AdminDao dao = new AdminDao();
		Admin logandoadmin = dao.Logar(admin.getNome(), admin.getSenha());
		if(admin.getNome() + admin.getSenha() != null ){
			model.addAttribute("logou", logandoadmin);
		}
		return "comum/menu";
		
	}
	
}
