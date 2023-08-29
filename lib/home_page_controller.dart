import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends  GetxController{
  final textColor= Colors.white.obs;
  final textSize=15.0.obs;
  onHove(double currentSize,Color currentColor){
    if(currentSize==15){
       textSize(20);
    }else{
      textSize(15);
    }
    if(currentColor==Colors.white){
      textColor(Colors.amber);
    }else{
      textColor(Colors.white);
    }
  }
}