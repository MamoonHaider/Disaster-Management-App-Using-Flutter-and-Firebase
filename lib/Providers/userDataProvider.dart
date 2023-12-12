import 'dart:html';
import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  UserData(
      {required this.email,
      required this.password,
      required this.id,
      required this.name});

  UserData.fromDocument(DocumentSnapshot document) {
    Map<String, dynamic>? data = document.data() as Map<String, dynamic>?;

    if (data != null) {
      id = document.id;
      name = (data['name'] as String?) ?? "";
      email = (data['email'] as String?) ?? "";
      // password = (data['password'] as String?) ?? "";
      //     // Assuming 'password' is a field in your document
    } else {
      // Handle the case where data is null, depending on your requirements
      id = "";
      name = "";
      email = "";
      password = "";
    }
  }

  late String id;
  late String email;
  late String password;
  late String name;

  DocumentReference get firestoreRef =>
      FirebaseFirestore.instance.doc('users/$id');

  Future<void> saveUserInfo() async {
    await firestoreRef.set(toMap());
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email};
  }
}
