import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/dataModels/Child.dart';
import 'package:flutter_application_1/dataModels/CurrentUser.dart';
import 'package:flutter_application_1/services/firestore_path.dart';
import 'package:flutter_application_1/services/firestore_service.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart' as quiver;

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

/*
This is the main class access/call for any UI widgets that require to perform
any CRUD activities operation in Firestore database.
This class work hand-in-hand with FirestoreService and FirestorePath.

Notes:
For cases where you need to have a special method such as bulk update specifically
on a field, then is ok to use custom code and write it here. For example,
setAllshowComplete is require to change all shows item to have the complete status
changed to true.

 */
class FirestoreDatabase {
  FirestoreDatabase();

  final _firestoreService = FirestoreService.instance;
/**
 * You must re configure favourite, watchingNow and wished list to get wanted data from generale show path
 * 
 * adding specific episode to favourite not only a show!
 */
  //Method to set a Show as Favourite

  Future<void> initDatabaseAccess() async {
    //Set cache size to unlimitted
    await Firebase.initializeApp().whenComplete(() async {
      FirebaseFirestore.instance.settings =
          Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
    });
  }

  Stream<Map<String, String>> descriptionStream() =>
      _firestoreService.documentStream(
        path: FirestorePath.clubDetails(),
        builder: (data, documentId) => data,
      );

  Stream<CurrentUser> userStream({@required String userId}) =>
      _firestoreService.documentStream(
        path: FirestorePath.userData(userId),
        builder: (data, documentId) => CurrentUser.fromMap(data, documentId),
      );

  Stream<Child> childStream({@required String childId}) =>
      _firestoreService.documentStream(
        path: FirestorePath.child(childId),
        builder: (data, documentId) => Child.fromMap(data, documentId),
      );

  Stream<List<Child>> childrenStream() => _firestoreService.collectionStream(
      path: FirestorePath.children(),
      builder: (data, documentId) => Child.fromMap(data, documentId));

  Future<bool> addChild(
      {@required CurrentUser user, @required Child child}) async {
    return await _firestoreService.addArrayElement(
        documentPath: FirestorePath.userData(user.uid),
        arrayName: "children",
        arrayMaximumLength: 40,
        elements: List<String>.filled(1, child.uid));
  }

  Future<void> updateChild({@required Child child}) async {
    return await _firestoreService.setData(
        data: child.toMap(), path: FirestorePath.child(child.uid));
  }

  Future<Child> createChild({@required Child child}) async {
    child.uid = await _firestoreService.addData(
        collectionPath: FirestorePath.children(), data: child.toMap());
    return child;
  }

  Future<CurrentUser> createUser({@required CurrentUser user}) async {
    user.uid = await _firestoreService.addData(
        collectionPath: FirestorePath.users(), data: user.toMap());
    return user;
  }
}
