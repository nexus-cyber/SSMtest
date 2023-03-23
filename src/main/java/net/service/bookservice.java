package net.service;

import java.util.List;

import net.entity.books;

public interface bookservice {
	public List<books> searchallbook();
	public List<books> searchbook(String bookname);
	public books searchbookbyid(int id);
	public int updatebook(books book);
	public int addbook(books book);
	public int deletebook(int id);
}
