import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  UserData(
      {required this.email,
      required this.password,
      required this.id,
      required this.name});
  String id;
  String email;
  String password;
  String name;

  DocumentReference get firestoreRef =>
      FirebaseFirestore.instance.doc('users/$id');

  Future<void> saveUserInfo() async {
    await firestoreRef.set(toMap());
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email};
  }
}
