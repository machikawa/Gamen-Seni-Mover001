import 'package:flutter/material.dart';
import 'package:scmover/main.dart';
import 'package:scmover/next_page.dart';

// ３ページ目
class ThirdPage extends StatefulWidget {

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("うーんこの"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextButton(
                  onPressed:  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NextPage(0)
                    ),
                  ) ,
                  child: Text("Prev")
              ),
              TextButton(
                  onPressed:  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyApp()
                    ),
                  ) ,
                  child: Text("first")
              ),
            ],
          ),
        ),
      )
    );
  }
}
