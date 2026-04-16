CREATE TABLE lokasi (
    id_lokasi SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    kontak VARCHAR(50)
);

CREATE TABLE anggota (
    id_anggota SERIAL PRIMARY KEY,
    inisial VARCHAR(10) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    peran VARCHAR(100) NOT NULL
);

CREATE TABLE galeri (
    id_galeri SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL,
    url_foto VARCHAR(255) NOT NULL,
    tanggal_upload DATE DEFAULT CURRENT_DATE,
    deskripsi TEXT
);

-- Tabel relasi untuk mengaitkan cabang/branch ke lokasi
CREATE TABLE branch (
    id_branch SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    lokasi_id INTEGER REFERENCES lokasi(id_lokasi),
    kontak_label VARCHAR(100),
    kontak_url VARCHAR(255)
);