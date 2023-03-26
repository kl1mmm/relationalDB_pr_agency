DROP DATABASE AGENCY



USE master
GO
-- ������ ����� ���� ������ ��� ������� ����, ��� ��� ��� �� �������
IF NOT EXISTS (
    SELECT [name]
FROM sys.databases
WHERE [name] = N'Agency1'
)
CREATE DATABASE Agency1
ON 
( 
    NAME = Agency_date,  
    FILENAME = 'D:\base\Agency1_date.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 
)  
LOG ON  
( 
    NAME = Agency_log,  
    FILENAME = 'D:\base\Agency1_log.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB 
); 
GO





USE Agency;
-- ������ ����� ������� '[ClientsEntit]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[ClientsEntit]', 'U') IS NOT NULL
DROP TABLE [dbo].[ClientsEntit]
GO
-- ��������� ��������
CREATE TABLE [dbo].[ClientsEntit]
(
    [OGRN] VARCHAR(15) NOT NULL PRIMARY KEY, -- �������� �������
    [FamilyName] VARCHAR(20) NOT NULL,
    [Name] VARCHAR(20) NOT NULL,
    [Patronymic] VARCHAR(20) NOT NULL,
    [Phone] VARCHAR(17) NOT NULL,
    [Email] VARCHAR(36) NULL,
	[NameOrg] VARCHAR(48) NULL,
	[Address] VARCHAR(48) NOT NULL
);
GO
-- ������ ����� ������� '[ClientsIndiv]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[ClientsIndiv]', 'U') IS NOT NULL
DROP TABLE [dbo].[ClientsIndiv]
GO
-- ��������� ��������
CREATE TABLE [dbo].[ClientsIndiv]
(
    [INN] VARCHAR(12) NOT NULL PRIMARY KEY, -- �������� �������
    [FamilyName] VARCHAR(20) NOT NULL,
    [Name] VARCHAR(20) NOT NULL,
    [Patronymic] VARCHAR(20) NOT NULL,
    [Phone] VARCHAR(17) NOT NULL,
    [Email] VARCHAR(36) NULL,
	[Address] VARCHAR(48) NOT NULL
);
GO
-- ������ ����� ������� '[Contracts]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[Contracts]', 'U') IS NOT NULL
DROP TABLE [dbo].[Contracts]
GO
-- ��������� ��������
CREATE TABLE [dbo].[Contracts]
(
    [IdContract] INTEGER IDENTITY(1,1) PRIMARY KEY, -- �������� �������
    [SignDate] DATE NOT NULL,
    [ClientEntit] BIT NOT NULL,
    [INN] VARCHAR(12),
	[OGRN] VARCHAR(15),
	[ExpirationDate] DATE NOT NULL,
	FOREIGN KEY (INN)  REFERENCES ClientsIndiv (INN),
	FOREIGN KEY (OGRN)  REFERENCES ClientsEntit (OGRN)
);
GO
-- ������ ����� ������� '[Staff]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[Staff]', 'U') IS NOT NULL
DROP TABLE [dbo].[Staff]
GO
-- ��������� ��������
CREATE TABLE [dbo].[Staff]
(
    [IdStaff] INTEGER IDENTITY(1,1) PRIMARY KEY, -- �������� �������
    [FamilyName] VARCHAR(20) NOT NULL,
    [Name] VARCHAR(20) NOT NULL,
    [Patronymic] VARCHAR(20) NOT NULL,
    [Phone] VARCHAR(17) NOT NULL,
    [Email] VARCHAR(36) NULL,
	[Post] VARCHAR(24) NOT NULL,
	[EmployDate] DATE NOT NULL
);
GO
-- ������ ����� ������� '[Price]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[Price]', 'U') IS NOT NULL
DROP TABLE [dbo].[Price]
GO
-- ��������� ��������
CREATE TABLE [dbo].[Price]
(
    [IdService] INTEGER IDENTITY(1,1) PRIMARY KEY, -- �������� �������
	[NameService] VARCHAR(45) NOT NULL,
    [PriceCount] INTEGER NOT NULL
);
GO
-- ������ ����� ������� '[Orders]'
-- ���� ������� ��� ���������� - �������� � ��������
IF OBJECT_ID('[dbo].[Orders]', 'U') IS NOT NULL
DROP TABLE [dbo].[Orders]
GO
-- ��������� ��������
CREATE TABLE [dbo].[Orders]
(
    [IdOrder] INTEGER IDENTITY(1,1) PRIMARY KEY, -- �������� �������
    [IdContract] INTEGER NOT NULL REFERENCES [dbo].[Contracts] ([IdContract]),
    [IdService] INTEGER NOT NULL REFERENCES [dbo].[Price] ([IdService]), 
    [PlaneDate] DATE NOT NULL,
    [Comment] TEXT NULL,
    [IdStaff] INTEGER NOT NULL REFERENCES [dbo].[Staff] ([IdStaff])
);
GO