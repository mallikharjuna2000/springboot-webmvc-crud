package com.codegnan.service;
import java.util.List;
import com.codegnan.entity.Employee;
public interface EmployeeService {
	List<Employee> getAllEmployees();
	Employee getEmployeeById(Long id);
	Employee saveEmployee(Employee employee);
	void deleteEmployee(Long id);
}
