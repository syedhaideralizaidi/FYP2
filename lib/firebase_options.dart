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
    apiKey: 'AIzaSyDz2HUzAzRQCYlZOtU8qRu4X49UM5tYzm8',
    appId: '1:265075404070:web:6064329a222b344a5465e7',
    messagingSenderId: '265075404070',
    projectId: 'fir-reg-auth',
    authDomain: 'fir-reg-auth.firebaseapp.com',
    storageBucket: 'fir-reg-auth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDD9PmwnM6LoKaPXt6IiLbX6aJzKk8Rv34',
    appId: '1:265075404070:android:64e33900c09267375465e7',
    messagingSenderId: '265075404070',
    projectId: 'fir-reg-auth',
    storageBucket: 'fir-reg-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7Evv70qzn-Y1EDostLhlMIimTA5KfatA',
    appId: '1:265075404070:ios:9daa7d54a1d53e1c5465e7',
    messagingSenderId: '265075404070',
    projectId: 'fir-reg-auth',
    storageBucket: 'fir-reg-auth.appspot.com',
    iosClientId: '265075404070-36vi5j3suhnifnuv6ut1m3pjad474tj1.apps.googleusercontent.com',
    iosBundleId: 'com.saifullah.firebaeRegAuth',
  );
}