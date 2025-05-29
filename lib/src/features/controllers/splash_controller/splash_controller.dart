import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/welcome/welcome.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;
  final RxBool _dispose = false.obs;

  Future <void> startAnimation() async {
    try{
      await Future.delayed(Duration(milliseconds: 500));
      if(_dispose.value) return;
      animate.value = true;

  await Future.delayed(Duration(milliseconds: 3000));
  if(_dispose.value) return;
   Get.offAll(Welcome());

    }catch(e){
    debugPrint("Error animating the screen : $e");
  }
 }
}
