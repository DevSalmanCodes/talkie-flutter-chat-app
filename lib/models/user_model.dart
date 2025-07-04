class UserModel {
  final String username;
  final String email;
  final String uid;
  final String? profilePic;
  final String lastSeen;
  final bool isOnline;

  UserModel({
    required this.username,
    required this.email,
    required this.uid,
    required this.profilePic,
    required this.isOnline,
    required this.lastSeen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'uid': uid,
      'profilePic': profilePic,
      'isOnline': isOnline,
      'lastSeen': lastSeen,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
      profilePic: map['profilePic'] as String,
      isOnline: map['isOnline'] as bool,
      lastSeen: map['lastSeen'] as String,
    );
  }
}
