import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vappr_tech_task/modules/home/bindings/home.binding.dart';
import 'package:vappr_tech_task/routes/pages.routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'VAPPR TECH TASK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      initialRoute: Routes.homeRoute,
      initialBinding: HomeBinding(),
      getPages: Routes.pages,
    );
  }
}
