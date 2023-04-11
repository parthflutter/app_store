import 'package:app_store/screen/app_store/provider/store_provider.dart';
import 'package:app_store/screen/app_store/view/store_screen.dart';
import 'package:app_store/screen/app_store1/provider/home_provider.dart';
import 'package:app_store/screen/app_store1/view/home_screen.dart';
import 'package:app_store/screen/app_store2/view/home_screen2.dart';
import 'package:app_store/screen/app_store3/view/home_screen3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
          ChangeNotifierProvider(create: (context) => Store_provider()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) =>store_screen(),
      'store_screen1':(context) =>Store_screen1(),
        'Store_sceen2':(context) => Store_sceen2(),
        'Store_screen3':(context) => Store_screen3(),
  },
  ),
    ),
  );
}
