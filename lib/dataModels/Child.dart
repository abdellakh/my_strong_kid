import 'dart:convert';

class Child {
  String uid;
  String name;
  String group;
  double endurance;
  double disciline;
  double presence;
  Child({
    this.uid,
    this.name,
    this.group,
    this.endurance,
    this.disciline,
    this.presence,
  });

  Child copyWith({
    String uid,
    String name,
    String group,
    double endurance,
    double disciline,
    double presence,
  }) {
    return Child(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      group: group ?? this.group,
      endurance: endurance ?? this.endurance,
      disciline: disciline ?? this.disciline,
      presence: presence ?? this.presence,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'group': group,
      'endurance': endurance,
      'disciline': disciline,
      'presence': presence,
    };
  }

  factory Child.fromMap(Map<String, dynamic> map, String documentId) {
    if (map == null) return null;

    return Child(
      uid: documentId,
      name: map['name'],
      group: map['group'],
      endurance: map['endurance'],
      disciline: map['disciline'],
      presence: map['presence'],
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Child(uid: $uid, name: $name, group: $group, endurance: $endurance, disciline: $disciline, presence: $presence)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Child &&
        o.uid == uid &&
        o.name == name &&
        o.group == group &&
        o.endurance == endurance &&
        o.disciline == disciline &&
        o.presence == presence;
  }
}
