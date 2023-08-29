import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final textColor = Colors.white.obs;
  final textSize = 15.0.obs;
  final List<bool> navbarTextsValue = List.filled(3, false).obs;
  onTextHover(int index) {
  navbarTextsValue[index]=!navbarTextsValue[index];
  }

 
}
