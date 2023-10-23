import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    // Item(name: 'Sugar', price: 5000),
    // Item(name: 'Salt', price: 2000)
    Item(
        name: 'Beras 5kg',
        price: 75000,
        stok: 20,
        rating: 5,
        url:
            'https://s3.amazonaws.com/images.ecwid.com/images/11631305/1070043376.jpg'),
    Item(
        name: 'Minyak 1L',
        price: 21000,
        stok: 15,
        rating: 4,
        url:
            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/855/bimoli_bimoli-minyak-goreng-botol--1-liter-_full02.jpg'),
    Item(
        name: 'Ice Cream',
        price: 5000,
        stok: 25,
        rating: 3.5,
        url: 'https://cf.shopee.co.id/file/ecad222284cd59cacfcc286fd6b2ee8f'),
  ];

  // final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Navigasi Toko Flutter\nClarita Putri Anggraeni - 2141720213',
        textAlign: TextAlign.center,
      )),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
                child: InkWell(
              onTap: () {
                // Navigator.pushNamed(context, routeName, arguments: item);
                Navigator.pushNamed(context, '/item', arguments: item);
                // Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.network(item.url.toString(),
                            fit: BoxFit.fitWidth)),
                    Expanded(child: Text(item.name.toString())),
                    Expanded(
                        child: Text(item.stok.toString(),
                            textAlign: TextAlign.center)),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            //membuat ikon bintang
                            Icons.star,
                            color: Colors.blue[500],
                          ),
                          Text(item.rating.toString()),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
              ),
            )
                // builder: (context) {
                //   return Card(
                //     // return InkWel(
                //     //   onTap: (){
                //     //     Navigator.pushNamed(context, '/item');
                //     //   },
                //     // ),

                // }
                );
          },
        ),
      ),
    );
  }
}
