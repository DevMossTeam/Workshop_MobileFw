class User {
  int id;
  String fullname;
  String username;
  String email;
  String password;
  String phone;
  String address;
  String gender;
  String birthdate;

  User({
    required this.id,
    required this.fullname,
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.gender,
    required this.birthdate,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fullname": fullname,
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
      "address": address,
      "gender": gender,
      "birthdate": birthdate,
    };
  }
}
