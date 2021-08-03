import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/components/myBt1.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: MyStatefulWidget(),
      localizationsDelegates: [],
    ),
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: MySimpText1(myTextContent: 'title',),
                          padding: EdgeInsets.only(bottom: 8),
                        ),
                        MySimpText1(myTextContent: 'subTitle',),
                      ],
                    )
                ),
                Icon(Icons.star,color: Colors.red[500], size: 14,),
                MySimpText1(myTextContent: '41',),
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.only(left: 32, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyBt(myProps: MyBtContent('w')),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle( fontSize: 14 ),
                  ),
                  onPressed: (){
                    print('123');
                  },
                  child: Column(
                    children: [
                      Icon(Icons.alarm),
                      Text('Route'),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle( fontSize: 14 ),
                  ),
                  onPressed: (){
                    print('123');
                  },
                  child: Column(
                    children: [
                      Icon(Icons.toc),
                      Text('Share'),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}


// 传递简单的字符串
class MySimpText1 extends StatelessWidget{
  final String myTextContent;
  MySimpText1({Key? key,required this.myTextContent, String? myTextContent2}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(myTextContent, style: TextStyle(color: Colors.black, fontSize: 14,decoration: TextDecoration.none));
  }
}

// 传递一个对象
class MyText1 extends StatelessWidget{
  final TextContent myTextContent;
  MyText1({Key? key,required this.myTextContent}):super(key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(myTextContent.text, style: TextStyle(color: Colors.black, fontSize: 12,decoration: TextDecoration.none));
  }

}

class TextContent {
  late final String text;
  TextContent(this.text);
}