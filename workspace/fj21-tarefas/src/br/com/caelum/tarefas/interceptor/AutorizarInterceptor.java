package br.com.caelum.tarefas.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AutorizarInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response,
			Object controller) throws Exception {
	
		System.out.println("passou no handler");
		
		String uri = request.getRequestURI();
		
		
		if (uri.endsWith("loginForm") ||	
				uri.endsWith("efetuaLogin") ||
					uri.contains("resources")) {
			
			System.out.println("passou no if1");
			return true;
		}
		
		if (request.getSession().getAttribute("usuarioLogado") != null) {
			System.out.println("passou no if2 usuario logado");

			return true;
		}
		
		response.sendRedirect("loginForm");
		return false;
		
	}

}
