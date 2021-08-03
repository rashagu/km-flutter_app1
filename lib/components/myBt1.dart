import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';





// 传递一个对象
// 传递一个函数
class MyBt extends StatelessWidget {
  final MyBtContent myProps;
  MyBt({Key? key,required this.myProps,}):super(key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 14),
      ),
      onPressed: () {

      },
      child: Column(
        children: [
          Icon(Icons.phone),
          Text(myProps.text),
        ],
      ),
    );
  }
}

class MyBtContent {
  late final String text;

  MyBtContent(this.text);
}