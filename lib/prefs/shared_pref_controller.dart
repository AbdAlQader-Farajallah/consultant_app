import 'package:consultant_app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys {token }

class SharedPrefController {
  static final SharedPrefController _instance = SharedPrefController._();

  SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required  createUser user}) async {
    await _sharedPreferences.setString(
        PrefKeys.token.toString(), 'Bearer ' + user.token);
  }

  String get token =>
      _sharedPreferences.getString(PrefKeys.token.toString()) ?? '';

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
