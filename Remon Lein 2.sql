-- soal 2
-- Tampilkan nama produk, kategori, dan harga dari semua produk yang tidak pernah terjual
SELECT
    p.nama_produk,
    p.kategori,
    p.harga
FROM
    produk p
WHERE NOT EXISTS (
    SELECT 1
    FROM transaksi t
    WHERE t.id_produk = p.id_produk
);
