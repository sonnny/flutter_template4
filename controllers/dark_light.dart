/******************************
 * controllers/dark_light.dart
 *****************************/

import 'package:get/get.dart';

class DarkLight {
  var dark = 'OFF'.obs;
  toggle() => dark.value = (dark.value == 'OFF')
    ? 'ON' 
    : 'OFF';}
  
/**************************************
 * end of controllers/dark_light.dart
 **************************************/
