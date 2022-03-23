import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Misc/colors.dart';
import 'package:gstapp/View/ResultPage/Address/additionalBussness.dart';
import 'package:gstapp/View/ResultPage/Address/addressContent.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: Get.width,
      height: Get.height * 0.35,
      color: fontColor,
      child: Column(
        children: const [
          AddressData(),
          SizedBox(height: 15.0),
          AdditionalBussiness(),
        ],
      ),
    );
  }
}
