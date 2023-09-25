void main(){
  // var record = ('first', a: 2, b: true, 'last');
  // var record2 = (2, 10);
  
  // print(tukar(record2));

  // (String, int) mahasiswa;
  // mahasiswa = ('Maulidio Farhan Rizkulah', 2141720041);
  // print(mahasiswa);

  var mahasiswa2 = ('Maulidio Farhan Rizkullah', a: 2141720041, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
