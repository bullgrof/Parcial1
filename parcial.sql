-- Creacion de un tablespace

CREATE TABLESPACE pparcal 
datafile 'pparcial.f' 
size 10M AUTOEXTEND ON;

-- Creacion de usuario
CRATE user fredyocampo IDENTIFIED BY admin
    DEFAULT TABLESPACE parcial;

-- CReacion de rol DBA
CREATE ROLE dbaa;


 CREATE TABLE CUSTOMERS(
    id NUMBER PRIMARY KEY,
    first_name VARCHAR2(256),
    last_name VARCHAR2(256),
    email VARCHAR2(256),
    address VARCHAR2(256),
    phone VARCHAR2(100),
    rut VARCHAR2(256)
 );
 
 CREATE TABLE ACCOUNTS(
     id NUMBER PRIMARY KEY,
     type VARCHAR2(256),
     aperture_date DATE,
     balance DECIMAL(15,2),
     customer_id number
 );
 
 ALTER TABLE ACCOUNTS ADD CHECK (type IN ('savings', 
                                          'credit_card',
                                          'loan'));



-- PUNTO a
CREATE OR REPLACE VIEW primerpunto AS
    SELECT CUSTOMERS.FIRST_NAME||' '|| CUSTOMERS.LAST_NAME AS customer_name,
                                                   ACCOUNTS.ID AS  account_id,
                                                 ACCOUNTS.TYPE AS account_type, 
                                        ACCOUNTS.APERTURE_DATE AS account_aperture_date, 
                                        ACCOUNTS.BALANCE AS account_balance
    FROM CUSTOMERS INNER JOIN ACCOUNTS  ON customers.id =  ACCOUNTS.customer_id    
    WHERE ACCOUNTS.APERTURE_DATE BETWEEN '01/01/2013' AND '31/12/2017';
    
    
--PUNTO B

CREATE OR REPLACE FUNCTION punto2







