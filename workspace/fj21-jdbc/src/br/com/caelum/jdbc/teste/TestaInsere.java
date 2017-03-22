package br.com.caelum.jdbc.teste;

import java.util.Calendar;
import java.util.GregorianCalendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("Mano menezes");
		contato.setEmail("mmenezes@caelum.com.br");
		contato.setEndereco("R. Vergueiro 3185 cj57");
		//contato.setDataNascimento(Calendar.getInstance());
		contato.setDataNascimento(new GregorianCalendar(1963,Calendar.AUGUST,21));
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
	}
}
