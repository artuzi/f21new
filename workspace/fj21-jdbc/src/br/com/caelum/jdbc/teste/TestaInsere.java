package br.com.caelum.jdbc.teste;

import java.util.Calendar;
import java.util.GregorianCalendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("Juliana dos teste");
		contato.setEmail("juliana@caelum.com.br");
		contato.setEndereco("R. Vergueiro 3185 cj57");
		//contato.setDataNascimento(Calendar.getInstance());
		contato.setDataNascimento(new GregorianCalendar(1982,Calendar.FEBRUARY,19));
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
	}
}
