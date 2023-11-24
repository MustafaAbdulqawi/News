import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articleModel});
  final List<ArticleModel> articleModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleModel.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: NewsTile(
              articleModel: articleModel[index],
            ),
          );
        },
      ),
    );
  }
}
