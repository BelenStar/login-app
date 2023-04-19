import 'package:flutter/material.dart';
import 'package:login_app/src/models/login_item.dart';

class LoginProvider extends ChangeNotifier {
  final List<LoginItem> _logUsers = [];

  void addUser(LoginItem user) {
    _logUsers.add(user);
    notifyListeners();
  }

  List<LoginItem> get users => _logUsers;
}
