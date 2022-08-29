import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
String uid = "0LPhq6d0i58k2x9x4PUn";
Database();
  final CollectionReference brew = FirebaseFirestore.instance.collection("brews");
  Future updateuserdata(int xp) async{
    return await brew.doc(uid).set({
      "xp" : xp,
    }
    );
  }

  Stream<QuerySnapshot> get brews{
    return brew.snapshots();
  }
}