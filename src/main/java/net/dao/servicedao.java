package net.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.entity.*;

public interface servicedao {
   public List<books> searchallbook();
   public List<books> searchbook(String bookname);
   public books searchbookbyid(int id);
   public int updatebook(books book);
   public int addbook(books book);
   public int deletebook(int id);
   public String login(@Param("name")String name ,@Param("pass")String pass);
   public int testnum(@Param("name")String name);
   public int testnumadd(@Param("name")String name,@Param("lock")int lock);
   public String exituser(@Param("name")String name);
}
