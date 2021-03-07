import 'dart:convert';

class Child {
  String uid;
  String fname;
  String lname;
  int age;
  String gender;
  String sport;
  String group;
  double endurance;
  double disciline;
  double presence;
  Child({
    this.uid,
    this.fname,
    this.lname,
    this.age,
    this.gender,
    this.sport,
    this.group,
    this.endurance,
    this.disciline,
    this.presence,
  });

  Child copyWith({
    String uid,
    String fname,
    String lname,
    int age,
    String gender,
    String sport,
    String group,
    double endurance,
    double disciline,
    double presence,
  }) {
    return Child(
      uid: uid ?? this.uid,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      sport: sport ?? this.sport,
      group: group ?? this.group,
      endurance: endurance ?? this.endurance,
      disciline: disciline ?? this.disciline,
      presence: presence ?? this.presence,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fname': fname,
      'lname': lname,
      'age': age,
      'gender': gender,
      'sport': sport,
      'group': group,
      'endurance': endurance,
      'disciline': disciline,
      'presence': presence,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Child(uid: $uid, fname: $fname, lname: $lname, age: $age, gender: $gender, sport: $sport, group: $group, endurance: $endurance, disciline: $disciline, presence: $presence)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Child &&
        o.uid == uid &&
        o.fname == fname &&
        o.lname == lname &&
        o.age == age &&
        o.gender == gender &&
        o.sport == sport &&
        o.group == group &&
        o.endurance == endurance &&
        o.disciline == disciline &&
        o.presence == presence;
  }

  factory Child.fromMap(Map<String, dynamic> map, String documentId) {
    if (map == null) return null;

    return Child(
      uid: documentId,
      fname: map['fname'],
      lname: map['lname'],
      age: map['age'],
      gender: map['gender'],
      sport: map['sport'],
      group: map['group'],
      endurance: map['endurance'],
      disciline: map['disciline'],
      presence: map['presence'],
    );
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        fname.hashCode ^
        lname.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        sport.hashCode ^
        group.hashCode ^
        endurance.hashCode ^
        disciline.hashCode ^
        presence.hashCode;
  }
}
