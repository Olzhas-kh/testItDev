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
    apiKey: 'AIzaSyA-CiEJSlsKnCuiw7OB3ubgcIHxeQoOFWM',
    appId: '1:417148429882:web:434f0d5cdd85ba55bc7703',
    messagingSenderId: '417148429882',
    projectId: 'test-it-dev',
    authDomain: 'test-it-dev.firebaseapp.com',
    storageBucket: 'test-it-dev.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAarSRh_CdmaAjUi6EXpAmuJVtg7091wc0',
    appId: '1:417148429882:android:2506a020b6f6d3a4bc7703',
    messagingSenderId: '417148429882',
    projectId: 'test-it-dev',
    storageBucket: 'test-it-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgnDorkUlbulTfOoECivpW60jNKxVVWXQ',
    appId: '1:417148429882:ios:5cd00a6a704012a1bc7703',
    messagingSenderId: '417148429882',
    projectId: 'test-it-dev',
    storageBucket: 'test-it-dev.appspot.com',
    iosBundleId: 'com.example.testItDev',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgnDorkUlbulTfOoECivpW60jNKxVVWXQ',
    appId: '1:417148429882:ios:97cd5a4b3e112151bc7703',
    messagingSenderId: '417148429882',
    projectId: 'test-it-dev',
    storageBucket: 'test-it-dev.appspot.com',
    iosBundleId: 'com.example.testItDev.RunnerTests',
  );
}
