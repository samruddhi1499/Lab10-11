package com.example.lab10.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;

public class Employee {
    private Long id;

    @NotEmpty(message = "Name is required")
    private String name;

    @Email(message = "Email should be valid")
    private String email;

    private String department;

    // Constructor
    public Employee() {}

    public Employee(Long id, String name, String email, String department) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.department = department;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
