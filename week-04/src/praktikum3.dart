void main(){
  var gifts = {
    'first': 'partridge',
    'second': 'trutledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();

  gifts['nama'] = 'Maulidio Farhan Rizkullah';
  gifts['nim'] = '2141720041';

  nobleGases[20] = 'Maulidio Farhan Rizkullah';
  nobleGases[21] = '2141720041';

  mhs1['nama'] = 'Maulidio Farhan Rizkullah';
  mhs1['nim'] = '2141720041';

  


  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();

  mhs2[1] = 'Maulidio Farhan Rizkullah';
  mhs2[2] = '2141720041';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}