import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Kuliner & Liga Inggris',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      initialRoute: Routes.login,
      getPages: Routes.pages,
    ),
  );
}
