package net.test;


import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import net.entity.books;
import net.service.bookservice;
import net.service.userlogin;

@Controller
public class HelloWorldController{
	@Autowired
    @Qualifier("BookServiceImpl")
    private bookservice bookService;
	
	@Autowired
    @Qualifier("UserLoginImpl")
    private userlogin ulogin;
	
	@RequestMapping("/allbook")
	public String allbook(Model model,HttpSession session) {
		// TODO Auto-generated method stub
		String csrftocken=UUID.randomUUID().toString().replace("-","");
		session.setAttribute("csrftocken", csrftocken);
		model.addAttribute("csrftocken", csrftocken);
		model.addAttribute("list",bookService.searchallbook());
		return "hello";
	}

	@RequestMapping("/searchbook")
	public String search(String bookname,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		bookname=bookname.replace("<", "&lt").replace(">", "&gt").replace("\"","&quot");
		model.addAttribute("list",bookService.searchbook(bookname));
		model.addAttribute("name",bookname);
		String csrftocken=UUID.randomUUID().toString().replace("-","");
		session.setAttribute("csrftocken", csrftocken);
		model.addAttribute("csrftocken", csrftocken);
		return "hello";
	}

	@RequestMapping("/updatebook")
	public String updatebook(int id,HttpSession session,Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("book",bookService.searchbookbyid(id));
		String csrftocken=UUID.randomUUID().toString().replace("-","");
		session.setAttribute("csrftocken", csrftocken);
		model.addAttribute("csrftocken", csrftocken);
		return "update";
	}

	@RequestMapping("/updatebookimpl")
	public String updatebookimpl(books book,String csrftocken,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		if(csrftocken.equals(session.getAttribute("csrftocken"))) {
			bookService.updatebook(book);
			return "redirect:/allbook";
		}
		return "csrfback";
	}
	
	@RequestMapping("/addbook")
	public String addbook(Model model,HttpSession session) {
		// TODO Auto-generated method stub
		String csrftocken=UUID.randomUUID().toString().replace("-","");
		session.setAttribute("csrftocken", csrftocken);
		model.addAttribute("csrftocken", csrftocken);
		return "addbook";
	}
	
	@RequestMapping("/addbookimpl")
	public String addbook(books book,String csrftocken,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		if(csrftocken.equals(session.getAttribute("csrftocken"))) {
			bookService.addbook(book);
			return "redirect:/allbook";
		}
		return "csrfback";
	}
	@RequestMapping("/deletebook")
	public String deletebook(int id,String csrftocken,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		if(csrftocken.equals(session.getAttribute("csrftocken"))) {
			bookService.deletebook(id);
			return "forward:/allbook";
		}
		return "csrfback";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request,Model model) {
		// TODO Auto-generated method stub
		String pass = DigestUtils.md5DigestAsHex((request.getParameter("pass")+"eokal*(").getBytes());
		String user = ulogin.login(request.getParameter("name"),pass);
		if (user != null) {
			if(ulogin.testnum(request.getParameter("name"))>=5) {
				model.addAttribute("error", "登录失败，可能原因：1，用户名或密码错误2，账户登录错误次数过多，已被锁定，请联系管理员解锁");
				return "forward:index.jsp";
			}
			ulogin.testnumadd(request.getParameter("name"),0);
			request.getSession().setAttribute("user", user);
			return "redirect:/allbook";
		}
		if(ulogin.exituser(request.getParameter("name")) != null) {
			ulogin.testnumadd(request.getParameter("name"),ulogin.testnum(request.getParameter("name"))+1);
		}else {
			
		}
		model.addAttribute("error", "登录失败，可能原因：1，用户名或密码错误2，账户登录错误次数过多，已被锁定，请联系管理员解锁");
		return "forward:index.jsp";
	}
	
	@RequestMapping("/detail")
	public String detail(int id,Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("book",bookService.searchbookbyid(id));
		return "detail";
	}

	
	@RequestMapping("/quit")
	public String quit(HttpServletRequest request,Model model) {
		// TODO Auto-generated method stub
		request.getSession().invalidate();
		return "index";
	}

}
