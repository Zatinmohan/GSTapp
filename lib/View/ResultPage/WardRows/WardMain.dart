import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';
import 'package:gstapp/Misc/colors.dart';

class WardMain extends StatelessWidget {
  const WardMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContianerWidget(
            title: "State Juristication",
            subtitle: Get.find<MainPageController>()
                .juristication
                .stateJuristication),
        CustomContianerWidget(
            title: "Center Juristication",
            subtitle: Get.find<MainPageController>()
                .juristication
                .centerJuristication),
        CustomContianerWidget(
            title: "Taxpayer Type",
            subtitle:
                Get.find<MainPageController>().juristication.typeOfTaxPayer),
      ],
    );
  }
}

class CustomContianerWidget extends StatelessWidget {
  final String title, subtitle;
  const CustomContianerWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        width: Get.width * 0.3,
        height: Get.width * 0.3,
        decoration: BoxDecoration(
          color: fontColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: Get.width * 0.04,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: Get.width * 0.05,
              ),
            )
          ],
        ));
  }
}
