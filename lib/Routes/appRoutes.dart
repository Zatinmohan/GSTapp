import 'package:get/get.dart';
import 'package:gstapp/Bindings/mainPageBindings.dart';
import 'package:gstapp/View/MainScreen/mainPage.dart';
import 'package:gstapp/View/ResultPage/resultMain.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => MainPage(),
      binding: MainPageBindings(),
    ),
    GetPage(name: '/Result', page: () => ResultPage()),
  ];
}
