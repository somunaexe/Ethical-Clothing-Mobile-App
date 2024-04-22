import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDY5tGYgib5lGGhfC1fGL9gg200t6swf5s",
            authDomain: "bullfighter-v1-by0e3j.firebaseapp.com",
            projectId: "bullfighter-v1-by0e3j",
            storageBucket: "bullfighter-v1-by0e3j.appspot.com",
            messagingSenderId: "44699179471",
            appId: "1:44699179471:web:263821581bc5c8e523daba"));
  } else {
    await Firebase.initializeApp();
  }
}
