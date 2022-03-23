import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "GSTIN of the Tax Payer",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 5.0),
          Text(
            "GST NO",
            style: TextStyle(
                color: fontColor,
                fontSize: Get.width * 0.055,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 18.0),
          Text(
            "Company Name",
            style: TextStyle(
                color: fontColor,
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 18.0),
          Container(
              padding: const EdgeInsets.all(5.0),
              width: Get.width * 0.25,
              decoration: BoxDecoration(
                color: fontColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "• Active",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.045,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
