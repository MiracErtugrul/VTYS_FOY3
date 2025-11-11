insert into birimler(birim_ad) values
('Yazýlým'),
('Donaným'),
('Güvenlik');


use PersonelYonetim
select *from calisanlar
insert into calisanlar values
(N'Ýsmail', N'Ýþeri', 100000, '2014-02-20 00:00:00:000', 1),
(N'Hami', N'Satýlmýþ', 80000, '2014-06-11 00:00:00:000', 1),
(N'Durmuþ', N'Þahin', 300000, '2014-02-20 00:00:00:000', 2),
(N'Kaðan', N'Yazar', 500000, '2014-02-20 00:00:00:000', 3),
(N'Meryem', N'Soysaldý', 500000, '2014-06-11 00:00:00:000', 3),
(N'Duygu', N'Akþehir', 200000, '2014-06-11 00:00:00:000', 2),
(N'Kübra', N'Seyhan', 75000, '2014-01-20 00:00:00:000', 1),
(N'Gülcan', N'Yýldýz', 90000, '2014-04-11 00:00:00:000', 3);

select *from ikramiye
insert into ikramiye values
(1, 5000, '2016-02-20 00:00:00:000'),
(2, 3000, '2016-06-11 00:00:00:000'),
(3, 4000, '2016-02-20 00:00:00:000'),
(1, 4500, '2016-02-20 00:00:00:000'),
(2, 3500, '2016-06-11 00:00:00:000');

select *from unvan
insert into unvan values
(1, N'Yönetici', '2016-02-20 00:00:00:000'),
(2, N'Personel', '2016-06-11 00:00:00:000'),
(8, N'Personel', '2016-06-11 00:00:00:000'),
(5, N'Müdür', '2016-06-11 00:00:00:000'),
(4, N'Yönetici Yardýmcýsý', '2016-06-11 00:00:00:000'),
(7, N'Personel', '2016-06-11 00:00:00:000'),
(6, N'Takým Lideri', '2016-06-11 00:00:00:000'),
(3, N'Takým Lideri', '2016-06-11 00:00:00:000');