import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';

class AdditionalBussiness extends StatelessWidget {
  const AdditionalBussiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String area = "Area Name";
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Icon(
              Icons.business_sharp,
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Additional Place of Bussiness",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.048,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  area,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.05,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ))
      ],
    );
  }
}
