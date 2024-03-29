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
    apiKey: 'AIzaSyDmJG4pIQiv66pKuklG4zgnK_O5W2HqBs4',
    appId: '1:380805618409:web:404a836912ccb84e15ae78',
    messagingSenderId: '380805618409',
    projectId: 'mitch-sd',
    authDomain: 'mitch-sd.firebaseapp.com',
    storageBucket: 'mitch-sd.appspot.com',
    measurementId: 'G-SD7JKTRKZY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQM48H7A11p6P8Vt-Al9rGWGo4xGMpW4Q',
    appId: '1:380805618409:android:6d49f75b4ecbe06715ae78',
    messagingSenderId: '380805618409',
    projectId: 'mitch-sd',
    storageBucket: 'mitch-sd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBi4o-b-c4R9Ozn_QUCPI1x7L11lysatfA',
    appId: '1:380805618409:ios:aa3681e1bb36931d15ae78',
    messagingSenderId: '380805618409',
    projectId: 'mitch-sd',
    storageBucket: 'mitch-sd.appspot.com',
    iosBundleId: 'com.example.mitch',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBi4o-b-c4R9Ozn_QUCPI1x7L11lysatfA',
    appId: '1:380805618409:ios:3fb66966ca1e300d15ae78',
    messagingSenderId: '380805618409',
    projectId: 'mitch-sd',
    storageBucket: 'mitch-sd.appspot.com',
    iosBundleId: 'com.example.mitch.RunnerTests',
  );
}
