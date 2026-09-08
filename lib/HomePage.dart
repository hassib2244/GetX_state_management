import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/CounterStateController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    final CounterStateController C=Get.put(CounterStateController());


    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),),
         body: Center(
           child: Obx(()=>
           Text("Click: ${C.count}")
           )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
       C.increament();
      },child: Icon(Icons.add)),
    );
  }
}
