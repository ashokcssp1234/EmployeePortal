package com.portal.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.portal.employee.dao.EmployeeDAO;
import com.portal.employee.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDAO employeeDAO;

	public void setemployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	
	@Transactional
	@Override
	public void addEmployee(Employee employee) {
		employeeDAO.addEmployee(employee);
	}


	@Transactional
	@Override
	public void updateEmployee(Employee employee) {
		employeeDAO.updateEmployee(employee);
	}

	
	@Transactional
	@Override
	public List<Employee> listEmployees() {
		return this.employeeDAO.listEmployees();
	}


	@Transactional
	@Override
	public Employee getEmployeeById(int id) {
		return employeeDAO.getEmployeeById(id);
	}


	@Transactional
	@Override
	public void removeEmployee(int id) {
		employeeDAO.removeEmployee(id);
	}
}
