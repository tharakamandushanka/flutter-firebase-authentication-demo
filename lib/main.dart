import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/firebase_options.dart';
import 'package:firebase_authentication_demo/models/UserModel.dart';
import 'package:firebase_authentication_demo/screen/wrapper.dart';
import 'package:firebase_authentication_demo/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return StreamProvider<UserModel?>.value(
     initialData:UserModel(uid: ""),
     value:AuthServices().user,child: 
   const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Wrapper(),
   ),);
}
}