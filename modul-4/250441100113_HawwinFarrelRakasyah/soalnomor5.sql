SELECT 
    m.nama_mahasiswa,
    m.angkatan,
    mk.nama_mk,
    d.nama_dosen
FROM mahasiswa m
INNER JOIN krs k ON m.id_mahasiswa = k.id_mahasiswa
INNER JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mk
INNER JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE m.angkatan BETWEEN 2023 AND 2025
  AND d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY m.angkatan DESC, k.semester_ambil ASC;