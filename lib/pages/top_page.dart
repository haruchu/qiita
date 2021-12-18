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
                      height: 130.0,
                    ),
                    Container(child: Text("Qiita App",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                      ),
                    )),
                    Container(child: Text("Yoh Haru",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ))
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextButton(onPressed: () { }, child: Text("ログイン", style: TextStyle(color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),

                      ),
                    ),
                    TextButton(onPressed: () { }, child: Text("ゲストでログイン", style: TextStyle(color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
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
