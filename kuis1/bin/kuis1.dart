import 'package:kuis1/kuis1.dart' as kuis1;

void main(List<String> arguments) {
  //Tugas 1
  print('Hello world');

  //Tugas 2
  String name = 'Clarita Putri Anggraeni';

  print(name);
  print(name);
  print(name);

  //Tugas 3
  String firstName = 'Clarita';
  final lastName = 'Putri Anggraeni';

  print(firstName);
  print(lastName);

  //Tugas 4A
  final array1 = [1, 2, 3];
  const array2 = [4, 5, 6];

  array1[0] = 100;
  // array2[0] = 100;

  print(array1);
  print(array2);

  //Tugas 4
  int number1 = 100;
  double number2 = 100.5;

  print(number1);
  print(number2);

  //Tugas 5
  num number = 10;
  print(number);

  number = 10.5;
  print(number);

  //Tugas 6
  String firstName = 'Clarita';
  String LastName = 'Putri Anggraeni';

  var fulName = '$firstName ${LastName}';

  print(fulName);

  //Tugas 7
  var text = 'ini \'OPTIMAL\' \$sekali';
  print(text);

  //Tugas 8
  String firstName = 'Clarita';
  String lastName = 'Putri Anggraeni';
  var name1 = firstName + lastName;
  var name2 = 'Clarita' 'Putri' 'Anggraeni';
  print(name1);
  print(name2);

  //Tugas 9
  String firstName = 'Clarita';
  String lastName = 'Putri Anggraeni';
  var name1 = firstName + " " + lastName;
  var name2 = 'Clarita' ' Putri' ' Anggraeni';
  print(name1);
  print(name2);

  //Tugas 10
  var kalimat_panjang = '''
  ini
  saya punya
  proyek dart
  banyak ''';
  print(kalimat_panjang);
}
