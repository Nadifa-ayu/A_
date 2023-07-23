import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{

  voidsignup(String email, String password) async {
    Uri url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCdo6P_NjZ_JlcKzMGyx3DPbcSL2VJ2h7s");

    
    var response = await http.post(
      url, 
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
      );

      print(json.decode(response.body));
  }
}