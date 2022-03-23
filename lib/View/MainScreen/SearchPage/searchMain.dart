import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gstapp/Controllers/mainPageController.dart';
import 'package:gstapp/Misc/colors.dart';

class SearchMain extends StatelessWidget {
  const SearchMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              Get.find<MainPageController>().checkTheTitle
                  ? "Enter GST number"
                  : "Enter GST return Status",
              style: TextStyle(
                color: Colors.grey,
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          TextField(
            controller: Get.find<MainPageController>().searchBar,
            decoration: InputDecoration(
              border: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              filled: true,
              fillColor: lightFontColor,
              hintText: "Ex. 07A52A7CCXC",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: Get.width * 0.9,
            height: Get.height * 0.075,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: mainThemeColor,
                ),
                onPressed: () {
                  Get.find<MainPageController>().fetchData();
                },
                child: Text("Search")),
          ),
        ],
      ),
    );
  }
}
