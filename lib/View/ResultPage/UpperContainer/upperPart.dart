import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';
import 'package:gstapp/View/ResultPage/UpperContainer/cardData.dart';
import 'package:gstapp/View/ResultPage/WardRows/WardMain.dart';

class UpperResultContainer extends StatelessWidget {
  const UpperResultContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      width: Get.width,
      height: Get.height * 0.4,
      decoration: const BoxDecoration(
          color: mainThemeColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 30.0),
          CardDetails(),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios, color: fontColor)),
        const SizedBox(width: 5.0),
        Text(
          "GST Profile",
          style: TextStyle(
            color: fontColor,
            fontWeight: FontWeight.w700,
            fontSize: Get.width * 0.06,
          ),
        )
      ],
    );
  }
}
