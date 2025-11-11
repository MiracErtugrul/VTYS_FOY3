use PersonelYonetim

-- soru 3 “Yazýlým” veya “Donaným” birimlerinde çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz.
SELECT ad, soyad, maas FROM calisanlar
WHERE calisan_birim_id IN (1, 2);

-- soru 4 Maaþý en yüksek olan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz.
SELECT ad, soyad, maas FROM calisanlar
WHERE maas = (SELECT MAX(maas) FROM calisanlar);

-- soru 5 Birimlerin her birinde kaç adet çalýþan olduðunu ve birimlerin isimlerini listeleyen sorguyu yazýnýz.
SELECT calisan_birim_id, COUNT(*) AS CalisanSayisi
FROM calisanlar
GROUP BY calisan_birim_id;

-- soru 6 Birden fazla çalýþana ait olan unvanlarýn isimlerini ve o unvan altýnda çalýþanlarýn sayýsýný listeleyen sorguyu yazýnýz.
SELECT unvan_calisan, COUNT(*) AS CalisanSayisi
FROM unvan
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;

-- soru 7 Maaþlarý “50000” ve “100000” arasýnda deðiþen çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz.
SELECT ad, soyad, maas
FROM calisanlar
WHERE maas BETWEEN 50000 AND 100000;

-- soru 8 Ýkramiye hakkýna sahip çalýþanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazýnýz.
SELECT ad, soyad, birim_ad, unvan_calisan, ikramiye_ucret
FROM calisanlar 
JOIN birimler ON calisan_birim_id = birim_id
JOIN unvan ON calisan_id = unvan_calisan_id
JOIN ikramiye ON calisan_id = ikramiye_calisan_id;

-- soru 9 Ünvaný “Yönetici” ve “Müdür” olan çalýþanlarýn ad, soyad ve ünvanlarýný listeleyen sorguyu yazýnýz.
SELECT calisanlar.ad, calisanlar.soyad, unvan.unvan_calisan
FROM calisanlar, unvan
WHERE calisanlar.calisan_id = unvan.unvan_calisan_id
AND unvan.unvan_calisan IN ('Yönetici', 'Müdür');

-- soru 10 Her bir birimde en yüksek maaþ alan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz.
SELECT ad, soyad, maas, calisan_birim_id
FROM calisanlar
WHERE maas IN (
    SELECT MAX(maas)
    FROM calisanlar
    GROUP BY calisan_birim_id
);