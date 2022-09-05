CREATE DATABASE Test;
GO
USE Test;
CREATE TABLE TBUSER (
    UserId bigint PRIMARY KEY IDENTITY (1, 1),
    Logon VARCHAR (50) NOT NULL,
    Password VARCHAR (50) NOT NULL,
	UserName VARCHAR (50) NOT NULL
);
GO
CREATE TABLE TBCUSTOMER (
    CustomerId bigint PRIMARY KEY IDENTITY (1, 1),
    CustomerName VARCHAR (50) NOT NULL,
    CNPJ VARCHAR (50) NOT NULL
);
GO
IF NOT EXISTS (SELECT * FROM TBUSER WHERE Logon = 'adm@adm.com')
BEGIN
    INSERT INTO TBUSER (Logon ,Password ,UserName) VALUES ('adm@adm.com' ,'adm' ,'administrador')
END
GO