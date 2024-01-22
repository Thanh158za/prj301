/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package net.javaguides.mvc.service;

import java.util.Arrays;
import java.util.List;
import net.javaguides.mvc.model.Employee;

/**
 *
 * @author Nhat Anh
 */
public class EmployeeService {
      public List < Employee > getEmployees() {
        return Arrays.asList(new Employee(1, "Ramesh", "Fadatare"), new Employee(2, "Tony", "Stark"),
            new Employee(3, "Tom", "Cruise"));
    }
}
