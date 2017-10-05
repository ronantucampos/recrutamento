package br.com.recrutamento.entidade;

import java.util.ArrayList;

import org.springframework.mail.SimpleMailMessage;

public class EmailCandidato {
	
	public SimpleMailMessage formataEmail(Candidato candidato) {
		SimpleMailMessage email = new SimpleMailMessage();
		String assunto = "Obrigado por se candidatar";
		String conteudo = "Obrigado por se candidatar, assim que tivermos uma vaga disponível para programador";
		ArrayList<String> listaConhecimento = new ArrayList<String>();
		String conhecimento = "";
		
		if (candidato.getConheceHtml() >= 7 && 
			candidato.getConheceCss() >= 7 &&
			candidato.getConheceJS() >= 7) 
		{
			listaConhecimento.add(" Front-End");
		}
		
		if (candidato.getConhecePython() >= 7 &&
			candidato.getConheceDjango() >= 7) 
		{
			listaConhecimento.add(" Back-End");
		}
		
		if (candidato.getConheceDevIOS() >= 7 &&
				candidato.getConheceDevAndroid() >= 7) 
		{
				listaConhecimento.add(" Mobile");
		}
		
		Integer indice = 1;
		Integer tamanho = listaConhecimento.size();
		
		for (String lista : listaConhecimento)
		{
			if (tamanho == 1 || indice == 1)
			{				
				conhecimento += lista;
			}else 
			{ 
				if (indice == tamanho)
				{
					conhecimento += " e"+ lista;
				} else
				{
					conhecimento += ","+ lista;
				}
				}
			indice += 1;
		}
		
		conteudo = conteudo + conhecimento + " entraremos em contato";
		
		email.setTo(candidato.getEmail());
        email.setSubject(assunto);
        email.setText(conteudo);
		
		return email;
	}
}
