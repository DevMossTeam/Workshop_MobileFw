// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int? userId;
  final String fullname;
  final String username;
  final String email;
  final String password;
  final String phone;
  final String address;
  final String gender;
  final String birthdate;
  User({
    this.userId,
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
    return <String, dynamic>{
      'userId': userId,
      'fullname': fullname,
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'address': address,
      'gender': gender,
      'birthdate': birthdate,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'] != null ? map['userId'] as int : null,
      fullname: map['fullname'].toString(),
      username: map['username'].toString(),
      email: map['email'].toString(),
      password: map['password'].toString(),
      phone: map['phone'].toString(),
      address: map['address'].toString(),
      gender: map['gender'].toString(),
      birthdate: map['birthdate'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
