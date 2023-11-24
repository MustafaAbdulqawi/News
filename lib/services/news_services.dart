import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=265fb8dc2b254f53a2f642e2110fad9d&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
