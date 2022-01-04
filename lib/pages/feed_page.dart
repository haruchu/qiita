import 'package:flutter/material.dart';
import 'package:qiita/services/qiita_client.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  void initState(){
    super.initState();
    QiitaClient.fetchArticle().then((articles) => {
      articles.forEach((article) => {
        print(article.title)
      })
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(  // SafeArea・・・充電とかの上と被らない
        child: Container(
          child: Text("feed page"),
        ),
      ),
    );
  }
}
