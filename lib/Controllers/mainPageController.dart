import 'package:get/get.dart';

class MainPageController extends GetxController {
  RxList<bool> selectedButton = [true, false].obs;
  RxBool isGstNumber = true.obs;

  changeValues(int index) {
    if (index == 0) {
      if (selectedButton[index] != true) {
        selectedButton[0] = !selectedButton[0];
        selectedButton[1] = !selectedButton[1];
        isGstNumber.value = true;
      }
    } else if (index == 1) {
      if (selectedButton[index] != true) {
        selectedButton[0] = !selectedButton[0];
        selectedButton[1] = !selectedButton[1];
        isGstNumber.value = false;
      }
    }
  }

  bool get checkTheTitle => isGstNumber.value;
}
