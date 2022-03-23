import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gstapp/Model/data.dart';
import 'package:http/http.dart' as http;

class MainPageController extends GetxController {
  Rx<Data> result = Data().obs;
  late TextEditingController searchBar;
  RxList<bool> selectedButton = [true, false].obs;
  RxBool isGstNumber = true.obs;

  @override
  void onInit() {
    searchBar = TextEditingController();
    super.onInit();
  }

  //Toogle Button Functionality
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

  //Change the title based on this (above search bar)
  bool get checkTheTitle => isGstNumber.value;

  fetchData() async {
    if (searchBar.text.isEmpty) {
      Get.snackbar(
          "Incorrent GST number", "Please enter the corrent GST Number",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      try {
        Get.snackbar("Fetching....", "Please Wait",
            snackPosition: SnackPosition.BOTTOM);
        final url = Uri.parse(
            'https://gst-api-9984d-default-rtdb.firebaseio.com/' +
                searchBar.text +
                '.json');
        var response = await http.get(url);
        var jsonString = jsonDecode(response.body);
        result.value = Data.fromJson(jsonString);
        Get.closeAllSnackbars();
        Get.toNamed("/Result");
      } catch (e) {
        Get.snackbar("Error!", "Please try again later.",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  String get companyName => result.value.companyName;
  Address get primaryAddress => result.value.addressPrimary;
  Juristication get juristication => result.value.companyJuristication;
  String get companyCertificate => result.value.companyCertificate;
  String get registrationDate => result.value.regDate;
  String get expireDate => result.value.expDate;
  String activeStatus() =>
      result.value.isActive == "yes" ? "Active" : "Inactive";

  bool get checkActiveContianer =>
      result.value.isActive == "yes" ? true : false;

  showMessage() {
    Get.snackbar("Done!", "Mission Successful!",
        snackPosition: SnackPosition.BOTTOM);
  }
}
