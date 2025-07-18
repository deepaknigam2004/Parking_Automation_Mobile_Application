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
    apiKey: 'AIzaSyBCABuMQNkd4wI34WyddTec1aVeOyy-x0A',
    appId: '1:237807469480:web:9e175a6a89e8fb3900539d',
    messagingSenderId: '237807469480',
    projectId: 'my-project-ded22',
    authDomain: 'my-project-ded22.firebaseapp.com',
    storageBucket: 'my-project-ded22.firebasestorage.app',
    measurementId: 'G-RKSJYHNPQY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNWocr7UwQ4EqWbLgJLKAPmm3QAjN-Ad0',
    appId: '1:237807469480:android:de5d7435ef36e05800539d',
    messagingSenderId: '237807469480',
    projectId: 'my-project-ded22',
    storageBucket: 'my-project-ded22.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD32WLc7-YYZuT8A9f-L-FIDs6JxDV_tJE',
    appId: '1:237807469480:ios:d52a3391b707ebce00539d',
    messagingSenderId: '237807469480',
    projectId: 'my-project-ded22',
    storageBucket: 'my-project-ded22.firebasestorage.app',
    iosBundleId: 'com.example.minorProject',
  );
}
