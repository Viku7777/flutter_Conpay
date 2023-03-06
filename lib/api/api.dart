import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerApi {
  final _auth = LocalAuthentication();
  Future<bool> _isAv() async {
    return _auth.canCheckBiometrics;
  }

  Future<bool> usefinger() async {
    bool finger = await _isAv();
    if (!finger) return false;
    try {
      return _auth.authenticate(
          localizedReason: "Use Biometric to login account",
          options: const AuthenticationOptions(
              stickyAuth: true, useErrorDialogs: true));
    } on PlatformException catch (e) {
      return false;
    }
  }
}

String googleapikey = "AIzaSyD0ZEshzV3_wmlBZCfS3pHEytY3ZmGYOII";
