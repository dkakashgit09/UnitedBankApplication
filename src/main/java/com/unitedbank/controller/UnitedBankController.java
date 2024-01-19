package com.unitedbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.unitedbank.entity.UnitedBank;
import com.unitedbank.service.UnitedBankUserService;

@Controller
public class UnitedBankController 
{
	@Autowired
	private UnitedBankUserService service;
	
	//This is default end point mapped to open home page
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	
	//This is the end point to register the user and store data
	@RequestMapping("/register")
	public String registerUser(UnitedBank bank, Model model)
	{
		service.saveUser(bank, model);
		model.getAttribute("name");
		model.getAttribute("accountNumber");
		return "registered";
	}
	
	//To login user and redirect to user dashboard
	@RequestMapping("/login")
	public String loginUser(@RequestParam long accountNumber, @RequestParam String username, @RequestParam String password, Model model)
	{
		UnitedBank user=service.login(accountNumber, username, password, model);
		if(user!=null)
		{
			model.getAttribute("name");
			model.getAttribute("accountNumber");
			return "user";
		}
		else
		{
			if(model.getAttribute("command").equals("Inactive"))
			{
				UnitedBank user2=service.getUser(accountNumber);
				model.addAttribute("customer",user2);
				model.getAttribute("accountNumber");
				return "activate";
			}
			else
			{
				model.getAttribute("command");
				return "home";
			}
		}
	}
	
	//to redirect back to user dashboard from other pages
	@RequestMapping("/dashboard/{accountNumber}")
	public String userPage(@PathVariable long accountNumber, Model model)
	{
		UnitedBank user=service.getUser(accountNumber);
		model.addAttribute("customer",user);
		model.addAttribute("name", user.getUsername());
		model.addAttribute("accountNumber", accountNumber);
		return "user";
	}
	
	//mapped to provide user settings functionalities
	@RequestMapping("/usersettings/{accountNumber}")
	public String userSettings(@PathVariable long accountNumber, ModelMap model)
	{
		UnitedBank user=service.getUser(accountNumber);		
		model.addAttribute("customer",user);
		model.addAttribute("name", user.getUsername());
		model.addAttribute("accountNumber", accountNumber);
		return "settings";
	}
	
	//user details will be updated by this endpoint
	@RequestMapping("/update/{accountNumber}")
	public String update(@PathVariable long accountNumber,@RequestParam String username, @RequestParam long mobileNo, @RequestParam String address, @RequestParam String password,  Model model)
	{
		UnitedBank b=service.updateUser(accountNumber, username, password, address, mobileNo);
		String message=(b!=null)?"updated successfully":"Invalid Password";
		model.addAttribute("command", message);
		return "settings";
	}
	
	//To activate the user
	@RequestMapping("/activate/{accountNumber}")
	public String userActivation(@PathVariable long accountNumber, @RequestParam String password, Model model)
	{
		UnitedBank user=service.activateUser(accountNumber, password);
		if(user!=null)
		{
			return "redirect:/";
		}
		else
		{
			model.addAttribute("error", "Invalid Password");
			return "activate";
		}
	}
	
	//mapped to deactivate user account
	@RequestMapping("/deactivate/{accountNumber}")
	public String deactivateAccount(@PathVariable long accountNumber, @RequestParam String password, Model model)
	{
		UnitedBank b=service.deactivateUser(accountNumber, password);
		String message=(b!=null)?"Account Deactivated":"Invalid Password";
		model.addAttribute("command", message);
		if(b!=null)
		{
			return "redirect:/";
		}
		else
		{
			return "settings";
		}
	}
	
	//To change password
	@RequestMapping("/password/{accountNumber}")
	public String changePassword(@PathVariable long accountNumber, @RequestParam String newpassword,@RequestParam String oldpassword, Model model)
	{
		UnitedBank b=service.updatePassword(accountNumber, newpassword, oldpassword);
		String message=(b!=null)?"Password Changed":"Invalid Password";
		model.addAttribute("command", message);
	
			return "redirect:/usersettings/{accountNumber}";
	}
	
	//To delete the user permanently
	@RequestMapping("/delete/{accountNumber}")
	public String deleteAccount(@PathVariable long accountNumber, @RequestParam String password, Model model)
	{
		UnitedBank b=service.permanentDelete(accountNumber, password);
		String message=(b!=null)?"Account Deleted Permanently":"Invalid Password";
		model.addAttribute("command", message);
		if(b!=null)
		{
			return "redirect:/";
		}
		else
		{
			return "settings";
		}
	}
	
	//mapped to provide transactions functionalities
	@RequestMapping("/transactions/{accountNumber}")
	public String fundTransfer(@PathVariable long accountNumber, Model model)
	{
		UnitedBank user=service.getUser(accountNumber);
		model.addAttribute("customer",user);
		model.addAttribute("name", user.getUsername());
		model.addAttribute("accountNumber", accountNumber);
		return "transactions";
	}
	
	//user withdraw functionality (optional can be used in ATM)
	@RequestMapping("/withdraw/{accountNumber}")
	public String withdraw(@PathVariable long accountNumber, @RequestParam double amount, Model model)
	{
		boolean validamount=service.validateAmount(amount);
		if(validamount==true)
		{
			UnitedBank user=service.withdraw(accountNumber, amount);
			if(user!=null)
			{
				model.addAttribute("command", "Withdraw Successful");
				return "transactions";
			}
			else
			{
				model.addAttribute("command", "Insufficient Funds");
				return "transactions";
			}
		}
		else
		{
			model.addAttribute("command", "Enter Vaild Amount Between(100,200,500,1000,2000)");
			return "transactions";
		}
	}
	
	//user deposit functionality (optional can be used in ATM)
	@RequestMapping("/deposit/{accountNumber}")
	public String deposit(@PathVariable long accountNumber, @RequestParam double amount, Model model)
	{
		boolean validamount=service.validateAmount(amount);
		if(validamount==true)
		{
			service.deposit(accountNumber, amount);
			model.addAttribute("command", "Deposit Successful");
			return "transactions";
		}
		else
		{
			model.addAttribute("command", "Enter Vaild Amount Between(100,200,500,1000,2000)");
			return "transactions";
		}
	}
	
	
	//user fundtransfer functionality (can be used in ATM and netbanking)
	@RequestMapping("/transfer/{accountNumber}")
	public String transfer(@PathVariable long accountNumber, @RequestParam String password, @RequestParam long targetAccno, @RequestParam double amount, Model model)
	{
		UnitedBank user=service.transfer(accountNumber, password, targetAccno, amount, model);
		if(user!=null)
		{
			model.getAttribute("command");
			model.getAttribute("balance");
			return "transactions";
		}
		else
		{
			model.getAttribute("command");
			return "transactions";
		}
	}
}
