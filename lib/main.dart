import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/HomePage.dart';
import 'package:get/get.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homepage(),
    );
  }
}
