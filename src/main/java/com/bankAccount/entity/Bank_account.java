package com.bankAccount.entity;

import javax.persistence.*;

@Entity
public class Bank_account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;
    private int accountNumber;

    public Bank_account() {
        super();
    }

    public Bank_account(int id, String title, int accountNumber) {
        this.id = id;
        this.title = title;
        this.accountNumber = accountNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }
}
