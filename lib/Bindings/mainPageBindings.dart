import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';

class MainPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() => MainPageController());
  }
}
