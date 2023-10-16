# Pemrograman Mobile - Pertemuan 7

NIM : 2141720041

NAMA : MAULIDIO FARHAN RIZKULLAH

ABSEN : 19

KELAS : 3F

## Praktikum 1
- Menambahkan widget titleSection yang digunakan untuk menampilkan tulisan dan icon dalam widget yang diatur dengan penggunaan row dan column
![ss1](layout_flutter/images/p1.png)
## Praktikum 2
- Menambahkan widget buttonSection yang akan digunakan untuk button navigasi, yang berisi icon dan menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong
![ss2](layout_flutter/images/p2.png)
## Praktikum 3
- Menambahkan widget textSection untuk menampilkan paragraf teks
![ss3](layout_flutter/images/p3.png)
## Praktikum 4
- Menambahkan gambar
![ss4](layout_flutter/images/p4.png)
## Tugas Codelabs
<br>

### Row and Column
- Widget Row digunakan untuk menyusun elemen-elemen secara horizontal
- Widget Column digunakan untuk menyusun elemen-elemen secara vertikal

| Row        | Column           |
| ------------- |:-------------:| 
| ![ss4](basic_layout_flutter/images/row.png) | ![ss4](basic_layout_flutter/images/column.png) |

### Axis size and alignment
- Axis mengacu pada arah seperti vertikal dan horizontal. terdapat 2 axis pada Flutter yaitu Main Axis dan Cross Axis.

- Contoh mainAxisAlignment

| start        | end           |
| ------------- |:-------------:| 
| ![ss4](basic_layout_flutter/images/mainaxisStart.png) | ![ss4](basic_layout_flutter/images/mainaxisEnd.png) |

- Contoh crossAxisAlignment

| start        | end           |
| ------------- |:-------------:| 
| ![ss4](basic_layout_flutter/images/crossaxisStart.png) | ![ss4](basic_layout_flutter/images/crossaxisEnd.png) |

### Flexible widget
- Digunakan untuk mengontrol elemen-elemen berperilaku secara fleksibel.
![ss4](basic_layout_flutter/images/flexFit.png)

### Expanded widget
- Mirip dengan Flexible widget, Expanded widget dapat memaksa widget untuk mengisi ruang ekstra.
![ss4](basic_layout_flutter/images/expanded.png)

### SizedBox widget
- Digunakan untuk mengubah ukuran tinggi dan lebar widget 
![ss4](basic_layout_flutter/images/sizedbox.png)

### Spacer widget
- Digunakan untuk memberi space antar widget
![ss4](basic_layout_flutter/images/spacer.png)

### Text widget
- Digunakan untuk menampilkan text
![ss4](basic_layout_flutter/images/text.png)

### Icon widget
- Digunakan untuk menampilkan icon 
![ss4](basic_layout_flutter/images/icon.png)

### Image widget
- Digunakan untuk menampilkan gambar
```dart
    Widget image = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.network(
                'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg'),
        ],
    );
```
![ss4](basic_layout_flutter/images/image.png)

### Tugas codelabs flutter
```dart
    Widget finalPart = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Maulidio Farhan Rizkullah',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Experienced App Developer',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Perumahan Kembang BB 05',
            ),
            Text(
              '+62 852 8958 9391',
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
        ),
      ],
    );
```
![ss4](basic_layout_flutter/images/final.png)

