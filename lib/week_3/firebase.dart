import 'package:cloud_firestore/cloud_firestore.dart';

/// https://firebase.google.com/docs/flutter/setup?platform=ios
/// https://firebase.flutter.dev/docs/overview/

// TODO: add auth repository

class UserRepository {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');

  Future<User?> getUser(String id) async {
    final result = await _users.doc(id).get();
    final data = result.data() as Map<String, dynamic>?;
    if (data != null) {
      return User(
        age: data['age'],
        name: data['name'],
        id: result.id,
      );
    } else {
      return null;
    }
  }

  Future<void> addUser({
    required String fullName,
    required String company,
    required int age,
  }) async {
    _users.add({
      'name': fullName,
      'company': company,
      'age': age,
    });
  }

  Future<void> updateUser(
    String id, {
    String? fullName,
    String? company,
    int? age,
  }) {
    return _users.doc(id).update({
      'name': fullName,
      'company': company,
      'age': age,
    });
  }

  Future<void> deleteUser(
    String id,
  ) {
    return _users.doc(id).delete();
  }
}

class User {
  final String name;
  final String age;
  final String id;

  User({
    required this.name,
    required this.age,
    required this.id,
  });
}

class BookRepository {
  final CollectionReference _books =
      FirebaseFirestore.instance.collection('books');

  Future<Book?> getBook(String id) async {
    final result = await _books.doc(id).get();
    final data = result.data() as Map<String, dynamic>?;
    if (data != null) {
      return Book(
        genre: data['genre'],
        author: data['author'],
        title: data['title'],
        id: result.id,
      );
    } else {
      return null;
    }
  }

  Future<void> addBook({
    required String title,
    required String author,
    required String genre,
  }) async {
    _books.add({
      'title': title,
      'author': author,
      'genre': genre,
    });
  }

  Future<void> updateBook(
    String id, {
    String? title,
    String? author,
    String? genre,
  }) {
    return _books.doc(id).update({
      'title': title,
      'author': author,
      'genre': genre,
    });
  }

  Future<void> deleteBook(
    String id,
  ) {
    return _books.doc(id).delete();
  }
}

class Book {
  final String title;
  final String author;
  final String genre;
  final String id;

  Book({
    required this.genre,
    required this.author,
    required this.title,
    required this.id,
  });
}
