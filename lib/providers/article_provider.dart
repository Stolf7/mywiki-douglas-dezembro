import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleProvider extends ChangeNotifier {
  final List<Article> _articles = [];

  List<Article> get articles => _articles;

  void addArticle(Article article) {
    _articles.add(article);
    notifyListeners();
  }
}
