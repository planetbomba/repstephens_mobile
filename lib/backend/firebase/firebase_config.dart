import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD9eGXeDYodSWWrldHlKP2aJI5ywgy4hT8",
            authDomain: "repstephensil.firebaseapp.com",
            projectId: "repstephensil",
            storageBucket: "repstephensil.appspot.com",
            messagingSenderId: "55789245541",
            appId: "1:55789245541:web:c41b2610ba22ab790a228c"));
  } else {
    await Firebase.initializeApp();
  }
}
