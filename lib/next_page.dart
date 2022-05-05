import 'package:flutter/material.dart';
import 'third_page.dart';

class NextPage extends StatefulWidget {

  // 受けの変数
  int result = 0 ;
  //
  NextPage(this.result);


  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "結果発表！！",
              ),
              Text(
                  widget.result.toString(),
                 style: TextStyle(
                   color: Colors.blue,
                   fontSize: 30,
                 ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context) ,
                // テキストボタンのカラー付はかくもめんどい。
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                child: Text(
                  "戻るよ〜",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ThirdPage()
                    ),
                ) ,
                // テキストボタンのカラー付はかくもめんどい。
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                child: Text(
                  "次や",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
