SELECT 
    m.nama_mahasiswa,
    mk.nama_mk,
    mk.sks
FROM mahasiswa m
INNER JOIN krs k ON m.id_mahasiswa = k.id_mahasiswa
INNER JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mk
WHERE m.program_studi = 'Sistem Informasi' 
  AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;