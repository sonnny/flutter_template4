/****************
 * main.dart
 ***************/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import './screens/home.dart';

void main(){runApp(const MyApp());}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  
  @override Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Home());}}
      
/********* end of main.dart ************/
