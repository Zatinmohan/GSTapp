import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';
import 'package:gstapp/View/ResultPage/Address/addressCardMain.dart';
import 'package:gstapp/View/ResultPage/Date/DateWidget.dart';

import 'package:gstapp/View/ResultPage/UpperContainer/upperPart.dart';
import 'package:gstapp/View/ResultPage/WardRows/WardMain.dart';

import 'Consitution Bussiness/consitution.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
              children: [
                UpperResultContainer(),
                SizedBox(height: 25.0),
                AddressContainer(),
                SizedBox(height: 16.0),
                WardMain(),
                SizedBox(height: 16.0),
                ConsitutionBussiness(),
                SizedBox(height: 16.0),
                ResultDateWidget(),
                SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  height: Get.width * 0.14,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: mainThemeColor),
                      onPressed: () => print("Pressed"),
                      child: Text("Get Return Filing Status")),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: SizedBox(
      //     height: Get.height * 0.08,
      //     child: ElevatedButton(
      //         style: ElevatedButton.styleFrom(primary: mainThemeColor),
      //         onPressed: () => print("Pressed"),
      //         child: Text("Get Return Filing Status")),
      //   ),
      // ),
    );
  }
}
