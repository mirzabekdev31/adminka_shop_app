class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? profileImg='';

  UserModel({this.id,required this.name, required this.email,required this.password,this.profileImg});

  UserModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        name = data['fullName'],
        email = data['email'],
        password = data['password'],
        profileImg=data['profileImg'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'profileImg':profileImg
    };
  }
}
