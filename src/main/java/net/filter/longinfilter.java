package net.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class longinfilter implements Filter{

	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)arg0;
		String name=(String) request.getSession().getAttribute("user");
		String path = request.getServletPath();
		System.out.print(request.getHeader("Origin"));
		if (name == null) {
			if (!path.equals("/index.jsp")) {
				if (!path.equals("/login")) {
					return ;
				}
			}
		}
		arg2.doFilter(arg0, arg1);
	}

}
