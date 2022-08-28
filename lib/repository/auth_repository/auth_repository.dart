import 'package:cetta_course/model/models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepository {
  CollectionReference user = FirebaseFirestore.instance.collection('users');
  final auth = FirebaseAuth.instance;

  Future<bool> register({
    required String email,
    required String name,
    required String password,
    required DateTime birthDate,
    required String birthPlace,
  }) async {
    try {
      final authResult = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (authResult.user != null && auth.currentUser != null) {
        user.add({
          'id': auth.currentUser?.uid,
          'name': name,
          'birth_date': birthDate,
          'birth_place': birthPlace,
        });
        return true;
      }

      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut({
    required double latitude,
    required double longitude,
  }) async {
    try {
      await auth.signOut();
      return;
    } catch (e) {
      rethrow;
    }
  }

  Future<CettaUser> getProfile() async {
    try {
      final result = auth.currentUser;
      if (result != null) {
        final res = await user.doc(result.uid).get();

        return CettaUser(
          name: res['name'],
          birthDate: res['birth_date'],
          birthPlace: res['birth_place'],
          email: res['email'],
        );
      } else {
        throw 'error getting user';
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> isLogin() async {
    try {
      final result = auth.currentUser;
      if (result != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
