package sample.java;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns = { "/*" })
public class VposFilter implements Filter {

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter working");
		
		((HttpServletResponse) response).reset(); //Instead of Remove because we do not have remove.
		
		chain.doFilter(request, response);

		((HttpServletResponse) response).setHeader("Set-Cookie", "key=value; HttpOnly; Secure; SameSite=None");
		((HttpServletResponse) response).setHeader("X-Frame-Options", "AllowAll");
		((HttpServletResponse) response).setHeader("Access-Control-Allow-Origin", "*");
		((HttpServletResponse) response).setHeader("Access-Control-Allow-Credentials", "true");

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
