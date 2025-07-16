-- Munculkan kode pelanggan, nama produk, kuantitinya, harga dan total 
-- dari semua produk yang pernah ditransaksikan, namun uotput yang diminta adalah total harga minimal 200.000 dan
-- diurutkan berdasarkan total harga terkecil
SELECT 
    t.code_pelanggan,
    p.nama_produk,
    t.kuantitas,
    p.harga,
    (t.kuantitas * p.harga) AS total_harga
FROM 
    transaksi t
JOIN 
    produk p ON t.id_produk = p.id_produk
WHERE 
    (t.kuantitas * p.harga) >= 200000
ORDER BY 
    total_harga ASC;
