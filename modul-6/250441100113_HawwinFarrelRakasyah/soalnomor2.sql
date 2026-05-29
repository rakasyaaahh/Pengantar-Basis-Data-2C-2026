SELECT kode_mk, nama_mk
FROM mata_kuliah
WHERE kode_mk IN (
    SELECT k.kode_mk
    FROM krs k
    JOIN mahasiswa m ON k.nim = m.nim
    WHERE m.nama = 'Budi Santoso'
);
