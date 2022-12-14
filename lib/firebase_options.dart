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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBCicUum1YqJt57MgnQw_EuX7NI0Wj_W1s',
    appId: '1:425188450242:web:3de41293bef394fae6805b',
    messagingSenderId: '425188450242',
    projectId: 'foodapp-dc154',
    authDomain: 'foodapp-dc154.firebaseapp.com',
    storageBucket: 'foodapp-dc154.appspot.com',
    measurementId: 'G-2ZKJR36X7V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGUW_ojav8q4d0xPQhjYFlXXIYuKRSbbY',
    appId: '1:425188450242:android:9185534a770283a9e6805b',
    messagingSenderId: '425188450242',
    projectId: 'foodapp-dc154',
    storageBucket: 'foodapp-dc154.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwbk8B8BSMtFzaA_w3J1m7VXuQoxyNDVw',
    appId: '1:425188450242:ios:f7c1324d66d8e7a1e6805b',
    messagingSenderId: '425188450242',
    projectId: 'foodapp-dc154',
    storageBucket: 'foodapp-dc154.appspot.com',
    androidClientId: '425188450242-mmkp0u6cmuo6qt6sk701kkb0u4gvv893.apps.googleusercontent.com',
    iosClientId: '425188450242-uihgie0qi1jer11nmdibn81e2ufbtntk.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodapp',
  );
}
