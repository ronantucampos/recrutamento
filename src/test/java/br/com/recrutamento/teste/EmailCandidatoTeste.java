package br.com.recrutamento.teste;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

import br.com.recrutamento.entidade.Candidato;
import br.com.recrutamento.entidade.EmailCandidato;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=EmailCandidato.class,loader=AnnotationConfigContextLoader.class)
@TestExecutionListeners()
public class EmailCandidatoTeste {

	@Autowired
	private EmailCandidato email = new EmailCandidato();
	
	@Test
	public void testeEmail() {
		
		Candidato candidato = new Candidato();
		candidato.setNome("Teste");
		candidato.setEmail("emailteste@gmail.com");
		candidato.setConhecePython(7);
		candidato.setConheceDjango(7);
		
		assertTrue(candidato.getNome() != "");
		
		assertTrue(email.formataEmail(candidato).getSubject().toString() == "Obrigado por se candidatar");
		
	}

}
