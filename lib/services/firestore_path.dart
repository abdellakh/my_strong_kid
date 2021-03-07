/*
This class defines all the possible read/write locations from the Firestore database.
In future, any new path can be added here.
This class work together with FirestoreService and FirestoreDatabase.
 */

class FirestorePath {
  static String children() => 'children/';
  static String child(String uid) => 'children/$uid';
  static String userData(String uid) => 'users/$uid';
  static String users() => 'users/';

  static String clubDetails() => 'club/details';
}
