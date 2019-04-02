package com.baizhi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.baizhi.dao.AdministratorDAO;
import com.baizhi.entity.Administrator;
@Controller
@Transactional
public class AdministratorServiceImpl implements AdministratorService{
	@Autowired
	private AdministratorDAO administratorDAO;
	@Override
	public Administrator nameAndpassword(Administrator administrator) {
		// TODO Auto-generated method stub
		return administratorDAO.nameAndpassword(administrator);
	}

	@Override
	public void insertAdministrator(Administrator administrator) {
		// TODO Auto-generated method stub
		administratorDAO.insertAdministrator(administrator);
	}

	@Override
	public Administrator MailAlone(Administrator administrator) {
		// TODO Auto-generated method stub
		return administratorDAO.MailAlone(administrator);
	}

	@Override
	public List<Administrator> shouAllAdministrator() {
		// TODO Auto-generated method stub
		return administratorDAO.shouAllAdministrator();
	}

}
