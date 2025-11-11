CREATE DATABASE PersonelYonetim
USE PersonelYonetim

CREATE TABLE birimler (
    birim_id INT IDENTITY(1,1) PRIMARY KEY,
    birim_ad CHAR(25) NOT NULL
);

CREATE TABLE calisanlar (
    calisan_id INT IDENTITY(1,1) PRIMARY KEY,
    ad CHAR(25) NULL,
    soyad CHAR(25) NULL,
    maas INT NULL,
    katilmaTarihi DATETIME NULL,
    calisan_birim_id INT NOT NULL,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id)
);

CREATE TABLE unvan (
    unvan_calisan_id INT NOT NULL,
    unvan_calisan CHAR(25) NULL,
    unvan_tarih DATETIME NULL,
    FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id)
);

CREATE TABLE ikramiye (
    ikramiye_calisan_id INT NOT NULL,
    ikramiye_ucret INT NULL,
    ikramiye_tarih DATETIME NULL,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id)
);
