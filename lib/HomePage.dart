import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Practice"),),
      body: Center(
        child: ElevatedButton(
            onPressed: (){

              Get.snackbar("Hi!", "Hello GetX",
              snackPosition: SnackPosition.BOTTOM,
              showProgressIndicator: true,
              backgroundColor: Colors.green,
              colorText: Colors.white,
              borderRadius: 2,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                icon: Icon(Icons.add_circle_outline,color: Colors.white),
                isDismissible: false,
                duration: Duration(seconds:5),
                animationDuration: Duration(milliseconds: 1500),




              );
            },
            child: Text("Click me")),
      ),
    );
  }
}
