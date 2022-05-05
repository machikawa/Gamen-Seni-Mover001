/* 3-1. ボタン */

import 'package:flutter/material.dart';
import 'next_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // すてーとふるうぃじぇっとのクラスでやり直すので消す
//  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ボタンとスタイルと遷移を練習する",
      home: Scaffold(
        appBar: AppBar(
          title: Text("すたいらー"),
        ),
        body: Counter() ,
      ),
      // ルートの定義
      routes:<String, WidgetBuilder>{
        '/home': (BuildContext context) => Counter(),
//        '/nextPage': (BuildContext context) => NextPage(_counter),
      }
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  // Private
  int _count = 0 ;

  // ボタン押下時
  void _buttonPressed() {
    setState(() {
      _count++;
      print(_count);
    });
  }

  // 2爪のボタンを押下させたとき。
  void _moveButtonPuressed() {
    //Navigator.pushNamed(context, '/nextPage');
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=>
            NextPage(_count)
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex:3),
            Text(
              // count が Int なので toString() を使うか、ダブクオの中で $変数　のように読む
              //"$count",
              _count.toString(),
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 200,
              ),
            ),
            // Flatbutton は deprecated
            TextButton(
              onPressed: _buttonPressed ,
              // テキストボタンのカラー付はかくもめんどい。
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
              child: Text(
                "数値プラスワン",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            // スペースを作るもの
            Spacer(flex:1),
            TextButton(
              onPressed: _moveButtonPuressed ,
              // テキストボタンのカラー付はかくもめんどい。
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
              child: Text(
                "画面遷移じゃ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Spacer(flex:2),
          ],
        ),
      ),
    );
  }
}


