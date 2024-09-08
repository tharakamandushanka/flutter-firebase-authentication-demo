import 'package:flutter/material.dart';
import 'package:firebase_authentication_demo/screen/authentication/login.dart';
import 'package:firebase_authentication_demo/screen/authentication/register.dart';

class Authenticate extends StatefulWidget {
   const Authenticate({ super.key });

  @override
  State<Authenticate> createState() => _AuthenticateState();
}
class _AuthenticateState extends State<Authenticate> {

  bool singinPage = true;

  //toggel pages
  void switchPages(){
    setState(() {
      singinPage =! singinPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (singinPage == true){
      return Sign_In(toggle:switchPages);
    }
    else{
      return Register(toggle:switchPages);
    }
  }
}