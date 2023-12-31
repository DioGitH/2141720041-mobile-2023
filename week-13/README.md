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

### Soal 7
method addError() digunakan untuk menambahkan pesan error ke dalam sink yang terkait dengan controller. method onError ditambahkan ke hasil pemanggilan listen pada objek stream untuk penanganan error. Ketika error, callback onError akan dijalankan dan akan mengubah state widget dengan menetapkan nilai lastNumber menjadi -1.

## Praktikum 3

### Soal 8
![soal8](docs/p3n8.gif)
pada langkah 1-3 menunjukkan penggunaan StreamTransformer yang digunakan untuk mengubah nilai dalam aliran data numerik dengan mengkalikannya dengan 10, serta memberikan penanganan error untuk mengatasi error pada proses transformasi.

## Praktikum 4

### Soal 9
![soal9](docs/p4n9.gif)
variabel subscription akan menerima hasil dari listen, yang pada langkah 6 digunakan untuk memberhentikan subscription yang berarti widget tidak akan berlangganan perubahan pada aliran data setelah method dispose() dipanggil. Pada langkah 8 dilakukan kondisi dimana jika numberStramController.isClosed true maka lastNumber di set menjadi -1, dan jika false maka numberStreamm.addNumberToSink(myNum) akan dijalankan

## Praktikum 5

### Soal 10
error karena penggunaan subscription pada stream yang sama tanpa menutup subcription sebelumnya. Stream di flutter hanya dapat didengarkan oleh satu subscription pada satu waktu.

### Soal 11
![soal11](docs/p5n11.gif)
penggunaan .asBroadcastStream() membuat stream menjadi bisa didengarkan oleh beberapa subscription sekaligus. ketika menggunakan broadcast stream, subscription akan mendapatkkan semua data yang dikirim melalui stream. pada setState, terjadi penambahan nilai ke variabel values. kedua subscription akan mengupdate values sehingga menyebabkan nilai terus bertambah karena kedua subscription akan memberikan nilai pada variabel yang sama.

## Praktikum 6

### Soal 12
![soal12](docs/p6n12.gif)
pada class NumberStream memiliki method getNumbers() yang digunakan untuk menghasilkan stream yang mengirimkan angka acak antara 0 sampai 9 setiap detik yang kemudian digunakan dalam widget menggunakan StreamBuilder di dalam file main.dart. Pada widget StreamBuilder, properti stream diatur sebagai hasil dari pemanggilan getNumbers() dari objek NumberStream. jika ada error, pesan "Error" akan diprint. Jika tidak ada data, widget akan mengembalikan SizedBox.shrink().

## Praktikum 7

### Soal 13
![soal13](docs/p7n13.gif)
- Konsep BLoC diterapkan melalui class RandomNumberBloc. class tersebut memiliki 2 controller stream, _generateRandomController untuk generate angka acak dan _randomNumberController untuk mengirimkan angka ke interface pengguna. Pada class RandomScreen, instance dari RandomNumberBloc disimpan dalam var _bloc. Widget menggunakan StreamBuilder untuk mendengarkan perubahan pada stream random number. ketika tombol ditekan, sink pada controller _generateRandomCOntroller akan terpicu dan akan menghasilkan angka acak, hal ini memicu logika BLoC.
