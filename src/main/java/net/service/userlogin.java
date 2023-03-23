package net.service;

import org.apache.ibatis.annotations.Param;

public interface userlogin {
	public String login(String name,String pass);
	public int testnum(String name);
	public int testnumadd(String name,int lock);
	public String exituser(String name);
}
