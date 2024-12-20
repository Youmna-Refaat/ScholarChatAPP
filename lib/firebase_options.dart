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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCDWQrCwz8Y45_q-dqKIU7qQL5Yy5zp3c4',
    appId: '1:129014090760:web:cfb7107af4088a16c415bd',
    messagingSenderId: '129014090760',
    projectId: 'scholarchatapp-a1c53',
    authDomain: 'scholarchatapp-a1c53.firebaseapp.com',
    storageBucket: 'scholarchatapp-a1c53.firebasestorage.app',
    measurementId: 'G-DP46VZQ1XQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAWKFTdIw24k9xjeipj6JzGHeyt4po9Eg',
    appId: '1:129014090760:android:1896cdb022f0a94bc415bd',
    messagingSenderId: '129014090760',
    projectId: 'scholarchatapp-a1c53',
    storageBucket: 'scholarchatapp-a1c53.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1-E8R4dE-yffPulvA3AKAz-iWnikekIA',
    appId: '1:129014090760:ios:5aee666b493a8d73c415bd',
    messagingSenderId: '129014090760',
    projectId: 'scholarchatapp-a1c53',
    storageBucket: 'scholarchatapp-a1c53.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1-E8R4dE-yffPulvA3AKAz-iWnikekIA',
    appId: '1:129014090760:ios:5aee666b493a8d73c415bd',
    messagingSenderId: '129014090760',
    projectId: 'scholarchatapp-a1c53',
    storageBucket: 'scholarchatapp-a1c53.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCDWQrCwz8Y45_q-dqKIU7qQL5Yy5zp3c4',
    appId: '1:129014090760:web:ea25a2f92c90f300c415bd',
    messagingSenderId: '129014090760',
    projectId: 'scholarchatapp-a1c53',
    authDomain: 'scholarchatapp-a1c53.firebaseapp.com',
    storageBucket: 'scholarchatapp-a1c53.firebasestorage.app',
    measurementId: 'G-9261K01NPB',
  );
}
