package br.com.caelum.testes;

import com.google.gson.Gson;

import br.com.caelum.agenda.modelo.Contato;

public class Gerajson {

	public Gerajson(Contato contato){
	Gson gson = new Gson();
	
	System.out.println(gson.toJson(contato));	
	}
}
