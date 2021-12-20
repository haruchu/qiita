import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/top-img.webp"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 100.0,
                    ),
                    Container(child: Text("Qiita App",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.green[300],
                        fontFamily: "hikki",
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Container(child: Text("Yoh & Haru",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green[300],
                        fontFamily: "hikki",
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextButton(
                    onPressed: () { },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.green,
                      ),
                      child: Text(
                        "ログイン",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                      ),
                    TextButton(
                      onPressed: () { },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Text(
                          "ゲストでログイン",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
