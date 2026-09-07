import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/ProductPage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              GetStorage().write("Name", "Hassibul Hossain");
              /*Get.offNamed("/product");
               Get.to(ProductPage());
               Get.off(ProductPage());
               Get.offAll(ProductPage());
               GetX SnacBar*/
              /* Get.snackBar("Hi!", "Hello GetX",
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
              */
              /*Get.defaultDialog(
                title: "Delete Alert",
                titlePadding: EdgeInsets.all(10),
                titleStyle: TextStyle(color: Colors.black),

                middleText: "Once delete, you can't get it back",
                middleTextStyle: TextStyle(color: Colors.white),

                backgroundColor: Colors.green,
                radius: 4,
                textConfirm: "Confirm",
                textCancel: "Not Now",
                cancelTextColor: Colors.white,
                confirmTextColor: Colors.white,
                onCancel: ()=>{Get.back(closeOverlays: true)},
                onConfirm: ()=>{Get.back(closeOverlays: true)},
                barrierDismissible: false,

                content: Column(

                  children: [
                    Text("Task 1"),
                    Text("Task 2"),
                  ],
                )

              );
          */
              /*Get.bottomSheet(
                Container(
                  height: 200,
                  width: 440,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Text("Shanto"),
                      Text("Shanto"),
                      Text("Shanto"),
                      Text("Shanto"),
                      ElevatedButton(onPressed: (){Get.back(closeOverlays: true);},
                          child: Text("close")),
                    ],
                  ),
                ),
                enableDrag: false,
                isDismissible: false,
                barrierColor: Colors.red[1],
              );
              */
            },
            child: Text("Write Data"),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: (){
            var MyName= GetStorage().read("Name");
              Get.snackbar(MyName, "This is My Name");
            }, child: Text("Read Data"),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: (){
              GetStorage().remove("Name");
            }, child: Text("Data Erase"),
          ),
        ],
      ),
    );
  }
}
