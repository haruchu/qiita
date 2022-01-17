import 'package:qiita/model/user.dart';

class Article {
  final String title;
  final String url;
  final User user;
  final String date;
  final int lgtm;

  Article({required this.title, required this.url, required this.user, required this.date, required this.lgtm});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      url: json['url'],
      user: User.fromJson(json['user']),
      date: json['created_at'],
      lgtm: json['likes_count'],
    );
  }
}