import 'package:flutter/material.dart';

import 'pages/MyPage.dart';
void main( ) {
  runApp(CounterApp());
  
}
class CounterApp extends StatelessWidget {
const CounterApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyPage(),
    );
  }
}