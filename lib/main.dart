import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/src/app.dart';
import 'package:untitled1/src/controller/import_statistics_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: BindingsBuilder((){
        Get.put(ImportStatisticsController());
      }),
      theme: ThemeData(
              primarySwatch: Colors.blue,
      ),
      home: App()
    );
  }
}
