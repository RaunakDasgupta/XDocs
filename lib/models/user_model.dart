
class UserModel {
  final String name;
  final String email;
  final String profilePic;
  final String uid;
  final String token;

  UserModel({ 
     required this.name,
     required this.email,
     required this.profilePic,
     required this.uid,
     required this.token,
});
  UserModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        profilePic= json['profilePic'],
        uid= json['uid'],
        token= json['token'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'profilePic':profilePic,
        'uid':uid,
        'token':token,
      };
}
