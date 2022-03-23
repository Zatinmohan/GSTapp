import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';
import 'package:gstapp/Routes/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: mainThemeColor,
      ),
      getPages: Routes.routes,
      initialRoute: '/',
    );
  }
}
