package com.baizhi.entity;

public class Administrator {
	private Integer id;
	private String name;
	private String username;
	private String password;
	private String sex;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Administrator(Integer id, String name, String username,
			String password, String sex) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Administrator [id=" + id + ", name=" + name + ", username="
				+ username + ", password=" + password + ", sex=" + sex + "]";
	}
	public Administrator() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
