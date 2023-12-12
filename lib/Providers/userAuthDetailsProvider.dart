import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dms/Providers/userDataProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

// import 'firestore';
class UserAuth extends ChangeNotifier {
  UserAuth() {
    loadLoggedUser();
  }
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage firestore = FirebaseStorage.instance;
  late UserData user;

  Future<void> SignIn(
      {UserData? userData, Function? onFail, Function? onSuccess}) async {
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
          email: userData!.email, password: userData.password);
    } catch (e) {
      onFail!("Follwoing error has occured: $e");
    }
  }

  Future<void> signUp(
      {UserData? userData, Function? onFail, Function? onSuccess}) async {
    try {
      final UserCredential result = await auth.createUserWithEmailAndPassword(
          email: userData!.email, password: userData.password);
      userData.id = result.user!.uid;
      await userData.saveUserInfo();
    } catch (e) {
      onFail!('Error with following: $e');
    }
  }

  Future<void> loadLoggedUser({User? firebaseUser}) async {
    final User currentUser = firebaseUser ?? await auth.currentUser!;
    if (currentUser != null) {
      final DocumentSnapshot documentUser = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      user = UserData.fromDocument(documentUser);
      notifyListeners();
    }
  }
}
