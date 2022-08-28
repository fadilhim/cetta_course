/// https://firebase.google.com/docs/flutter/setup?platform=ios
/// https://firebase.flutter.dev/docs/overview/
///
import 'package:cetta_course/model/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleRepository {
  CollectionReference article =
      FirebaseFirestore.instance.collection('articles');

  Future<List<Article>> getArticleList() async {
    try {
      final result = await article.get();

      return result.docs
          .map((e) => Article(
                title: e['title'],
                category: e['category'],
                date: e['date'],
                description: e['description'],
              ))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addArticle({
    required String title,
    required String category,
    required DateTime date,
    required String description,
  }) async {
    try {
      await article.add({
        'title': '',
        'category': '',
        'date': '',
        'description': '',
      });

      return;
    } catch (e) {
      rethrow;
    }
  }
}
