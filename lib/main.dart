import 'package:favapp/favourite/favourite_screen.dart';
import 'package:favapp/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
          // ChangeNotifierProvider(create: (_) =>  AuthProvider()),
         ChangeNotifierProvider(create: (_) =>  FavouriteItemProvider()),
        ],
        child:
         MaterialApp(
           debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:   FavouriteScreen(),
        )
    );

  }
}