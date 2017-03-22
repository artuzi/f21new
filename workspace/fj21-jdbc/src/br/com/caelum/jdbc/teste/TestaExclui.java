package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaExclui {
	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		
		Contato contato = new Contato();
		
		contato.setId(2L);
		
		dao.remove(contato);
		
		System.out.println("Registro excluido: " + contato.getId());
		
	}
}
