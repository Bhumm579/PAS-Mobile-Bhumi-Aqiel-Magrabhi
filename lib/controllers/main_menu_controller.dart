import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/feat_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';

class MainMenuController extends GetxController {
  final selectedIndex = 0.obs;

  final List<Widget> listPages = [HomePage(), FeatPage(), ProfilePage()];

  void gantiTab(int index) {
    selectedIndex.value = index;
  }
}
