package com.unitedbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UnitedBank 
{
	@Id
	@Column(name="Account_no")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long accountNo;
	@Column(columnDefinition = "varchar(40)", nullable = false)
	private String username;
	@Column(columnDefinition = "varchar(40)", nullable = false)
	private String password;
	@Column(name="Current_Balance", nullable = false)
	private double amount;
	@Column(columnDefinition = "varchar(40)", nullable = false)
	private String address;
	@Column(nullable = false)
	private long mobileno;
	@Column(nullable = false)
	private String status;
	
	public UnitedBank() 
	{
		super();
	}

	public UnitedBank(long accountNo, String username, String password, double amount, String address, long mobileno, String status) 
	{
		super();
		this.accountNo = accountNo;
		this.username = username;
		this.password = password;
		this.amount = amount;
		this.address = address;
		this.mobileno = mobileno;
		this.status = status;
	}

	public long getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
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

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getMobileno() {
		return mobileno;
	}

	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "UnitedBank [accountNo=" + accountNo + ", username=" + username + ", password=" + password + ", amount="
				+ amount + ", address=" + address + ", mobileno=" + mobileno + ", status=" + status + "]";
	}
	
	
	
	
}
