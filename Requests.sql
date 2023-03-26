CREATE INDEX [IndexForOrders]
ON [dbo].[Orders] (IdOrder, PlaneDate, IdStaff);


CREATE INDEX [ContractsByDate]
ON [dbo].[Contracts] (IdContract, ExpirationDate, INN, OGRN);


CREATE VIEW OrdersAfter2022
AS SELECT Orders.IdOrder as 'Номер заказа', 
		  Contracts.SignDate as 'Дата договора',
		  CONCAT(Staff.FamilyName, ' ', Staff.Name, ' ', Staff.Patronymic) AS 'ФИО сотрудника',
		  Staff.Phone as 'Номер телефона' 
FROM Orders 
INNER JOIN Contracts ON Contracts.IdContract = Orders.IdContract
INNER JOIN Staff ON Staff.IdStaff = Orders.IdStaff
WHERE Orders.PlaneDate > '2022-12-31'

Select * From OrdersAfter2022

CREATE VIEW ExpirienceOfStaff
AS SELECT IdStaff AS 'Код сотрудника',
		  CONCAT(FamilyName, ' ', Name, ' ', Patronymic) AS 'ФИО',
		  Phone AS 'Номер телефона',
		  Email AS 'Эл.почта',
		  Post AS 'Должность',
		  EmployDate AS 'Дата трудоустройства'
FROM Staff
WHERE DATEDIFF(MONTH, Staff.EmployDate, GETDATE())<MONTH(6);

Select * From ExpirienceOfStaff

CREATE VIEW OrderForSelStaff
AS SELECT Orders.IdOrder as'Номер заказа',
		  Orders.PlaneDate as 'Плановая дата выполнения',
		  Orders.Comment as 'Комментарий',
		  Price.PriceCount as 'Стоимость услуг',
		  Staff.IdStaff AS 'Код ответственного сотрудника'
FROM Orders
INNER JOIN Price ON Orders.IdService = Price.PriceCount
INNER JOIN Staff ON Orders.IdStaff = Staff.IdStaff
WHERE Staff.IdStaff=18;

SELECT * FROM OrderForSelStaff


CREATE VIEW ContractsWithMoreOrders
AS SELECT Contracts.IdContract AS 'Номер договора',
		  Contracts.SignDate AS 'Дата подписания договора',
		  Contracts.ExpirationDate AS 'Дата истечения договора',
		  Contracts.INN AS 'ИНН Клиента',
		  Contracts.OGRN AS 'ОГРН Клиента',
		  COUNT(Orders.IdOrder) AS 'Количество заказов'
FROM Contracts
INNER JOIN Orders ON Orders.IdContract=Contracts.IdContract
GROUP BY Contracts.IdContract, Contracts.SignDate, Contracts.ExpirationDate, Contracts.INN, Contracts.OGRN
HAVING COUNT(Orders.IdContract)>=2;

Select * From ContractsWithMoreOrders


CREATE VIEW NoOrdersForStaff
AS SELECT CONCAT(FamilyName, ' ', Name, ' ', Patronymic) as 'ФИО сотрудника'
FROM Staff
WHERE not exists  (SELECT * FROM Orders WHERE Staff.IdStaff = 
Orders.IdStaff AND PlaneDate BETWEEN '2022-01-01' AND '2022-05-15');
GO
SELECT * FROM NoOrdersForStaff


CREATE VIEW MaxVod
AS SELECT Orders.IdOrder AS 'Номер Заказа',
		  Orders.PlaneDate AS 'Плановая дата выполнения заказа',
		  Price.NameService AS 'Услуга',
		  Price.PriceCount 'Стоимость'
FROM Orders
INNER JOIN Price on Orders.IdService = Price.IdService

WHERE PriceCount = (SELECT MAX(PriceCount) FROM Price);

Select * From MaxVod

CREATE VIEW ItogForTheMonth
AS SELECT Price.NameService AS 'Услуга',
		  Price.PriceCount AS 'Валовая прибыль',
		  Orders.IdOrder AS 'Номер заказа',
		  Staff.IdStaff AS 'Код сотрудника',
		  CONCAT(Staff.FamilyName, ' ', Staff.Name, ' ', Staff.Patronymic) AS 'ФИО Сотрудника',
		  DENSE_RANK() OVER(ORDER BY Price.PriceCount DESC) AS GrossProfit
FROM Orders
INNER JOIN Price ON Price.IdService=Orders.IdService
INNER JOIN Staff ON Orders.IdStaff = Staff.IdStaff
WHERE DATEDIFF(MONTH, Orders.PlaneDate, GETDATE())=1;
GO
SELECT * FROM ItogForTheMonth


INSERT INTO Staff
VALUES ('Печеревин', 'Евгений', 'Васильевич', '+7(996)777-88-55','EvgenPecher@mail.ru','Менеджер отдела продаж', '2022-05-10');

UPDATE Staff
SET Phone = '+7(964)466-70-00'
WHERE IdStaff = 32;

DELETE FROM Staff
WHERE IdStaff = 32;


DELETE FROM Orders
WHERE IdStaff = (SELECT IdStaff FROM Staff
WHERE FamilyName = 'Печеревин' AND Name = 'Евгений' AND Patronymic = 'Васильевич');

UPDATE Price SET Price.PriceCount = PriceCount*1.025
WHERE Price.PriceCount=
    	(SELECT Max(PriceCount) FROM Price)

INSERT INTO Contracts
VALUES
( '2022-05-18', '1', '', (SELECT OGRN FROM ClientsEntit WHERE ClientsEntit.NameOrg = 'Строительный Трест'), '2023-05-18');

Select * From Contracts

Select * From ClientsEntit


Select * From Price

CREATE PROCEDURE OrdersByStaffForAYear
	@employeesFamilyName varchar(30)
OUTPUT
AS
SELECT Staff.FamilyName AS 'Фамилия',
	   Staff.Name AS 'Имя',
	   Staff.Patronymic AS 'Отчество',
	   Orders.IdOrder AS 'Номер заказа',
	   Price.NameService AS 'Услуга',
	   Price.PriceCount AS 'Валовая прибыль за заказ'
FROM Orders
	INNER JOIN Staff
ON Orders.IdStaff = Staff.IdStaff
	INNER JOIN Price
ON Orders.IdService = Price.PriceCount
WHERE Staff.FamilyName = @employeesFamilyName And YEAR(Orders.PlaneDate)=2022
GROUP BY Staff.FamilyName, Staff.Name, Staff.Patronymic, Orders.IdOrder, Price.NameService, Price.PriceCount;

EXEC OrdersByStaffForAYear N'Исаев';

Select * From Orders
Select * From Staff

CREATE FUNCTION GetSumForOrders
 (@date varchar(4))
RETURNS int
 BEGIN
  DECLARE @Summ int
  SELECT @Summ = SUM(Price.PriceCount)
  FROM Orders Inner Join Price
  ON Orders.IdService = Price.IdService
  WHERE YEAR(PlaneDate)=@date;
  RETURN @Summ 
 END

Select dbo.GetSumForOrders('2022')  AS 'Валовая прибыль за год'

CREATE FUNCTION ContractsWithClientIndiv (@Name AS char(48)) 
RETURNS TABLE AS
RETURN
(SELECT Contracts.OGRN AS 'ОГРН',
		ClientsEntit.Phone AS 'Номер телефона',
		Contracts.IdContract AS 'Номер договора',
		DATEDIFF(MONTH, Contracts.SignDate, GETDATE()) AS 'Срок сотрудничества',
		Contracts.ExpirationDate AS 'Дата истечения'
FROM dbo.Contracts Inner Join dbo.ClientsEntit
ON Contracts.OGRN = ClientsEntit.OGRN
       WHERE dbo.ClientsEntit.NameOrg = @Name
	   GROUP BY Contracts.OGRN, ClientsEntit.Phone, Contracts.IdContract, Contracts.SignDate, Contracts.ExpirationDate)

Select * From ContractsWithClientIndiv('Строительный Трест')

CREATE TRIGGER CheckContractDate
ON Contracts
AFTER UPDATE, INSERT AS
BEGIN
IF (SELECT DAY(Contracts.SignDate) FROM Contracts WHERE Contracts.IdContract = (SELECT TOP(1) @@IDENTITY FROM Contracts)) >= '5'
PRINT('Договор должен быть оформлен в течение 5 дней.')
END

INSERT INTO Orders (Orders.CustomerID, Orders.EmployeesID, Orders.OrderDate)
VALUES('AC12','7','2022-04-18')

Select * From Orders

CREATE TRIGGER New_Order ON Orders
AFTER INSERT AS
UPDATE Orders	
SET Orders.Comment = (SELECT Price.NameService From Price)
WHERE Orders.IdOrder = (SELECT IdOrder FROM inserted);


CREATE TRIGGER NewStaff
ON Staff
AFTER INSERT AS
BEGIN
IF (SELECT DAY(Staff.EmployDate)
	FROM Staff
	WHERE Staff.IdStaff = (SELECT TOP(1) @@IDENTITY FROM Staff)) >= '14'
PRINT('Данные о новом сотруднике должны быть внесены в течении первых 14 дней трудоустройства.')
END