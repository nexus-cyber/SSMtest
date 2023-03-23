package net.service;

import net.dao.servicedao;

public class userloginimpl implements userlogin{
	private servicedao sdao;
	public String login(String name, String pass) {
		return sdao.login(name, pass);
	}
	public servicedao getSdao() {
		return sdao;
	}
	public void setSdao(servicedao sdao) {
		this.sdao = sdao;
	}
	public int testnum(String name) {
		
		return sdao.testnum(name);
	}
	public int testnumadd(String name, int lock) {
		// TODO Auto-generated method stub
		return sdao.testnumadd(name, lock);
	}
	public String exituser(String name) {
		// TODO Auto-generated method stub
		return sdao.exituser(name);
	}

}
