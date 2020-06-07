import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  // collection reference
  final CollectionReference brewCollection =
      Firestore.instance.collection('brews');
}
