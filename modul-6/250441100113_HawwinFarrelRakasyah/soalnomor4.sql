SELECT tabel_temp.kode_mk, AVG(tabel_temp.nilai_angka) AS rata_rata
FROM (
    SELECT kode_mk, nilai_angka 
    FROM nilai 
    WHERE kode_mk IN ('MK01', 'MK02')
) AS tabel_temp
GROUP BY tabel_temp.kode_mk;