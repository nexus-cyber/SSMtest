package net.service;

import java.util.List;

import net.entity.books;
import net.dao.*;

public class bookserviceimp implements bookservice{
	private servicedao sdao;
	public List<books> searchallbook() {
		// TODO Auto-generated method stub
		return sdao.searchallbook();
	}
	public servicedao getSdao() {
		return sdao;
	}
	public void setSdao(servicedao sdao) {
		this.sdao = sdao;
	}
	public List<books> searchbook(String bookname) {
		// TODO Auto-generated method stub
		return sdao.searchbook(bookname);
	}
	public books searchbookbyid(int id) {
		// TODO Auto-generated method stub
		return sdao.searchbookbyid(id);
	}
	
	public int updatebook(books book) {
		book.setBookName(book.getBookName().replace("<", "&lt").replace(">", "&gt").replace("\"","&quot"));
		book.setDetail(book.getDetail().replace("<", "&lt").replace(">", "&gt").replace("\"","&quot"));
		return sdao.updatebook(book);
	}
	public int addbook(books book) {
		book.setBookName(book.getBookName().replace("<", "&lt").replace(">", "&gt").replace("\"","&quot"));
		book.setDetail(book.getDetail().replace("<", "&lt").replace(">", "&gt").replace("\"","&quot"));
		return sdao.addbook(book);
	}
	public int deletebook(int id) {
		// TODO Auto-generated method stub
		return sdao.deletebook(id);
	}

}
