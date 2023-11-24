import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../views/details_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articleModel.image == null) {
          "";
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(
                  articleModel: articleModel,
                );
              },
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                articleModel.image ??
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Far.m.wikipedia.org%2Fwiki%2F%25D9%2585%25D9%2584%25D9%2581%3A33-%25D8%25B5%25D9%2588%25D8%25B1-%25D8%25AD%25D8%25B2%25D9%258A%25D9%2586%25D8%25A9-%25D8%25AE%25D9%2584%25D9%2581%25D9%258A%25D8%25A7%25D8%25AA-%25D8%25AD%25D8%25B2%25D9%258A%25D9%2586%25D9%2587-%25D9%2585%25D9%2583%25D8%25AA%25D9%2588%25D8%25A8-%25D8%25B9%25D9%2584%25D9%258A%25D9%2587%25D8%25A7-%25D8%25AA%25D8%25AD%25D9%2585%25D9%258A%25D9%2584-%25D8%25B5%25D9%2588%25D8%25B1%25D8%25AD%25D8%25B2%25D9%258A%25D9%2586%25D8%25A9-%25D9%2585%25D8%25B9-%25D8%25B9%25D8%25A8%25D8%25A7%25D8%25B1%25D8%25A7%25D8%25AA-%25D8%25A7%25D8%25AC%25D9%2585%25D9%2584-%25D8%25A7%25D9%2584%25D8%25B5%25D9%2588%25D8%25B1-%25D8%25A7%25D9%2584%25D8%25AD%25D8%25B2%25D9%258A%25D9%2586%25D8%25A9-%25D9%2585%25D8%25B9-%25D8%25A7%25D9%2584%25D8%25B9%25D8%25A8%25D8%25A7%25D8%25B1%25D8%25A7%25D8%25AA-%25D8%25A7%25D8%25AC%25D9%2585%25D9%2584-%25D8%25A7%25D9%2584%25D8%25B5%25D9%2588%25D8%25B1-%25D8%25A7%25D9%2584%25D8%25AD%25D8%25B2%25D9%258A%25D9%2586%25D8%25A9-%25D9%2584%25D9%2584%25D9%2581%25D8%25B1%25D8%25A7%25D9%2582-768x1024.jpg&psig=AOvVaw3A37Rxgx536ZIwOEGAnepf&ust=1700926386913000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPCPu9r63IIDFQAAAAAdAAAAABAE",
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    "assets/empty.png",
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              articleModel.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subTitle ?? "",
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
