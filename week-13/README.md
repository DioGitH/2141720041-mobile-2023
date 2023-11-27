# Pemrograman Mobile - Pertemuan 13

NIM : 2141720041

NAMA : MAULIDIO FARHAN RIZKULLAH

ABSEN : 19

KELAS : 3F

## Praktikum 1

### Soal 3
yield* digunakan dalam fungsi generator untuk menggabungkan atau mentebar nilai-nilai dari suatu terable ke dalam iterable yang sedang dibuat.

fungsi getColors menghasilkan suatu Stream<Color> yang mengeluarkan warna-warna dari daftar colors pada interval waktu satu detik menggunakan Stream.periodic

### Soal 4
![soal4](docs/p1n4.gif)

### Soal 5

pada penggunaan await for, changeColor akan menunggu setiap peristiwa sebelum melanjutkan ke peristiwa berikutnya. Sedangkan pada penggunaan listen, kode bisa melanjutkan eksekusi tanpa menunggu peristiwa selanjutnya

## Praktikum 2

### Soal 6
![soal6](docs/p2n6.gif)

Pada langkah 8 dilakukan inisialisasi objek stream dan controller dari objek NumberStream. Setelah itu menggunakan listen untuk mendaftarkan fungsi callback yang akan dipanggil setiap ada perubahan atau data baru. Dalam fungsi callback,, menggunakan setState untuk memperbarui state widget dengan nilai terbaru yang diterima dari aliran data. Nilai disimpan dalam variabel lastNumber.

Pada langkah 10 addRandomNumber() digunakan untuk mneghasilkan bilangan acak antara 0 sampai 9 menggunakan class Random, yang kemudian menambahkan bilangan ke aliran data numeric menggunakan objek numberStream.

