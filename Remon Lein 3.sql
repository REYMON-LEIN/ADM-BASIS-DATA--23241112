-- soal 3
-- kode pelanggan, nama pelanggan, alamat, dan nilai transaksi dari
-- pelanggan yang paling tinggi nilai transaksinya
WITH total_per_customer AS (
    SELECT 
        p.kode_pelanggan,
        p.nama_pelanggan,
        p.alamat,
        SUM(t.kuantitas * pr.harga) AS total_nilai_transaksi
    FROM 
        pelanggan p
    JOIN 
        transaksi t ON p.kode_pelanggan = t.kode_pelanggan
    JOIN
        produk pr ON t.id_produk = pr.id_produk
    GROUP BY 
        p.kode_pelanggan, p.nama_pelanggan, p.alamat
)
SELECT *
FROM total_per_customer
ORDER BY total_nilai_transaksi DESC
LIMIT 1;
