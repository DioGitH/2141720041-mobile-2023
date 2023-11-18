# Pemrograman Mobile - Pertemuan 12

NIM : 2141720041

NAMA : MAULIDIO FARHAN RIZKULLAH

ABSEN : 19

KELAS : 3F

## Praktikum 1

### Soal 1
![soal1](docs/p1n1.png)

### Soal 2
![soal2](docs/p1n2.png)

### Soal 3
![soal3](docs/p1n3.gif)

 substring digunakan untuk mendapatkan bagian tertentu dari suatu string berdasarkan indeks awal dan akhir. Sedangkan catchError digunakan untuk menangani dan memproses error yang terjadi selama eksekusi operasi asynchronous.

## Praktikum 2

### Soal 4
![soal4](docs/p2n4.gif)

Pada langkah 1 berisi 3 method Future<int> yang masing masing berfungsi mengembalikan nilai setelah menunggu selama 3 detik menggunakan Future.delayed. Sedangkan pada langkah 2 digunakan untuk menghitung jumlah nilai dari ketiga fungsi sebelumnya yang dipanggil. hal ini akan memakan waktu selama total 9 detik karena masing masing dari fungsi langkah 1 memiliki delay 3 detik, jadi butuh waktu total 9 detik untuk memperolah hasil dari pemanggilan fungsi count

## Praktikum 3

### Soal 5
![soal5](docs/p3n5.gif)

Future getNumber digunakan untuk membuat objek Completer baru yang kemudian memanggil fungsi calculate yang digunakan untuk melakukan perhitungan dengan durasi 5 detik dan mengatur nilai completer menjadi 42 yang selanjutnya mengembalikan hasil Future dari Completer


### Soal 6
![soal6](docs/p3n6.gif)

Pada hasil tidak menunjukkan perbedaan signifikan tetapi pada langkah 5-6, calculate2 menggunakan try catch untuk menangani exception. Jika terjadi exception, completer.completeError({}); akan dipanggil.