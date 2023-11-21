import 'dart:convert';

import 'package:car_service/model_class/signup_model.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<Details> createSignUpPage(
      String UserName, String Password, String Name, String PhoneNo) async {
    final http.Response response = await http.post(
        Uri.parse(
          'https://d1dd-117-196-29-183.ngrok.io/api/regsiter'
        ),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: <String, dynamic>{
          'UserName': UserName.trim(),
          'Password': Password.trim(),
          'Name': Name.trim(),
          'PhoneNo': PhoneNo.trim(),
          'Role': '2'
        });
    //print(response);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      print(response.statusCode);
      return Details.fromJson(json.decode(response.body));
    } else {
      print(response.statusCode);
      print(response.body);
      throw Exception('Registration failed!');
    }
  }

  Future<Details> createLoginPage(String UserName, String Password) async {
    final http.Response response = await http.post(
        Uri.parse('https://ee0d-117-196-29-183.ngrok.io/api/login'),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: <String, dynamic>{
          'UserName': UserName,
          'Password': Password
        });
    if (response.statusCode == 201) {
      return Details.fromJson(json.decode(response.body));
    } else {
      throw Exception(' Login failed!');
    }
  }
}
