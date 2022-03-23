import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';
import 'package:gstapp/Misc/colors.dart';

class ToggleButtonCustom extends StatelessWidget {
  const ToggleButtonCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Container(
          width: Get.width * 0.8,
          height: Get.height * 0.085,
          decoration: BoxDecoration(
            color: const Color(0xff1a884b),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Center(
            child: Obx(
              () => ToggleButtons(
                isSelected: Get.find<MainPageController>().selectedButton,
                fillColor: fontColor,
                color: Colors.white,
                selectedColor: mainThemeColor,
                borderColor: Colors.transparent,
                selectedBorderColor: fontColor,
                onPressed: (index) {
                  Get.find<MainPageController>().changeValues(index);
                },
                borderRadius: BorderRadius.circular(25.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Search GST Number",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Get.width * 0.04,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "GST Return Status",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Get.width * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}
