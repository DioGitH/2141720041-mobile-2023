void main(){
  // final list = [1,2,3];
  final list = List<Object?>.filled(5,null);
  
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);

  list[1] = "Maulidio Farhan Rizkullah";
  list[2] = "2141720041";
  assert(list[1] == "Maulidio Farhan Rizkullah");
  print(list[1]);
  print(list[2]);
}