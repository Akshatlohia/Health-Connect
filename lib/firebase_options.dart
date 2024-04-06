// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB508sKCQyRKF4U9HVeB2KWF46WvMV3Bkg',
    appId: '1:700652668810:web:8c9ba9e075799d990aea73',
    messagingSenderId: '700652668810',
    projectId: 'health-connect-a264a',
    authDomain: 'health-connect-a264a.firebaseapp.com',
    storageBucket: 'health-connect-a264a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1bdfsbKFlKtRnzTR0PwmW08NY7N20ktY',
    appId: '1:700652668810:android:d2f092ca3ebb19830aea73',
    messagingSenderId: '700652668810',
    projectId: 'health-connect-a264a',
    storageBucket: 'health-connect-a264a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrKBMUvr-Z0hdXTj6vTRs0uAaqfjocZsM',
    appId: '1:700652668810:ios:6bd8359cddab2f390aea73',
    messagingSenderId: '700652668810',
    projectId: 'health-connect-a264a',
    storageBucket: 'health-connect-a264a.appspot.com',
    iosBundleId: 'com.example.healthConnect',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrKBMUvr-Z0hdXTj6vTRs0uAaqfjocZsM',
    appId: '1:700652668810:ios:0e06ef23c572d2bc0aea73',
    messagingSenderId: '700652668810',
    projectId: 'health-connect-a264a',
    storageBucket: 'health-connect-a264a.appspot.com',
    iosBundleId: 'com.example.healthConnect.RunnerTests',
  );
}