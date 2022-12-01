
import 'package:flutter/material.dart';

abstract class AuthProvider extends ChangeNotifier {

  Future<bool> signIn(String username, String password);

  Future<void> logout();

  Future<String?> isAuthenticated();
}
