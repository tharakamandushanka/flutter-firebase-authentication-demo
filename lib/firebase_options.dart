// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDzfU3v2OmVScpB1vp7gzAKDjc7I9xSYnY',
    appId: '1:923065093492:android:19055f4104d2062f35f021',
    messagingSenderId: '923065093492',
    projectId: 'iot-project-ecf15',
    databaseURL: 'https://iot-project-ecf15-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'iot-project-ecf15.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa-VWfBxCSZzCffmHqVk7tu-tgW6Y5mhs',
    appId: '1:923065093492:ios:d6ac72a074d1da7235f021',
    messagingSenderId: '923065093492',
    projectId: 'iot-project-ecf15',
    databaseURL: 'https://iot-project-ecf15-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'iot-project-ecf15.appspot.com',
    iosBundleId: 'com.example.firebaseAuthenticationDemo',
  );
}