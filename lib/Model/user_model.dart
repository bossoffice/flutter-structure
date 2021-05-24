import 'dart:convert';

var userJsonString =
    "{\"username\": \"someemail\",\"email\": \"someemail.dev@dev.com\"}";
var userJson = jsonDecode(userJsonString);

// ignore: camel_case_types
class UserModel {
  String username;
  String email;

  UserModel({required this.username, required this.email});

  UserModel.fromJson(Map<String, dynamic> json)
      : username = json["username"],
        email = json["email"];

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
      };
}
