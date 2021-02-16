import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fprojecta/models/userdata.dart';
import 'package:fprojecta/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection reference

  final CollectionReference userinfoCollection =
      Firestore.instance.collection('Userdata');

  Future updateUserData(String name, String address, String age,
      String nationality, String healthconditions) async {
    return await userinfoCollection.document(uid).setData({
      'name': name,
      'address': address,
      'age': age,
      'nationality': nationality,
      'healthconditions': healthconditions,
    });
  }

  List<user> _userdataListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return user(
        name: doc.data['name'] ?? '',
        address: doc.data['address'] ?? '',
        age: doc.data['age'] ?? 0,
        nationality: doc.data['nationality'] ?? '',
        healthconditions: doc.data['healthconditions'] ?? '',
      );
    }).toList();
  }

  //userData from snapshop

  Stream<List<user>> get userData {
    return userinfoCollection.snapshots().map(_userdataListFromSnapshot);
  }
}
