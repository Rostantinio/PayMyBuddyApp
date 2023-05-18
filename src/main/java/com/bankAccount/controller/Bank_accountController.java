package com.bankAccount.controller;

import com.bankAccount.entity.Bank_account;
import com.bankAccount.service.Bank_accountService;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;


@Controller
public class Bank_accountController {

    @Autowired
    private Bank_accountService bankAccountService;

    @GetMapping("/")
    public String bankaccount(Model model) {
        List<Bank_account> listbank_account = bankAccountService.listdAll();
        model.addAttribute("listbank_account", listbank_account);
        System.out.println("Get / ");
        return "bankaccount";
    }

    @GetMapping("/bankaccount")
    public String add(Model model, RedirectAttributes redirectAttributes) {
        Bank_account bank_account = new Bank_account(); // créer un nouveau compte bancaire
        model.addAttribute("bank_account", bank_account); // Ajouter l'objet dans le modèle
        redirectAttributes.addFlashAttribute("bank_account", bank_account); // Ajouter l'objet dans les RedirectAttributes
        return "redirect:/";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveBank_account(@ModelAttribute("bank_account") Bank_account bank_account, RedirectAttributes redirectAttributes){
        bankAccountService.save(bank_account);
        redirectAttributes.addFlashAttribute("success_msg", "Compte bancaire enregistré avec succès !");
        return "redirect:/";
    }


    @RequestMapping("/delete/{id}")
    public String deletebank_account(@PathVariable(name = "id") int id){
        bankAccountService.delete(id);
        return "redirect:/";
    }
}