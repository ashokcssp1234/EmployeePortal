package com.portal.employee.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYEES")
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer emp_id;

	@Column
	private String firstname;

	@Column
	private String last_name;

	@Column
	private String gender;

	@Column
	private String pan_num;

	@Column
	private String aadhaar_num;

	@Column
	private String mobile_num;

	@Column
	private String email_id;

	@Column
	private String office_mail;

	@Column
	private String permanent_address;

	@Column
	private String present_address;

	@Column
	private String blood_group;

	@Column
	private Integer emp_level;

	@Column
	private String post;

	@Column
	private Integer basic_pay;

	@Column
	private Integer house_allowance;

	public Integer getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}

	public String getLast_name() {
		return last_name;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPan_num() {
		return pan_num;
	}

	public void setPan_num(String pan_num) {
		this.pan_num = pan_num;
	}

	public String getAadhaar_num() {
		return aadhaar_num;
	}

	public void setAadhaar_num(String aadhaar_num) {
		this.aadhaar_num = aadhaar_num;
	}

	public String getMobile_num() {
		return mobile_num;
	}

	public void setMobile_num(String mobile_num) {
		this.mobile_num = mobile_num;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getOffice_mail() {
		return office_mail;
	}

	public void setOffice_mail(String office_mail) {
		this.office_mail = office_mail;
	}

	public String getPermanent_address() {
		return permanent_address;
	}

	public void setPermanent_address(String permanent_address) {
		this.permanent_address = permanent_address;
	}

	public String getPresent_address() {
		return present_address;
	}

	public void setPresent_address(String present_address) {
		this.present_address = present_address;
	}

	public String getBlood_group() {
		return blood_group;
	}

	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	
	public Integer getEmp_level() {
		return emp_level;
	}

	public void setEmp_level(Integer emp_level) {
		this.emp_level = emp_level;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public Integer getBasic_pay() {
		return basic_pay;
	}

	public void setBasic_pay(Integer basic_pay) {
		this.basic_pay = basic_pay;
	}

	public Integer getHouse_allowance() {
		return house_allowance;
	}

	public void setHouse_allowance(Integer house_allowance) {
		this.house_allowance = house_allowance;
	}
}
