import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbhyvAPwor4ebDl-2xIeBYrKlNHJIrZnI",
            authDomain: "moraksys-4g5li5.firebaseapp.com",
            projectId: "moraksys-4g5li5",
            storageBucket: "moraksys-4g5li5.firebasestorage.app",
            messagingSenderId: "938297750935",
            appId: "1:938297750935:web:e2a7f0b8c2f3a9788640d2"));
  } else {
    await Firebase.initializeApp();
  }
}
