import 'package:flutter/material.dart';
import 'package:tirkeme11/models/top_news.dart';
import 'package:tirkeme11/services/fetch_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;

  Future<void> fetchNews() async {
    topNews = await TopNewsService().fetchTopNews();
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
    TopNewsService().fetchTopNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(child: Text(topNews!.status)),
    );
  }
}
