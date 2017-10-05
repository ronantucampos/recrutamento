package br.com.recrutamento.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import br.com.recrutamento.entidade.Candidato;
import br.com.recrutamento.entidade.EmailCandidato;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		
		ModelAndView candidato = new ModelAndView("home", "cmdCandidato", new Candidato());
		
		return candidato;
	}
	
	@Autowired
	private JavaMailSender envioEmail;
	
	@RequestMapping(value = "/index", method = RequestMethod.POST )
	public ModelAndView incricaoConcluida(@Valid @ModelAttribute("cmdCandidato") Candidato candidato, BindingResult result) {
		
		String msgErro = "";
		ModelAndView sucesso = new ModelAndView("home");
		
		if (result.hasErrors()) {
			sucesso.addObject("cmdCandidato", candidato);
		} else {
			
			EmailCandidato formataemail = new EmailCandidato();
			
			try {
				envioEmail.send(formataemail.formataEmail(candidato));
			}catch (Exception e) {
				msgErro = e.getMessage();
			}
			
			if (msgErro.isEmpty()) {
				sucesso.addObject("cmdCandidato", candidato.novoCandidato());
				sucesso.addObject("MsgEmail", "Candidatura realizada com sucesso!");
			}else {
				sucesso.addObject("cmdCandidato", candidato);
				sucesso.addObject("MsgEmail", "Não foi possível realizar a candidatura. <br>Erro:<br>"+msgErro);
			}
			
		}
		
		return sucesso;
	}
	
}
