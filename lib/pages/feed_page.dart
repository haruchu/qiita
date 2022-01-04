import 'package:flutter/material.dart';
import 'package:qiita/model/article.dart';
import 'package:qiita/services/qiita_client.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late Future<List<Article>> articles;

  @override
  void initState(){
    super.initState();
    articles = QiitaClient.fetchArticle();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(  // SafeArea・・・充電とかの上と被らない
        child: Container(
          child: FutureBuilder(
            future: articles,
            builder: (BuildContext context, AsyncSnapshot snapshot){
              List<Widget> children = [];
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  children = [
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index){
                        return Container(
                          child: Text(snapshot.data[index].title),
                        );
                      }),
                    )
                  ];

                }else{
                  children = <Widget>[
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Error: ${snapshot.error}'),
                    )
                  ];
                }
              }else{
                children = const <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Awaiting result...'),
                  )
                ];
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              );
            }

          ),
        ),
      ),
    );
  }
}
