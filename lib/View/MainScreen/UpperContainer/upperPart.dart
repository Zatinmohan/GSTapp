import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';
import 'package:gstapp/View/MainScreen/UpperContainer/toggleButton.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: Get.width,
      height: Get.height * 0.45,
      decoration: const BoxDecoration(
          color: mainThemeColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select tye type for",
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.w500,
              fontSize: Get.width * 0.05,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            "GST Number Search Tool",
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.w600,
              fontSize: Get.width * 0.07,
            ),
          ),
          const SizedBox(height: 10.0),
          const ToggleButtonCustom(),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
