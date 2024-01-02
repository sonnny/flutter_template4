/*********************
 * screens/home.dart
 ********************/

import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:get/get.dart';    
import '../screens/demo.dart';
import '../screens/info.dart';
import '../screens/source.dart';
import '../screens/template.dart';
      
final TextStyle myStyle = TextStyle(fontSize:20,fontWeight:FontWeight.bold);
String dialogContent = 'Info - info about demo \nDemo - execute demo \nSource - source of demo\nTemplate - source of this app\ngithub.com_sonnny_flutter_template 4';
      
class Home extends StatelessWidget {@override  
Widget build(BuildContext context) {  
return Scaffold(appBar: AppBar(title: Text(" ")),
      
body: GridView.count(crossAxisCount: 3, crossAxisSpacing: 4.0, //physics: ScrollPhysics(), 
mainAxisSpacing: 8.0, children: List.generate(choices.length, (index) { 
                    
return InkWell(onTap:() {switch(choices[index].title){
  case 'Info':     Get.to(Info());        break;
  case 'Demo':     Get.to(Demo());        break;
  case 'Source':   Get.to(Source());      break;
  case 'Template': Get.to(Template());    break;
  case 'Exit':     SystemNavigator.pop(); break;
    
  case 'Dark': Get.isDarkMode
    ? Get.changeTheme(ThemeData.light())
    : Get.changeTheme(ThemeData.dark()); break;
      
  case 'Help':
    showDialog(context:context,
    builder:(ctx) => AlertDialog(title: Text('Flutter Template'),
    content: Text(dialogContent),
    actions: <Widget>[
      TextButton(onPressed:(){Navigator.of(ctx).pop();},
        child: Text('Ok'))]));
    break;}},
      
  child: SelectCard(choice: choices[index]));})));}}  
      
class Choice {const Choice({required this.title, required this.icon});  
  final String title;  
  final IconData icon;}  
      
const List<Choice> choices = const <Choice>[  
const Choice(title: 'Info', icon: Icons.info_outline),  
const Choice(title: 'Demo', icon: Icons.run_circle_outlined),  
const Choice(title: 'Source', icon: Icons.source_outlined),  
const Choice(title: 'Template', icon: Icons.newspaper_outlined),  
const Choice(title: 'Help', icon: Icons.help_center),  
const Choice(title: 'Test', icon: Icons.cancel),  
const Choice(title: 'Test', icon: Icons.cancel),  
const Choice(title: 'Dark', icon: Icons.light_mode_outlined),
const Choice(title: 'Exit', icon: Icons.exit_to_app)];  
      
class SelectCard extends StatelessWidget {  
  const SelectCard({Key? key, required this.choice}) : super(key: key);  
  final Choice choice;  
    
@override Widget build(BuildContext context) {  
return Card(color: RandomColorModel().getColor(),
  child: Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center,  
  children: <Widget>[Expanded(child: Icon(choice.icon, size:50.0)),  
  Text(choice.title, style: myStyle)])));}}
    
class RandomColorModel {Random random = Random();
Color getColor() {
  return Color.fromARGB(random.nextInt(300), random.nextInt(300),
  random.nextInt(300), random.nextInt(300));}}  

/******* end screens/home.dart ********/
