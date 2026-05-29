SELECT m.nim, m.nama, SUM(mk.sks) AS Total_SKS
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
WHERE k.semester IN (1, 3)
GROUP BY m.nim, m.nama;


-- 1. Membuat Tabel User
CREATE TABLE tb_user (
    ID_User VARCHAR(10) PRIMARY KEY, -- PK
    Nama_Pembeli VARCHAR(100),
    No_HP VARCHAR(20)
);

-- 2. Membuat Tabel Promotor
CREATE TABLE tb_promotor (
    ID_Promotor VARCHAR(10) PRIMARY KEY, -- PK
    Nama_Promotor VARCHAR(100)
);

-- 3. Membuat Tabel Konser (Berelasi dengan Promotor)
CREATE TABLE tb_konser (
    ID_Konser VARCHAR(10) PRIMARY KEY, -- PK
    Nama_Kon VARCHAR(100),
    Artis VARCHAR(100),
    Tgl_Konser DATE,
    Lokasi_Event VARCHAR(150),
    ID_Promotor VARCHAR(10), -- FK
    FOREIGN KEY (ID_Promotor) REFERENCES tb_promotor(ID_Promotor)
);

-- 4. Membuat Tabel Transaksi (Berelasi dengan User)
CREATE TABLE tb_transaksi (
    No_Invoice VARCHAR(20) PRIMARY KEY, -- PK
    Tgl_Beli DATE,
    ID_User VARCHAR(10), -- FK[cite: 1]
    FOREIGN KEY (ID_User) REFERENCES tb_user(ID_User)
);

-- 5. Membuat Tabel Detail Tiket (Berelasi dengan Transaksi dan Konser)
CREATE TABLE tb_detail_tiket (
    ID_Tiket VARCHAR(10) PRIMARY KEY, -- PK[cite: 1]
    No_Invoice VARCHAR(20), -- FK[cite: 1]
    ID_Konser VARCHAR(10), -- FK[cite: 1]
    Kategori VARCHAR(50),
    Seat_Num VARCHAR(10),
    Harga VARCHAR(20),
    FOREIGN KEY (No_Invoice) REFERENCES tb_transaksi(No_Invoice),
    FOREIGN KEY (ID_Konser) REFERENCES tb_konser(ID_Konser)
);