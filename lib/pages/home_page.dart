import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/article_provider.dart';
import '../widgets/article_card.dart';
import 'add_article_page.dart';
import 'view_article_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = context.watch<ArticleProvider>().articles;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wiki App'),
      ),
      body: articles.isEmpty
          ? const Center(child: Text('No articles yet. Add one!'))
          : ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ArticleCard(
            article: article,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewArticlePage(article: article),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddArticlePage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
