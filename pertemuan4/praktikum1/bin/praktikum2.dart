void main(List<String> arguments) {
// Langkah 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

// Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; //This works, too.
  var names3 = {}; //Creates a map, not a set.

  // Tambahkan elemen nama dan NIM
  names1.add('Nama: Clarita Putri Anggraeni');
  names1.add('NIM: 2141720213');

  names2.addAll(['Nama: Clarita Putri Anggraeni', 'NIM: 2141720213']);

  // Cetak semua variabel
  print(names1);
  print(names2);
  print(names3);
}
