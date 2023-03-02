import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../helpers/helpers.dart';
import '../../models/user.dart';
import '../../prefs/shared_pref_controller.dart';
import '../api_settings.dart';

class AuthApiController with Helpers {
  Future<bool> register(BuildContext context,
      {required String email,
      required String name,
      required String password}) async {
    var url = Uri.parse(ApiSettings.register);
    var response = await http.post(url, headers: {
      HttpHeaders.authorizationHeader: SharedPrefController().token,
      HttpHeaders.acceptHeader: 'application/json'
    }, body: {
      'email': email,
      'name': name,
      'password': password,
      'password_confirmation': password,
    });
    if (response.statusCode == 201) {
      var jsonObject = jsonDecode(response.body)['token'];
      createUser user = createUser.fromJson(jsonObject);
      SharedPrefController().save(user: user);
      showSnackBar(
        context: context,
        message: 'it\'s ok',
      );
      return true;
    } else if (response.statusCode == 400) {
      showSnackBar(
        context: context,
        message: jsonDecode(response.body)['message'],
        error: true,
      );
    }
    return false;
  }

  //****************************************************************************

  Future<bool> login(BuildContext context,
      {required String email, required String password}) async {
    var url = Uri.parse(ApiSettings.login);
    var response = await http.post(url, body: {
      'email': email,
      'password': password,
    }, headers: {
      HttpHeaders.authorizationHeader: SharedPrefController().token,
      HttpHeaders.acceptHeader: 'application/json'
    });
    if (response.statusCode == 200) {
      //TODO: SHARED PREFERENCES - SAVE LOGGED IN USER DATA!!
      var jsonObject = jsonDecode(response.body)['user'];
      createUser user = createUser.fromJson(jsonObject);
      SharedPrefController().save(user: user);
      return true;
    } else if (response.statusCode == 400) {}
    return false;
  }
}
