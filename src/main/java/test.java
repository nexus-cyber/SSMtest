import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import net.entity.*;
import net.service.bookservice;


public class test {
	public static void main(String[] args) {
		ApplicationContext apc = new ClassPathXmlApplicationContext("classpath:spring-service.xml");
		bookservice bookss = (bookservice)apc.getBean("BookServiceImpl");
		List<books> lsbook = bookss.searchallbook();
		for (int i = 0; i < lsbook.size(); i++) {
			books good = lsbook.get(i);
			System.out.println(good.getBookCounts());
		}
	}

}
