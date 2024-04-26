import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'product_form_screen.dart';
import 'product_list_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAqCWl1FmoM5Nq7ku_7siZqnQUdYv3XWBE",
        authDomain: "flutter-firebase-ff30e.firebaseapp.com",
        projectId: "flutter-firebase-ff30e",
        storageBucket: "flutter-firebase-ff30e.appspot.com",
        messagingSenderId: "523521391104",
        appId: "1:523521391104:web:09e1512b718257ee8036e5"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventario de Tienda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductFormScreen(),
    );
  }
}
