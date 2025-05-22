import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class FirestoreService {
  final CollectionReference _users = FirebaseFirestore.instance.collection('person');

  Future<void> createUser(UserModel user) {
    return _users.add(user.toMap());
  }

  Stream<List<UserModel>> getUsers() {
    return _users.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => UserModel.fromMap(doc.data() as Map<String, dynamic>, doc.id)).toList()
    );
  }

  Future<UserModel?> getUserById(String id) async {
    final doc = await _users.doc(id).get();
    if (doc.exists) {
      return UserModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }
    return null;
  }




  Future<void> updateUser(UserModel user) {
    return _users.doc(user.id).update(user.toMap());
  }

  Future<void> deleteUser(String id) {
    return _users.doc(id).delete();
  }
}
