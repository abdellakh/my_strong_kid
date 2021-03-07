import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:flutter_application_1/dataModels/Child.dart';

class CurrentUser {
  String uid;
  bool is_coach = false;
  String fname;
  String lname;
  String adress;
  String phone;
  String email;

  String about;
  List<Child> children;
  CurrentUser({
    this.uid,
    this.is_coach,
    this.fname,
    this.lname,
    this.adress,
    this.phone,
    this.email,
    this.about,
    this.children,
  });

  CurrentUser copyWith({
    String uid,
    bool is_coach,
    String fname,
    String lname,
    String adress,
    String phone,
    String email,
    String about,
    List<Child> children,
  }) {
    return CurrentUser(
      uid: uid ?? this.uid,
      is_coach: is_coach ?? this.is_coach,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      adress: adress ?? this.adress,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      about: about ?? this.about,
      children: children ?? this.children,
    );
  }

  void updateWith({@required CurrentUser updatedUserModel}) {
    this.uid = updatedUserModel.uid;
    this.is_coach = updatedUserModel.is_coach;
    this.fname = updatedUserModel.fname;
    this.lname = updatedUserModel.lname;
    this.email = updatedUserModel.email;
    this.adress = updatedUserModel.adress;
    this.phone = updatedUserModel.phone;
    this.about = updatedUserModel.about;
    this.children = updatedUserModel.children;
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'is_coach': is_coach,
      'fname': fname,
      'lname': lname,
      'adress': adress,
      'phone': phone,
      'email': email,
      'about': about,
      'children': children?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory CurrentUser.fromMap(Map<String, dynamic> map, String documentId) {
    if (map == null) return null;

    return CurrentUser(
      uid: documentId,
      is_coach: map['is_coach'],
      fname: map['fname'],
      lname: map['lname'],
      adress: map['adress'],
      phone: map['phone'],
      email: map['email'],
      about: map['is_coach'] ? map['about'] : null,
      children: map['is_coach']
          ? null
          : List<Child>.from(
              map['children']?.map((x) => Child(uid: x?.toString()))),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'CurrentUser(uid: $uid, is_coach: $is_coach, fname: $fname, lname: $lname, adress: $adress, phone: $phone, email: $email, about: $about, children: $children)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CurrentUser &&
        o.uid == uid &&
        o.is_coach == is_coach &&
        o.fname == fname &&
        o.lname == lname &&
        o.adress == adress &&
        o.phone == phone &&
        o.email == email &&
        o.about == about &&
        listEquals(o.children, children);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        is_coach.hashCode ^
        fname.hashCode ^
        lname.hashCode ^
        adress.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        about.hashCode ^
        children.hashCode;
  }
}
