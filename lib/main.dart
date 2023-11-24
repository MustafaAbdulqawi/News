import 'package:flutter/material.dart';
import 'package:news_app2/views/home_views.dart';

void main(){
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Second News App",
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}
