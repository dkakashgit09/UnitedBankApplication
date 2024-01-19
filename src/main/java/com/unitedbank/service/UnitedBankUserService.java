package com.unitedbank.service;

import org.springframework.ui.Model;

import com.unitedbank.entity.UnitedBank;

public interface UnitedBankUserService 
{
	public UnitedBank saveUser(UnitedBank bankUser, Model model);
	public UnitedBank updateUser(long accno, String username, String password, String address, long mobileNo);
	public UnitedBank login(long accno, String username, String password, Model model);
	public UnitedBank updatePassword(long accno, String newPassword, String oldPassword);
	public Boolean validateAmount(double amount);
	public UnitedBank withdraw(long accno, double withdrawamount);
	public UnitedBank deposit(long accno, double depositamount);
	public UnitedBank transfer(long accno, String password, long targetaccno, double transferamount, Model model);
	public UnitedBank deactivateUser(long accno, String password);
	public UnitedBank activateUser(long accno, String password);
	public UnitedBank permanentDelete(long accno, String password);
	public UnitedBank getUser(long accno);
}
