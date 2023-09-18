import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Suhu Dalam Celcius', // Hint Text
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true), // Tampilan input keyboard khusus angka
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}')), // Validasi hanya angka
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16), // Jarak antara TextFormField dan Row

              // Row untuk menampilkan informasi suhu dalam Kelvin dan Reamur
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Kelvin: 0.0"),
                  Text("Reamur: 0.0"),
                ],
              ),
              SizedBox(height: 16), // jarak antara row dan tombol

              // Tombol dengan warna biru dan teks putih
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  // Fungsi yang akan dijalankan saat tombol diklik
                  // Anda dapat menambahkan logika konversi suhu di sini
                },
                child: Text(
                  "Konversi", //Teks tombol
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
