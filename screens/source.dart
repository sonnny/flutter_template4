/**************************
 * screens/source.dart
 *************************/
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:get/get.dart';
import '../controllers/dark_light.dart';

class Source extends StatelessWidget{
@override Widget build(BuildContext context) {
  
DarkLight dl = Get.put(DarkLight());

return Scaffold(
  appBar: AppBar(title: Text('Demo source'),
    actions: [IconButton(icon: Icon(Icons.lightbulb),
    onPressed: dl.toggle)]),
         
  body: Column(children:[Container(
    height: MediaQuery.of(context).size.height * 0.80,
    child: Obx(() => SyntaxView(
      code: code,
      syntax: Syntax.DART,
      syntaxTheme: (dl.dark.value == 'OFF')
        ? SyntaxTheme.ayuLight()
        : SyntaxTheme.monokaiSublime(),
      fontSize: 12.0,
      withZoom: true,
      withLinesCount: true,
      expanded: true))),],),);}}
                  
const String code = r"""

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

/******************************
 * screens/demo.dart
 *****************************/

import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
@override Widget build(BuildContext bc){
return Scaffold(appBar: AppBar(title: Text('Demo')),
body: Center(child: Column(children:[

SizedBox(height: 20.0),

Text('Some text for demo screen'),

SizedBox(height: 20.0),

ElevatedButton(onPressed:(){},
  child: Text('Button1')),
  
SizedBox(height: 20.0),

ElevatedButton(onPressed:(){},
  child: Text('button2'))

])));}}
    
/********* end screens/demo.dart *******/
/**************************
 * screens/source.dart
 *************************/
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:get/get.dart';
import '../controllers/dark_light.dart';

class Template extends StatelessWidget{
@override Widget build(BuildContext context) {
  
DarkLight dl = Get.put(DarkLight());

return Scaffold(
  appBar: AppBar(title: Text('Template source'),
    actions: [IconButton(icon: Icon(Icons.lightbulb),
    onPressed: dl.toggle)]),
         
  body: Column(children:[Container(
    height: MediaQuery.of(context).size.height * 0.80,
    child: Obx(() => SyntaxView(
      code: code,
      syntax: Syntax.DART,
      syntaxTheme: (dl.dark.value == 'OFF')
        ? SyntaxTheme.ayuLight()
        : SyntaxTheme.monokaiSublime(),
      fontSize: 12.0,
      withZoom: true,
      withLinesCount: true,
      expanded: true))),],),);}}

""";

/******** screens/source.dart ******/
