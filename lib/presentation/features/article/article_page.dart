import 'package:cetta_course/presentation/features/article/article_detail_page.dart';
import 'package:cetta_course/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  final list = [
    Article(
      title: 'Elon Musk on how to learn and adapt faster',
      content: 'Elon Musk on how to learn and adapt faster',
      imageUrl: 'https://cdn.motor1.com/images/mgl/nOlNy/s3/elon-musk.jpg',
      category: 'How to be better',
      createdDate: DateTime.now(),
    ),
    Article(
      title: 'Minimalism: Things You Should Know',
      content: 'Minimalism is how I reduce distraction in my life so I can do'
          ' more of what matters',
      imageUrl: 'https://i.insider.com/5c757285eb3ce809fb61bd22?width=700',
      category: 'Life At',
      createdDate: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 36),
        children: [
          Text(DateFormat('EEEE, d MMM yyyy').format(DateTime.now())),
          const SizedBox(height: 12),
          const Text('Welcome Back,\nJennifer'),
          const SizedBox(height: 18),
          for (final article in list)
            ArticleCard(
              article: article,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ArticleDetailPage(article: article)),
                );
              },
            ),
        ],
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
    this.onTap,
  }) : super(key: key);

  final Article article;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: CettaColor.shadowColor,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7.5,
                      vertical: 5,
                    ),
                    child: Text(article.category),
                  ),
                  const SizedBox(height: 6),
                  Text(article.title),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const CircleAvatar(maxRadius: 6),
                      const SizedBox(width: 6),
                      Text(DateFormat('d MMM').format(article.createdDate)),
                    ],
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                article.imageUrl,
                fit: BoxFit.cover,
                height: 100.0,
                width: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String content;
  final String imageUrl;
  final String category;
  final DateTime createdDate;

  Article({
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.category,
    required this.createdDate,
  });
}
