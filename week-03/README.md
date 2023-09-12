# Pemrograman Mobile - Pertemuan 3

NIM : 2141720041

NAMA : MAULIDIO FARHAN RIZKULLAH

ABSEN : 19

KELAS : 3F

## Praktikum 1

### Langkah 1

![ss1](docs/p1L1.png)

### Langkah 2
![ss2](docs/p1L1Test.png)
kode akan menampilkan "Test2" dan "Test2 again" karena pada pengecekan if pertama, jika variabel test bernilai test1 maka akan melakukan kondisi nya, sedangkan variabel test memiliki nilai test2, maka kondisi yang akan dijalankan ada pada else if yang kedua karena memiliki kondisi yang sama dengan variabel test. Setelah melewati if else yang pertama, maka kondisi akan berlanjut pada if yang kedua yaitu pada if yang bawah sendiri, karena kondisi if benar maka akan menampilkan print "Test2 again"

### Langkah 3

Akan terjadi error, karena variabel test bukan merupakan boolean sehingga akan menghasilkan error

Solusi:

![ss3](docs/p1L3.png)

dengan memberi kondisi pada if yaitu jika variabel test2 == "true" (dengan kondisi nilai string yang sama) jika benar maka akan menghasilkan true, dan sebaliknya jika salah maka akan menghasilkan nilai false
![ss4](docs/p1L3Test.png)

## Praktikum 2

### Langkah 1

![ss5](docs/p2L1.png)

### Langkah 2

Akan terjadi error karena variabel counter belum dibuat

![ss6](docs/p2L2.png)

Penjelasan pada langkah 3

### Langkah 3

![ss7](docs/p2L3.png)

pada langkah 1, kondisi akan dijalankan terlebih dahulu sebelum perintah dijalankan, sedangkan pada langkah 3 perintah akan dijalankan terlebih dahulu, setelah itu kondisi akan dicek

## Praktikum 3

### Langkah 1

![ss8](docs/p3L1.png)

### Langkah 2

akan terjadi error karena variabel index belum dibuat

![ss9](docs/p3L2.png)

setelah variabel index dibuat, code akan berjalan tetapi nilai index akan tetap sehingga akan menyebabkan perulangan berjalan terus menerus tanpa memasuki stop condition, jadi solusi nya dengan menambahkan index++ pada kondisi for

### Langkah 3

![ss10](docs/p3L3.png)

Hasil

![ss11](docs/p3L3Test.png)

pada kode program yang diberikan pada praktikum, saya mengganti nilai variabel index dari 10 menjadi 0 untuk mengecek apakah kode berjalan dengan benar atau tidak, setelah di cek ternyata kode tidak berjalan dengan baik dikarenakan operator || tersebut membuat kondisi else if menjadi aneh, sehingga saya mengganti operator dengan &&, maka dengan operator tersebut, kondisi jika index lebih dari 1 dan kurang dari 7 akan dilakukan langsung pada perulangan selanjutnya tanpa melanjutkan kondisi dibawahnya, sedangkan jika nilai index telah mencapai nilai 21 maka akan dilakukan break pada perulangan


## Tugas Praktikum

![ss12](docs/tugas.png)

Hasil

![ss13](docs/hasilTugas.png)


