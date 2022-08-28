import 'package:cetta_course/presentation/features/article/article_page.dart';
import 'package:cetta_course/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleDetailPage extends StatefulWidget {
  const ArticleDetailPage({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.network(
                  widget.article.imageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
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
                      child: Text(widget.article.category),
                    ),
                    const SizedBox(height: 6),
                    Text(widget.article.title),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const CircleAvatar(maxRadius: 6),
                        const SizedBox(width: 6),
                        Text(DateFormat('d MMM')
                            .format(widget.article.createdDate)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(widget.article.content),
                  ],
                ),
              ),
            ],
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }
}
