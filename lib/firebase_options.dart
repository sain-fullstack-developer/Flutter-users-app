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
    apiKey: 'AIzaSyBUJmrzy6vKUU6HG7HFmxE_j7MjLoA-NMU',
    appId: '1:1015539356115:web:ce43d6fa744421cf221f26',
    messagingSenderId: '1015539356115',
    projectId: 'users-ola-app',
    authDomain: 'users-ola-app.firebaseapp.com',
    databaseURL: 'https://users-ola-app-default-rtdb.firebaseio.com',
    storageBucket: 'users-ola-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmpTg8gs1wDlj3GngeKto5mVfmL1xc9k4',
    appId: '1:1015539356115:android:e21a10713d7886dc221f26',
    messagingSenderId: '1015539356115',
    projectId: 'users-ola-app',
    databaseURL: 'https://users-ola-app-default-rtdb.firebaseio.com',
    storageBucket: 'users-ola-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVefc1zG0so69ypt6t_qavsqJ6xwLOdYA',
    appId: '1:1015539356115:ios:511b45db1575d2e6221f26',
    messagingSenderId: '1015539356115',
    projectId: 'users-ola-app',
    databaseURL: 'https://users-ola-app-default-rtdb.firebaseio.com',
    storageBucket: 'users-ola-app.appspot.com',
    iosClientId: '1015539356115-78s4ee0rvdpb7m01ik7dgp7nddmh9644.apps.googleusercontent.com',
    iosBundleId: 'com.google.firebase.presents.usersOlaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVefc1zG0so69ypt6t_qavsqJ6xwLOdYA',
    appId: '1:1015539356115:ios:42408174472e6113221f26',
    messagingSenderId: '1015539356115',
    projectId: 'users-ola-app',
    databaseURL: 'https://users-ola-app-default-rtdb.firebaseio.com',
    storageBucket: 'users-ola-app.appspot.com',
    iosClientId: '1015539356115-6npipn1faf1lkpkao7d3vs8cmr6qikh8.apps.googleusercontent.com',
    iosBundleId: 'com.google.firebase.presents.usersOlaApp.RunnerTests',
  );
}
