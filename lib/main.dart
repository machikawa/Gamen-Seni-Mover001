/* 3-1. ボタン */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ボタンとスタイルと遷移を練習する",
      home: Scaffold(
        appBar: AppBar(
          title: Text("すたいらー"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  // count が Int なので toString() を使うか、ダブクオの中で $変数　のように読む
                  //"$count",
                  count.toString(),
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 200,
                  ),
                ),
                // Flatbutton は deprecated
                TextButton(
                    onPressed: () {
                      count++;
                      print(count);
                    } ,
                  // テキストボタンのカラー付はかくもめんどい。
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                    child: Text(
                      "プラスワン",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

