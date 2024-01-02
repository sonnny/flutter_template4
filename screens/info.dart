/**********************
 * screens/info.dart
 *********************/
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
@override Widget build(BuildContext bc){
return Scaffold(appBar: AppBar(title: Text('Info')),
body: Center(child: Column(children:[

Text('This should have information about the demo program.'),
SizedBox(height:30.0),
Text('I will usually have some raspberry pi pico connected to flutter.'),
SizedBox(height:15.0),
Text('Pico connected thru Bluetooth BLE or Classic'),
Text('Pico connected thru ble module HM-19'),
Text('Pico connected thru OTG cable')

])));}}
 
/******* end screens/info.dart ********/
