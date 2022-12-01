import 'package:shared_preferences/shared_preferences.dart';

class InAppPreferences {
  static SharedPreferences? _prefs;

  factory InAppPreferences() => InAppPreferences._internal();

  InAppPreferences._internal();

  Future<void> initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  String get serverPath => _prefs!.getString('server-path') ?? '';

  set serverPath(String serverPath) {
    _prefs!.setString('server-path', serverPath);
  }

  String get deviceToken => _prefs!.getString('device-token') ?? '';

  set deviceToken(String deviceToken) {
    _prefs!.setString('device-token', deviceToken);
  }
}
