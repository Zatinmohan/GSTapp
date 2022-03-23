import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';
import 'package:gstapp/Misc/colors.dart';

class AddressData extends StatelessWidget {
  const AddressData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Icons.location_on,
              color: mainThemeColor,
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
                  "Principle Place of Bussiness",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.05,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "${Get.find<MainPageController>().primaryAddress.floorRoom}, ${Get.find<MainPageController>().primaryAddress.type}, ${Get.find<MainPageController>().primaryAddress.companyBuilding},",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.05,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),
                Text(
                  Get.find<MainPageController>().primaryAddress.companyArea,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.05,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),
                Text(
                  "${Get.find<MainPageController>().primaryAddress.state}, ${Get.find<MainPageController>().primaryAddress.pincode}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: Get.width * 0.05,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
      ],
    );
  }
}
