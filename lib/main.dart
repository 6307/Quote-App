// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: AppRoutes.routes,
    );
  }
}
