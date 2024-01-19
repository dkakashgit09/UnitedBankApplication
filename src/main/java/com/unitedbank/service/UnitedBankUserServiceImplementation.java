package com.unitedbank.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.unitedbank.entity.UnitedBank;
import com.unitedbank.repo.UnitedBankRepository;

@Service
public class UnitedBankUserServiceImplementation implements UnitedBankUserService 
{
	@Autowired
	private UnitedBankRepository repo;
	
	//to insert the new user into table
	@Override
	public UnitedBank saveUser(UnitedBank bankUser, Model model) 
	{
		
		bankUser.setStatus("active");
		bankUser.setAmount(0);
		UnitedBank bank = repo.save(bankUser);
		model.addAttribute("name", bankUser.getUsername());
		model.addAttribute("accountNumber", bankUser.getAccountNo());
		return bank;
	}

	//To update the user details
	@Override
	public UnitedBank updateUser(long accno, String username, String password, String address, long mobileNo) 
	{
		UnitedBank user=repo.findById(accno).get();
		if(user.getPassword().equals(password))
		{
			user.setUsername(username);
			user.setAddress(address);
			user.setMobileno(mobileNo);
			return repo.save(user);
		}
		else
		{
			return null;
		}
		
	}
	
	
	//To update user password
	@Override
	public UnitedBank updatePassword(long accno, String newPassword, String oldPassword) 
	{
		UnitedBank user=repo.findById(accno).get();
		if(user.getPassword().equals(oldPassword))
		{
			user.setPassword(newPassword);
			return repo.save(user);
		}
		else
		{
			return null;
		}
	}
	
	
	//To deactivate user
	@Override
	public UnitedBank deactivateUser(long accno, String password) 
	{
		UnitedBank user=repo.findById(accno).get();
		if(user.getPassword().equals(password))
		{
			user.setStatus("Inactive");
			return repo.save(user);
		}
		else
		{
			return null;
		}
	}
	
	//To activate user
	@Override
	public UnitedBank activateUser(long accno, String password) 
	{
		UnitedBank user=repo.findById(accno).get();
		if(user.getPassword().equals(password))
		{
			user.setStatus("active");
			return repo.save(user);
		}
		else
		{
			return null;
		}
	}
	
	//To delete user permanently
	@Override
	public UnitedBank permanentDelete(long accno, String password) 
	{
		UnitedBank user=repo.findById(accno).get();
		if(user.getPassword().equals(password))
		{
			repo.deleteById(accno);
			return user;
		}
		else
		{
			return null;
		}
	}
	
	
	/*This service is implemented to check the validations for the user and provide dashboard facilities 
	if credentials are correct */
	@Override
	public UnitedBank login(long accno, String username, String password, Model model) 
	{
		UnitedBank user=repo.findById(accno).orElse(null);
		if(user!=null)
		{
			if(user.getUsername().equalsIgnoreCase(username) && user.getPassword().equals(password))
			{
				if(user.getStatus().equals("active"))
				{
					model.addAttribute("name",user.getUsername());
					model.addAttribute("accountNumber", user.getAccountNo());
					return user;
				}
				else
				{
					model.addAttribute("accountNumber", user.getAccountNo());
					model.addAttribute("command", "Inactive");
					return null;
				}
			}
			else
			{
				model.addAttribute("command", "Invalid Credentials");
				return null;
			}
		}
		else
		{
			model.addAttribute("command", "Account Not Found.. create Account");
			return user;
		}
	}
	
	/*This service is to check whether user entering the correct amount for withdraw and deposit
	because ATM's will accept amount in 100's */
	@Override
	public Boolean validateAmount(double amount) 
	{
		boolean result=(amount%100==0)?true:false;
		return result;
	}
	
	
	//To withdraw amount provided by the user by checking minimum balance of 500/-
	@Override
	public UnitedBank withdraw(long accno, double withdrawamount) 
	{
		UnitedBank user=repo.findById(accno).get();
		double amount=user.getAmount();
		user.setAmount(amount-withdrawamount);
		UnitedBank result=(amount-withdrawamount>=500)?repo.save(user):null;
		return result;
	}
	
	
	//To deposit the amount into the bank
	@Override
	public UnitedBank deposit(long accno, double depositamount) 
	{
		UnitedBank user=repo.findById(accno).get();
		double amount=user.getAmount();
		user.setAmount(amount+depositamount);
		repo.save(user);
		return repo.save(user);
	}
	
	
	//This service is to transfer amount from one account to another account
	@Override
	public UnitedBank transfer(long accno, String password, long targetaccno, double transferamount, Model model) 
	{
		UnitedBank b=null;
		UnitedBank currentUser=repo.findById(accno).get();
		UnitedBank targetUser=repo.findById(targetaccno).get();
		if(currentUser.getPassword().equals(password))
		{
			double caBalance=currentUser.getAmount();
			double newCaBalance=caBalance-transferamount;
			double targetBalance=targetUser.getAmount();
			double targetNewbalance=targetBalance+transferamount;
			if(caBalance+500>=transferamount)
			{
				if(targetUser.getStatus().equals("active"))
				{
					currentUser.setAmount(newCaBalance);
					targetUser.setAmount(targetNewbalance);
					b=repo.save(currentUser);
					b=repo.save(targetUser);
					model.addAttribute("command", "Transfer Successful <p></p> Current Balance is : " + newCaBalance);
					return b;
				}
				else
				{
					model.addAttribute("command", "Target Account is not in Active");
					return null;
				}
				
			}
			else
			{
				model.addAttribute("command", "Insufficient Funds(Maintain Balance Above 500/-)");
				return b;
			}
		}
		else
		{
			model.addAttribute("command", "Invalid Password");
			return b;
		}
	}

	
	//To show the complete user details
	@Override
	public UnitedBank getUser(long accno) 
	{
		UnitedBank user=repo.findById(accno).get();
		return user;
	}


}
