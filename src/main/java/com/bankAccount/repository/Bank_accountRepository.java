package com.bankAccount.repository;

import com.bankAccount.entity.Bank_account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Bank_accountRepository extends JpaRepository<Bank_account,Long> {
}
