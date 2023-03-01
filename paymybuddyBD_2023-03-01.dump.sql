----
-- phpLiteAdmin database dump (https://www.phpliteadmin.org/)
-- phpLiteAdmin version: 1.9.8.2
-- Exported: 12:44pm on March 1, 2023 (WAT)
-- database file: /var/lib/phpliteadmin/paymybuddyBD
----
BEGIN TRANSACTION;

----
-- Table structure for Compte
----
CREATE TABLE 'Compte' ('idCompte' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'ancienSolde' INTEGER, 'dateOuverture' DATETIME, FOREIGN KEY (idOperation) REFERENCES Operation (idOperation) );

----
-- Data dump for Compte, a total of 0 rows
----

----
-- Table structure for Client
----
CREATE TABLE 'Client' ('idClient' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'nomClient' TEXT DEFAULT '35', 'adresseClient' TEXT DEFAULT '35', 'telephoneClient' INTEGER);

----
-- Data dump for Client, a total of 0 rows
----

----
-- Table structure for Operation
----
CREATE TABLE 'Operation' ('idOperation' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'dateOperation' DATETIME, 'montantOperation' INTEGER, 'typeOperation' TEXT DEFAULT '35', FOREIGN KEY (idCompte) REFERENCES Compte (idCompte) );

----
-- Data dump for Operation, a total of 0 rows
----

----
-- Table structure for TypeCompte
----
CREATE TABLE 'TypeCompte' ('idTypeCompte' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL);

----
-- Data dump for TypeCompte, a total of 0 rows
----
COMMIT;
