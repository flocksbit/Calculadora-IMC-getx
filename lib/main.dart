import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.HOME,
    );
  }
}
