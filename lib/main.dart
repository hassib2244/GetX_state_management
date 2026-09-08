import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/HomePage.dart';
import 'package:flutter_getx_state_management/ProductPage.dart';
import 'package:get/get.dart';
import 'HomePage.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(), transition: Transition.zoom),
        GetPage(name: '/product',
            page: () => ProductPage(),
            transition: Transition.zoom),

      ],
      //home: Homepage(),
    );
  }
}
