USE Agency;

-- ������ ������ � ������� 'ClientsEntit'
INSERT INTO [dbo].[ClientsEntit]
    ( --������� ��� �������� ������
    [OGRN], [FamilyName], [Name], [Patronymic], [Phone], [Email], [NameOrg], [Address]
    )
VALUES
    (
        '6136385269520', '������' , '�������', '��������������', '+7(4942)944409', 'briana31@hotmail.com', '������� ��������� ��������', '����-�������, ������� �������, 61'
),
    (
        '7164107037076', '��������', '��������', '��������', '+7(351)3934500', 'sfriesen@gmail.com', 'Winline', '��������, ����� �������������, 30'
),
    (
        '9158596696580', '��������', '�����', '���������', '+7(4742)273858', 'jprosacco@mckenzie.com', '������������ ���������', '����, ��. �������, 30'
),
    (
        '4015390187996', '�����������', '�����', '���������', '+7(8635)869469', 'lbecker@gmail.com', '������', '������, ��. �������������, 40'
),
    (
        '6097998509867', '������', '������', '����������', '+7(495)4716622', 'ryder85@hotmail.com', '�����������������', '��������, ����� ��������, 71'
),
    (
        '2010434335547', '������', '����', '���������', '+7(3955)437789', 'luettgen.zack@hotmail.com', '��� "���"', '����-�������, ������ ������, 85'
),
    (
        '6163239791423', '������', '�����', '����������', '+7(8443)334547', 'lonie42@rowe.info', '��������������', '���������� �����, ����� �������, 68'
),
    (
        '3093339852680', '��������', '���������', '��������', '+7(8142)458125', 'lesch.lonnie@turcotte.com', '�����', '��������, ����� ������, 25'
),
    (
        '4035955430232', '��������', '������', '��������', '+7(8452)692768', 'alexandrine61@yahoo.com', '������', '����, ��. ����������, 88'
),
    (
        '8147277990577', '��������', '��������', '����������', '+7(4232)797290', 'aklocko@kiehn.net', '����', '�������, ��. ����������, 75'
),
    (
        '2159147886676', '�������', '���', '�����������', '+7(3519)452240', 'mabel.bergnaum@gerhold.net', '����� ��������', '������, ������ ��������, 91'
),
    (
        '9061588683741', '�������', '�����', '��������', '+7(8202)954377', 'emerald.spinka@hotmail.com', 'Ozon', '�������, ����� �������������, 39'
),
    (
        '2100810964725', '������', '�������', '��������', '+7(4942)580785', 'antonio.kub@russel.com', 'Wildberries', '��������, ��. ����������, 54'
),
    (
        '1122572486486', '������', '�������', '����������', '+7(8652)822936', 'purdy.chelsey@connelly.com', '����', '������, ���. ����������, 80'
),
    (
        '2150873408960', '�����������', '�����', '��������', '+7(4862)715014', 'martine.moen@hotmail.com', '��������', '��������, ��. ������������, 72'
),
    (
        '9048204721479', '���������', '���������', '����������', '+7(8442)269303', 'tromp.marie@glover.com', '�������������', '���������, ��. �������������, 19'
),
    (
        '6123831784708', '�������', '�������', '����������', '+7(4212)689814', 'gbraun@yahoo.com', '����������', '�����������, ��. ������������, 34'
),
    (
        '7134090928668', '��������', '�����', '��������', '+7(35130)34945', 'scot37@gmail.com', '��������', '�������, ��. ������������, 09'
),
    (
        '2144285876744', '�����', '�������', '�������', '+7(391)7743405', 'alexzander.grant@ebert.com', '�������', '�����������, �������������, 94'
),
    (
        '9137363444011', '��������', '�������', '����������', '+7(8112)621405', 'jules26@yahoo.com', '������', '��������, ����� ������, 93'
),
    (
        '3048591871259', '�������', '�����', '��������', '+7(812)8570404', 'jenkins.janiya@hotmail.com', 'Deliviry Club', '��������, ���.�����������, 02'
),
    (
        '4152349420758', '��������', '�����', '�������������', '+7(8652)575232', 'willms.aliyah@satterfield.com', '�����', '���������, ����� ������, 64'
),
    (
        '4053643536316', '��������', '����', '�������������', '+7(351)4328022', 'orion.feest@hotmail.com', '�����������', '��������, ��. �����, 14'
),
    (
        '7163527185177', '�������', '������', '��������', '+7(8652)885159', 'nitzsche.jake@gmail.com', '������������ �����', '��������, ���. ����������, 69'
),
    (
        '9139171813112', '�������', '�����', '����������', '+7(3462)850613', 'belle61@jerde.com', '��������', '�������, ���. �����������, 73'
),
    (
        '7149221268101', '���������', '����', '��������', '+7(831)9860056', 'schowalter.daniella@yahoo.com', '��������������', '�������, ��. ��������, 50'
),
    (
        '8032266004191', '��������', '�����', '����������', '+7(3842)489904', 'joanny.mclaughlin@hotmail.com', '���', '������, ���. �������������, 80'
),
    (
        '4068302660235', '������', '�������', '���������', '+7(863)9760063', 'stephania.dubuque@crooks.com', '����������', '���������, ��. �����, 75'
),
    (
        '5034496127870', '����������', '����', '��������', '+7(831)8190337', 'agnes36@harvey.biz', '���-������', '��������, ��. ��������, 13'
),
    (
        '1161517798243', '������', '����', '�������������', '+7(8442)769096', 'wprosacco@yahoo.com', '���', '�������, ������ 1905 �., 18�1'
)
GO

Select * From ClientsEntit

-- ������ ������ � ������� 'ClientsIndiv'
INSERT INTO [dbo].[ClientsIndiv]
    ( --������� ��� �������� ������
    [INN], [FamilyName], [Name], [Patronymic], [Phone], [Email], [Address]
    )
VALUES
    (
        '447875056295', '�������' , '�����', '����������', '+7(914)472-00-36', 'boehm.orville@hotmail.com', '���������� �����, ���. ��������, 55'
),
    (
        '036932681002', '������', '�����', '����������', '+7(996)574-42-51', 'kelly.zemlak@kessler.net', '�������, ����� ����������, 46'
),
    (
        '011460196664', '��������', '������', '�����������', '+7(913)372-55-48', 'hollis.prohaska@gmail.com', '�������, ��. �����, 13'
),
    (
        '558535027410', '��������', '����', '����������', '+7(905)325-12-75', 'agutmann@gleason.com', '����-�������, ������ ����������, 80'
),
    (
        '913674276467', '���������', '���������', '���������', '+7(910)815-07-00', 'raphael44@hotmail.com', '���������� �����, ���. 1905 ����, 33'
),
    (
        '178235543007', '�����', '���������', '����������', '+7(909)473-31-37', 'myrtie83@gmail.com', '���������, ��. �������������, 49'
),
    (
        '286565380229', '�������', '������', '��������', '+7(912)075-91-24', 'rmarquardt@gulgowski.com', '���������� �����, ���. ���������, 99'
),
    (
        '447243975304', '�������', '�������', '��������������', '+7(996)022-91-53', 'carolina.bahringer@mcclure.biz', '���������, ������� ������, 98'
),
    (
        '038470271612', '�����������', '����', '����������', '+7(996)514-83-14', 'keeling.trevion@hotmail.com', '��������, ����� �������������, 86'
),
    (
        '742201334700', '�����������', '������', 'Ը�������', '+7(917)491-34-17', 'cecile.tillman@haag.com', '��������, ��. ������������, 33'
),
    (
        '175393550410', '�����', '�������', '����������', '+7(996)355-41-01', 'schaden.tanner@hotmail.com', 'ٸ�����, ��. ������, 54'
),
    (
        '789641456778', '������', '�������', '�����������', '+7(495)479-51-52', 'bernier.gerson@yahoo.com', '������, ��. �������, 04'
),
    (
        '107198929660', '�������', '�����', '���������', '+7(907)907-97-79', 'jayme81@brekke.com', '�������, ����� �����������, 94'
),
    (
        '713612082113', '���������', '����', '����������', '+7(914)475-13-11', 'johns.annabel@altenwerth.biz', '������� �����, ��. ������, 90'
),
    (
        '408001781264', '�������', '�������', '��������', '+7(925)252-25-25', 'lroob@gmail.com', '������, ������� ������, 38'
),
    (
        '235592313965', '���������', '������', '����������', '+7(914)399-91-92', 'sydnie.fritsch@schoen.info', '��������, ��. �������, 70'
),
    (
        '031565310105', '���������', '����', '���������', '+7(999)999-99-98', 'keebler.baron@purdy.biz', '�������, ������ �������������, 26'
),
    (
        '775036323569', '����', '�����', '��������', '+7(935)271-17-98', 'jenkins.verner@gmail.com', 'ٸ�����, ����� �������������, 31'
),
    (
        '705338711330', '������', '����', '�������', '+7(937)837-37-37', 'tevin77@nienow.com', '�������, ��. �������������, 35'
),
    (
        '638071306820', '��������', '���������', '����������', '+7(800)713-13-13', 'lucio01@yahoo.com', '�����, ������ ������������, 24'
),
    (
        '218311174687', '������', '���������', '�������������', '+7(812)857-04-04', 'rosenbaum.markus@yahoo.com', '�������������, ����� ��������, 23'
),
    (
        '237530249223', '�������', '����', '���������', '+7(865)525-46-90', 'aturner@barton.com', '�������, ���. �������������, 00'
),
    (
        '182121479762', '���������', '����', '���������', '+7(351)-291-43-41', 'braden37@koelpin.org', '������, ������ ����������, 39'
),
    (
        '692319596498', '������', '�����', '��������', '+7(865)254-21-14', 'janet58@hotmail.com', '���������, ��. �����, 00'
),
    (
        '855955679891', '��������', '��������', '����������', '+7(345)802-28-51', 'joelle53@pagac.com', '���������, ����� ������, 28'
),
    (
        '309139326764', '�����', '������', '���������', '+7(495)980-01-01', 'austen74@hotmail.com', '����-�������, ����� �������, 23'
),
    (
        '518335564130', '���������', '���������', '���������', '+7(446)589-31-08', 'dannie22@yahoo.com', '�������, ���. ����������, 28'
),
    (
        '073969877594', '����������', '�����', '��������', '+7(870)124-05-05', 'gottlieb.jaron@kreiger.com', '��������, ��. ������, 81'
),
    (
        '447196796270', '�����', '����', '���������', '+7(924)392-12-72', 'hill.thora@gmail.com', '�����������, ������ �����������, 43'
),
    (
        '636789507657', '��������', '���������', '����������', '+7(293)192-39-12', 'ansel.dare@yahoo.com', '������, ����� ��������, 56'
)
GO

Select * From ClientsIndiv


-- ������ ������ � ������� 'Contracts'
INSERT INTO [dbo].[Contracts]
    ( --������� ��� �������� ������
    [SignDate], [ClientEntit], [INN], [OGRN], [ExpirationDate]
    )
VALUES
    (
        '2022-05-13', '0' , '036932681002', '', '2023-05-13'
),
    (
        '2022-02-04', '1', '', '6136385269520', '2023-02-04'
),
    (
        '2022-02-05', '0', '447243975304', '', '2023-02-05'
),
    (
        '2022-03-24', '1', '', '7164107037076', '2023-03-24'
),
    (
        '2022-01-09', '0', '789641456778', '', '2023-01-09'
),
    (
        '2022-01-30', '1', '', '9158596696580', '2023-01-30'
),
    (
        '2022-02-28', '0', '636789507657', '', '2023-02-28'
),
    (
        '2022-03-21', '1', '', '4015390187996', '2023-03-21'
),
    (
        '2022-02-11', '0', '447196796270', '', '2023-02-11'
),
    (
        '2022-02-06', '1', '', '6097998509867', '2023-02-06'
),
    (
        '2022-05-10', '0', '073969877594', '', '2023-05-10'
),
    (
        '2022-02-24', '1', '', '2010434335547', '2023-02-24'
),
    (
        '2022-01-19', '0', '309139326764', '', '2023-01-19'
),
    (
        '2021-09-18', '1', '', '6163239791423', '2022-09-18'
),
    (
        '2021-12-02', '1', '', '1161517798243', '2022-12-02'
),
    (
        '2021-11-24', '1', '', '5034496127870', '2022-11-24'
),
    (
        '2021-10-05', '1', '', '4068302660235', '2022-10-05'
),
    (
        '2021-08-01', '1', '', '8032266004191', '2022-08-01'
),
    (
        '2021-09-17', '1', '', '7149221268101', '2022-09-17'
),
    (
        '2021-09-30', '0', '855955679891', '', '2022-09-30'
),
    (
        '2022-01-10', '0', '692319596498', '', '2023-01-10'
),
    (
        '2021-12-04', '0', '182121479762', '', '2022-12-04'
),
    (
        '2021-11-30', '0', '447875056295', '', '2022-11-30'
),
    (
        '2021-12-30', '0', '031565310105', '', '2022-12-30'
),
    (
        '2021-11-20', '0', '775036323569', '', '2022-11-20'
),
    (
        '2022-08-12', '0', '235592313965', '', '2023-08-12'
),
    (
        '2022-01-12', '0', '011460196664', '', '2023-01-12'
),
    (
        '2021-06-26', '1', '', '9139171813112', '2022-06-26'
),
    (
        '2021-06-19', '1', '', '7163527185177', '2022-06-19'
),
    (
        '2021-09-12', '1', '', '4053643536316', '2022-09-12'
)
GO

Select * From Contracts

-- ������ ������ � ������� 'Staff'
INSERT INTO [dbo].[Staff]
    ( --������� ��� �������� ������
    [FamilyName], [Name], [Patronymic], [Phone], [Email], [Post], [EmployDate]
    )
VALUES
    (
        '����������' , '��������', '���������', '+7(072)401-09-70', 'nhuel@yahoo.com', '�������������', '2022-01-10'
),
    (
        '������', '��������', '���������', '+7(86)186-43-52', 'hyman36@yahoo.com', '��������', '2021-5-09'
),
    (
        '�����', '�������', '����������', '+7(888)925-43-26', 'jreynolds@jacobson.biz', '��������', '2022-03-28'
),
    (
        '��������', '�����', '���������', '+7(77)760-87-94', 'bulah.sipes@gmail.com', '�������������', '2021-12-03'
),
    (
        '�����', '�����', '����������', '+7(023)687-27-61', 'leonel.predovic@yahoo.com', '�������������', '2022-10-24'
),
    (
        '�������', '����', '����������', '+7(53)069-68-73', 'dorothy.rutherford@damore.biz', '�������', '2022-02-10'
),
    (
        '��������', '���������', '���������', '+7(50)380-84-10', 'igrant@hotmail.com', '��������',  '2021-03-01'
),
    (
        '�������', '������', '��������', '+7(6764)310-56-42', 'mills.haleigh@gmail.com', '����������',  '2021-04-19'
),
    (
        '��������', '������', '��������', '+7(0238)704-71-85', 'tiffany.walker@weber.org', '����������',  '2021-05-10'
),
    (
        '��������', '������', '��������', '+7(60)780-44-54', 'remington11@hotmail.com', '����������', '2022-02-06'
),
    (
        '��������', '������', '��������', '+7(6533)600-84-98', 'skutch@hotmail.com', '����������', '2021-12-25'
),
    (
        '�������', '�������', '��������', '+7(93)015-38-67', 'blair59@welch.biz', '����������� ���������', '2021-01-12'
),
    (
        '�����', '����', '��������', '+7(480)448-00-24', 'gwendolyn77@stiedemann.com', 'IT-����������', '2022-01-14'
),
    (
        '��������', '������', '����������', '+7(8497)850-79-08', 'mcdermott.eduardo@yahoo.com', '������', '2021-04-11'
),
    (
        '��������', '���������', '������������', '+7(51)195-68-66', 'hilton11@hartmann.info', '��������', '2021-03-01'
),
    (
        '���������', '���������', '����������', '+7(14)167-04-20', 'hardy.mckenzie@howe.com', '���-����������', '2021-05-10'
),
    (
        '��������', '���������', '����������', '+7(18)257-24-98', 'alva.goyette@gmail.com', '���������� ������ ������', '2022-01-13'
),
    (
        '����������', '�������', '����������', '+7(995)641-26-36', 'kelton96@strosin.com', 'Product-manager', '2021-12-06'
),
    (
        '�������', '�����', '����������', '+7(43)580-50-23', 'muller.monte@schimmel.net', '���-����������', '2022-01-13'
),
    (
        '������', '����', '�������������', '+7(4966)550-45-69', 'hrunte@gmail.com', '����������', '2021-11-30'
),
    (
        '�������', '�����', '����������', '+7(01)740-78-45', 'lura.toy@corkery.com', '�������', '2022-02-04'
),
    (
        '�������', '����', '���������', '+7(259)831-22-79', 'waldo.bechtelar@heathcote.com', '�������� �� ������������', '2021-07-26'
),
    (
        '��������', '�����', '���������', '+7(2476)360-47-42', 'block.dannie@hotmail.com', '������', '2022-05-10'
),
    (
        '�������', '�����', '�������', '+7(59)054-21-34', 'marcelle.heller@gmail.com', '�������-����������', '2021-12-12'
),
    (
        '�����', '��������', '��������', '+7(6519)165-54-24', 'faye68@yahoo.com', '�������-����������', '2022-01-13'
),
    (
        '��������', '�������', '��������', '+7(8526)476-48-69', 'destin37@fritsch.org', '�������-��������', '2021-08-02'
),
    (
        '��������', '�����', '����������', '+7(874)122-14-12', 'jaclyn28@becker.net', 'IT-����������', '2022-03-10'
),
    (
        '������', '�������', '���������', '+7(863)9760063', 'amara.dare@gmail.com', 'Security-��������', '2021-06-13'
),
    (
        '����������', '����', '��������', '+7(831)8190337', 'laura.herman@harris.info', 'Security-����������', '2022-02-14'
),
    (
        '������', '����', '�������������', '+7(8442)769096', 'leonard07@gmail.com', '���������', '2021-09-10'
)
GO

Select * From Contracts

-- ������ ������ � ������� 'Price'
INSERT INTO Agency.dbo.Price
    ( --������� ��� �������� ������
    [NameService], [PriceCount]
    )
VALUES
    (
        '������ 1.5x1.5', 1800
),
    (
        '������ 2x2', 2000
),
    (
        '������ 2.5x2.5', 3000
),
    (
        '������ 4x4', 7500
),
    (
        '������ 3x6', 8500
),
    (
        '������ 20�<x<40�', 25000
),
    (
        '���-����������� 6 ���.', 230000
),
    (
        '���-����������� 12 ���.', 450000
),
    (
        '���-����������� 24 ���.', 875000
),
    (
        '�������������� 3 ���������', 22500
),
    (
        '�������������� 5 ��������', 30000
),
    (
        '�������������� 10 ��������', 55000
),
    (
        '�������� ���������� ��� 1 ���. ����',  5000
),
    (
        '�������� ���������� ��� 3 ���. �����', 12500
),
    (
        '�������� ���������� ��� 6 ���. �����', 22500
),
    (
        '����������� ��������� �������� �� 6 �������', 400000
),
    (
        '����� PR � SMM', 25000 
),
    (
        '��������� �����-��������', 8000 
),
    (
        '���������� �������-��������� �� 3 ���.', 10000
)
GO


-- ������ ������ � ������� 'Orders'
INSERT INTO [dbo].[Orders]
    ( --������� ��� �������� ������
    [IdContract], [IdService], [PlaneDate], [Comment], [IdStaff]
    )
VALUES
    (
        '1' , '3', '2022-05-23', '������ ��� ������ - ������ ������. ������������ ������.', '2'
),
    (
        '3' , '10', '2022-08-20', '������ 3 ���������', '3'
),
    (
        '8' , '17', '2022-04-21', '�����', '8'
),
    (
        '10' , '4', '2022-02-26', '������ ', '5'
),
    (
        '12' , '6', '2022-03-29', '������ ��������� �� ����.', '5'
),
    (
        '2' , '9', '2024-02-11', '��� �� 2 ���� ���', '16'
),
    (
        '4' , '8', '2023-03-25', '��� �� 1 ��� ���', '16'
),
    (
        '27' , '7', '2022-01-15', '��� �� ������� ', '20'
),
    (
        '21' , '3', '2022-01-20', '������', '18'
),
    (
        '22' , '13', '2021-12-19', '���������� ��� VK-����������', '27'
),
    (
        '19' , '4', '2021-11-02', '������� ��������', '18'
),
    (
        '1' , '10', '2022-09-08', '������ 3 ���������', '11'
),
    (
        '18' , '12', '2022-09-16', '������ 10 ��������', '10'
),
    (
        '17' , '16', '2022-07-30', '��������� ��������', '18'
),
    (
        '16' , '18', '2021-11-11', '�����-�������.', '27'
),
    (
        '30' , '19', '2021-11-06', '���������� �������-�����', '15'
),
    (
        '24' , '19', '2022-12-28', '�������-����', '15'
),
    (
        '23' , '19', '2022-02-01', '�������-����', '9'
),
    (
        '20' , '19', '2022-02-18', '�������-����', '10'
),
    (
        '17' , '5', '2021-09-01', '������ �� ��������� �����.', '3'
),
    (
        '17' , '3', '2021-09-04', '������ ��� ��������� ������������.', '5'
),
    (
        '17' , '8', '2022-08-01', '��� �� ���', '18'
),
    (
        '15' , '11', '2022-05-20', '������ 5 ��������.', '16'
),
    (
        '14' , '14', '2021-12-29', '������ ��� 3 ���.����� - VK, Instagram, YouTube', '27'
),
    (
        '13' , '17', '2021-11-02', '�����.', '18'
),
    (
        '11' , '1', '2022-05-06', '����-������ � ������ ����������.', '6'
),
    (
        '9' , '2', '2022-02-16', '������ � ������� ��������', '6'
),
    (
        '7' , '4', '2022-04-10', '', '5'
),
    (
        '6' , '4', '2022-02-23', '', '5'
),
    (
        '5' , '16', '2023-01-23', '��������� ��������', '18'
)
GO

Select * From Contracts