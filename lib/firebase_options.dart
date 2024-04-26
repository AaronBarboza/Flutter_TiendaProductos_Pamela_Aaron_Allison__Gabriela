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
    apiKey: 'AIzaSyAqCWl1FmoM5Nq7ku_7siZqnQUdYv3XWBE',
    appId: '1:523521391104:web:09e1512b718257ee8036e5',
    messagingSenderId: '523521391104',
    projectId: 'flutter-firebase-ff30e',
    authDomain: 'flutter-firebase-ff30e.firebaseapp.com',
    storageBucket: 'flutter-firebase-ff30e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9HAa5NWQ8C69FPefRtP8NxSFohPNG_Xs',
    appId: '1:523521391104:android:3af79c10cd48a1058036e5',
    messagingSenderId: '523521391104',
    projectId: 'flutter-firebase-ff30e',
    storageBucket: 'flutter-firebase-ff30e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMmq2XaIQx3CxWyPJVYR1skS2CeDeTR_0',
    appId: '1:523521391104:ios:90d348c07b87e6bb8036e5',
    messagingSenderId: '523521391104',
    projectId: 'flutter-firebase-ff30e',
    storageBucket: 'flutter-firebase-ff30e.appspot.com',
    iosBundleId: 'com.example.flutterListaproductos',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMmq2XaIQx3CxWyPJVYR1skS2CeDeTR_0',
    appId: '1:523521391104:ios:90d348c07b87e6bb8036e5',
    messagingSenderId: '523521391104',
    projectId: 'flutter-firebase-ff30e',
    storageBucket: 'flutter-firebase-ff30e.appspot.com',
    iosBundleId: 'com.example.flutterListaproductos',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAqCWl1FmoM5Nq7ku_7siZqnQUdYv3XWBE',
    appId: '1:523521391104:web:33f629e2ab3dd2318036e5',
    messagingSenderId: '523521391104',
    projectId: 'flutter-firebase-ff30e',
    authDomain: 'flutter-firebase-ff30e.firebaseapp.com',
    storageBucket: 'flutter-firebase-ff30e.appspot.com',
  );
}
