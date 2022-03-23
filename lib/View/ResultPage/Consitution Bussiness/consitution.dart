import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';
import 'package:gstapp/Misc/colors.dart';

class ConsitutionBussiness extends StatelessWidget {
  const ConsitutionBussiness({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Certificate of Bussiness",
            style: TextStyle(
              fontSize: Get.width * 0.05,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            Get.find<MainPageController>().companyCertificate,
            style: TextStyle(
              fontSize: Get.width * 0.06,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
