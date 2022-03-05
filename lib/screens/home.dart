import 'package:flutter/material.dart';
import 'package:lab3_ecommerce_app/components/item_tile.dart';
import 'package:lab3_ecommerce_app/data.dart';
import 'package:lab3_ecommerce_app/screens/shop.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Store"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(Shop.routeName);
          }, icon: const Icon(Icons.shopping_cart,),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(7),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: storeItems.length,
            itemBuilder: (context, index){
              return ItemTile(
                item: storeItems.elementAt(index),
              );
            }), 
      ),
    );
  }
}
