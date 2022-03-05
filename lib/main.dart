import 'package:flutter/material.dart';
import 'package:lab3_ecommerce_app/providers/cart_provider.dart';
import 'package:lab3_ecommerce_app/screens/home.dart';
import 'package:lab3_ecommerce_app/screens/shop.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (context) => CartProvider(),
      child :  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => const Home(),
          Shop.routeName: (context) => const Shop(),
        },
      ),
    );

  }
}


