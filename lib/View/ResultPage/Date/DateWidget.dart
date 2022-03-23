import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';

class ResultDateWidget extends StatelessWidget {
  const ResultDateWidget({Key? key}) : super(key: key);

  get fontColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        width: Get.width,
        height: Get.width * 0.25,
        decoration: BoxDecoration(
          color: fontColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            const dateTitleWidget(
              title1: "Date of Registration",
              title2: "Date of Cancellation",
              isDate: false,
            ),
            const SizedBox(height: 10.0),
            dateTitleWidget(
              title1: Get.find<MainPageController>().registrationDate,
              title2: Get.find<MainPageController>().expireDate,
              isDate: true,
            ),
          ],
        ));
  }
}

class dateTitleWidget extends StatelessWidget {
  final String title1, title2;
  final bool isDate;
  const dateTitleWidget({
    Key? key,
    required this.title1,
    required this.title2,
    required this.isDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: isDate
              ? TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * 0.05,
                  fontWeight: FontWeight.w500,
                )
              : TextStyle(
                  color: Colors.grey,
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.w700,
                ),
        ),
        Text(
          title2,
          style: isDate
              ? TextStyle(
                  color: Colors.black,
                  fontSize: Get.width * 0.05,
                  fontWeight: FontWeight.w500,
                )
              : TextStyle(
                  color: Colors.grey,
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.w700,
                ),
        )
      ],
    );
  }
}
