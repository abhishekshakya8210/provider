import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loginprovider with ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  login(String username, String password) async {
    try {
      http.Response response = await http.post(
        Uri.parse('https://dummyjson.com/user/login'),
        body: {
          'username': username,   // 🔹 email ki jagah username
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print('successfully');
        loading = false;   // 🔹 setter call sahi tarike se
      } else {
        print('error');
        loading = false;
      }
    } catch (e) {
      print('error: $e');
      loading = false;
    }
  }
}
