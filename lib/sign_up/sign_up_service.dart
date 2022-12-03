import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:smartpool/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String email, String password) async {
    Uri uri = Uri.https(Routes.urlSignUp, "/");
    http.Response response = await http.post(
      uri,
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    print(response.body);
  }
}
