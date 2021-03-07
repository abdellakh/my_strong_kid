import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*
This class represent all possible CRUD operation for Firestore.
It contains all generic implementation needed based on the provided document
path and documentID,since most of the time in Firestore design, we will have
documentID and path for any document and collections.
 */
class FirestoreService {
  FirestoreService._();
  static final instance = FirestoreService._();

  Future<void> disableNetwork() async {
    await FirebaseFirestore.instance.disableNetwork();
    print("Network disabled");
  }

  Future<void> enableNetwork() async {
    await FirebaseFirestore.instance.enableNetwork();
    print("Network enabled");
  }

  Future<void> setData({
    @required String path,
    @required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    final reference = FirebaseFirestore.instance.doc(path);
    print('$path: $data');
    await reference.set(data);
  }

  Future<String> addData({
    @required String collectionPath,
    @required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    final DocumentReference newDoc =
        FirebaseFirestore.instance.collection(collectionPath).doc();
    await newDoc.set(data);
    return newDoc.id;
  }

  Future<bool> addArrayElement(
      {@required String documentPath,
      @required String arrayName,
      @required int arrayMaximumLength,
      @required List<dynamic> elements}) async {
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.doc(documentPath).get();
    try {
      if (snapshot.data() == null) {
        await FirebaseFirestore.instance
            .doc(documentPath)
            .set({arrayName: FieldValue.arrayUnion(elements)});
        return true;
      }

      final array_length = snapshot.data()[arrayName]?.length ?? 0;

      if (array_length <= arrayMaximumLength) {
        await FirebaseFirestore.instance
            .doc(documentPath)
            .update({arrayName: FieldValue.arrayUnion(elements)});
        return true;
      } else {
        //When the limit is reached, we'll delete the oldest element of the array.
        //This implementation supposes that elements.length == 1 !!
        String firstElement = snapshot.data()[arrayName][0];
        await FirebaseFirestore.instance.doc(documentPath).update({
          arrayName: FieldValue.arrayRemove([firstElement])
        });
        await FirebaseFirestore.instance
            .doc(documentPath)
            .update({arrayName: FieldValue.arrayUnion(elements)});
        return true;
      }
    } catch (err) {
      print(err);
      return false;
    }
  }

  ///Add array element if user did not reach limit
  Future<bool> deleteArrayElement(
      {@required String documentPath,
      @required String arrayName,
      @required List<String> elements}) async {
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.doc(documentPath).get();

    if (snapshot.data() == null) {
      return true;
    } else {
      await FirebaseFirestore.instance
          .doc(documentPath)
          .update({arrayName: FieldValue.arrayRemove(elements)});
      return true;
    }
  }

  Future<void> bulkSet({
    @required String path,
    @required List<Map<String, dynamic>> datas,
    bool merge = false,
  }) async {
    final reference = FirebaseFirestore.instance.doc(path);
    final batchSet = FirebaseFirestore.instance.batch();

//    for()
//    batchSet.

    print('$path: $datas');
  }

  Future<void> deleteData({@required String path}) async {
    final reference = FirebaseFirestore.instance.doc(path);
    print('delete: $path');
    await reference.delete();
  }

/**
 * Get a stream of lists of elements from a collection of firebase documents
 * 
 * builder: a function to execute on each element on the returned list.
 * executeBeforeSorting: a function to execute before sorting the resulting list.
 * sort: a function to sort the resulting list before pushing it to the stream
 * 
 */
  Stream<List<T>> collectionStream<T>(
      {@required String path,
      @required T builder(Map<String, dynamic> data, String documentID),
      Query queryBuilder(Query query),
      int sort(T lhs, T rhs),
      void executeBeforeSorting(List<T> result)}) {
    Query query = FirebaseFirestore.instance.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final Stream<QuerySnapshot> snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map((snapshot) => builder(snapshot.data(), snapshot.id))
          .where((value) => value != null)
          .toList();
      if (executeBeforeSorting != null) {
        executeBeforeSorting(result);
      }
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }

  Stream<T> documentStream<T>({
    @required String path,
    @required T builder(Map<String, dynamic> data, String documentID),
  }) {
    final DocumentReference reference = FirebaseFirestore.instance.doc(path);
    final Stream<DocumentSnapshot> snapshots = reference.snapshots();
    return snapshots.map((snapshot) => builder(snapshot.data(), snapshot.id));
  }

  ///Get data from cache
  ///
  ///
  Stream<List<T>> cachedCollectionStream<T>({
    @required String path,
    @required T builder(Map<String, dynamic> data, String documentID),
    Query queryBuilder(Query query),
    int sort(T lhs, T rhs),
  }) {
    Query query = FirebaseFirestore.instance.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final Stream<QuerySnapshot> snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map((snapshot) => builder(snapshot.data(), snapshot.id))
          .where((value) => value != null)
          .toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }
}
