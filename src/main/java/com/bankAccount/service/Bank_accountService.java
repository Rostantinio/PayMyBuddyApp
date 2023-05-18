package com.bankAccount.service;

import com.bankAccount.entity.Bank_account;
import com.bankAccount.repository.Bank_accountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Bank_accountService {

        @Autowired
        private Bank_accountRepository bank_accountRepository;

        public List<Bank_account> listdAll() {
            return bank_accountRepository.findAll();
        }

        public void save(Bank_account bank_account) {
            bank_accountRepository.save(bank_account);
        }
        public Bank_account get(long id) {
            return bank_accountRepository.findById(id).get();
        }
        public void delete(long id) {
            bank_accountRepository.deleteById(id);
        }
    }
