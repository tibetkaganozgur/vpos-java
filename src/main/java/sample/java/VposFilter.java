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

@WebFilter(urlPatterns = {"/VPOS.jsp"})
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
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Filter working");
		chain.doFilter(request, response);
		((HttpServletResponse)response).setHeader("Set-Cookie", "key=value; HttpOnly;Secure; SameSite=Strict"); //safari 3rd party cookies does not work if SameSite attribute is set.
		//((HttpServletResponse)response).setHeader("Set-Cookie", "key=value; HttpOnly;Secure; SameSite=None");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
