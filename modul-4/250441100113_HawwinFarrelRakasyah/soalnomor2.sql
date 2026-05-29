SELECT 
    m.nama_mahasiswa,
    mk.id_mk
FROM mahasiswa m
LEFT JOIN krs k ON m.id_mahasiswa = k.id_mahasiswa
LEFT JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mk
ORDER BY m.nama_mahasiswa;