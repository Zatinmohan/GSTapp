import 'package:flutter/material.dart';
import 'package:gstapp/View/MainScreen/SearchPage/searchMain.dart';

import 'package:gstapp/View/MainScreen/UpperContainer/upperPart.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        child: Column(
          children: [
            UpperPart(),
            SizedBox(height: 20.0),
            SearchMain(),
          ],
        ),
      ),
    );
  }
}
