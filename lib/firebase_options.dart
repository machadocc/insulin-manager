import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // Configuração para Web
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyCAufK0pXbl2YdX9gqepIomGnxS6jWAs7c",
    authDomain: "insulin-manager-app.firebaseapp.com",
    projectId: "insulin-manager-app",
    storageBucket: "insulin-manager-app.appspot.com",
    messagingSenderId: "509163642435",
    appId: "1:509163642435:web:xxxxxxxxxxxxxxxxxx", // Substitua pelo App ID Web se disponível
    measurementId: "G-XXXXXXXXXX", // Opcional
  );

  // Configuração para Android
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyCAufK0pXbl2YdX9gqepIomGnxS6jWAs7c",
    appId: "1:509163642435:android:87ac511bcfe469b871bef6",
    messagingSenderId: "509163642435",
    projectId: "insulin-manager-app",
    storageBucket: "insulin-manager-app.appspot.com",
  );

  // Configuração para iOS (adicione se criar o app iOS no Firebase)
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyCAufK0pXbl2YdX9gqepIomGnxS6jWAs7c",
    appId: "1:509163642435:ios:xxxxxxxxxxxxxxxxxx", // Substitua pelo App ID iOS
    messagingSenderId: "509163642435",
    projectId: "insulin-manager-app",
    storageBucket: "insulin-manager-app.appspot.com",
    iosBundleId: "com.unidavi.insulinmanager", // Bundle ID iOS
  );
}
