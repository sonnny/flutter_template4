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
