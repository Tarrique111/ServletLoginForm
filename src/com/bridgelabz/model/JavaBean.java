package com.bridgelabz.model;

import java.io.Serializable;


//java bean class implements serializable interface
public class JavaBean implements Serializable{

private static final long serialVersionUID = 1L;

String name,mail,MobileNum,password,confirmPassword;

//java bean class should have no args constructor
public JavaBean(String name,String mail,String MobileNum,String passowrd,String confirmPassword) {
	this.name = name;
	this.mail = mail;
	this.MobileNum = MobileNum;
	this.password = passowrd;
	this.confirmPassword = confirmPassword;
}

//java bean class should have getter and setter method.
public void setName(String name) {
	this.name=name;
}

public String getName() {
	return name;
}

public void setMail(String mail) {
	this.mail = mail;
}

public void setPassword(String password) {
this.password = password;
}

public String getPassword() {
	return password;
}

public void setConfirmPassword(String cPassword) {
	this.confirmPassword = cPassword;
}

public String getConfirmPassword() {
	return confirmPassword;
}
public String getmail() {
	return mail;
}

public void setMobile(String mobileNumber) {
	this.MobileNum = mobileNumber;
}

public String getMobile() {
	return MobileNum;
}

}
