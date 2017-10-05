package br.com.recrutamento.entidade;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Candidato {
	
	@NotEmpty(message = "Obrigatório informar o nome")
	private String nome;
	
	@NotEmpty(message = "Obrigatório informar o e-mail")
	@Email
	private String email;
	
	private Integer ConheceHtml;
	
	private Integer ConheceCss;
	
	private Integer ConheceJS;
	
	private Integer ConhecePython;
	
	private Integer ConheceDjango;
	
	private Integer ConheceDevIOS;
	
	private Integer ConheceDevAndroid;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getConheceHtml() {
		return ConheceHtml;
	}

	public void setConheceHtml(Integer conheceHtml) {
		ConheceHtml = conheceHtml;
	}

	public Integer getConheceCss() {
		return ConheceCss;
	}

	public void setConheceCss(Integer conheceCss) {
		ConheceCss = conheceCss;
	}

	public Integer getConheceJS() {
		return ConheceJS;
	}

	public void setConheceJS(Integer conheceJS) {
		ConheceJS = conheceJS;
	}

	public Integer getConhecePython() {
		return ConhecePython;
	}

	public void setConhecePython(Integer conhecePython) {
		ConhecePython = conhecePython;
	}

	public Integer getConheceDjango() {
		return ConheceDjango;
	}

	public void setConheceDjango(Integer conheceDjango) {
		ConheceDjango = conheceDjango;
	}

	public Integer getConheceDevIOS() {
		return ConheceDevIOS;
	}

	public void setConheceDevIOS(Integer conheceDevIOS) {
		ConheceDevIOS = conheceDevIOS;
	}

	public Integer getConheceDevAndroid() {
		return ConheceDevAndroid;
	}

	public void setConheceDevAndroid(Integer conheceDevAndroid) {
		ConheceDevAndroid = conheceDevAndroid;
	}
	
	public Candidato novoCandidato() {
		return new Candidato();
	}

	public Candidato() {
		super();
		this.nome = "";
		this.email = "";
		this.ConheceHtml = 0;
		this.ConheceCss = 0;
		this.ConheceJS = 0;
		this.ConhecePython = 0;
		this.ConheceDjango = 0;
		this.ConheceDevIOS = 0;
		this.ConheceDevAndroid = 0;
	}
	
	
}
