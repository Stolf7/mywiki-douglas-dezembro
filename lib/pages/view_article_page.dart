import 'package:flutter/material.dart';
import '../models/article.dart';

class ViewArticlePage extends StatelessWidget {
  final Article article;

  const ViewArticlePage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(article.content),
      ),
    );
  }
}
