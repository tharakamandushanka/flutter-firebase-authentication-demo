import 'package:firebase_authentication_demo/models/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_authentication_demo/screen/authentication/authenticare.dart';
import 'package:firebase_authentication_demo/screen/home/home.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
   //the user data that the provider proides this can be a user data or can be null 
   final user = Provider.of<UserModel?>(context);
   
   if(user == null){
    return Authenticate();
   }else{
    return Home();
   }


   
  }
}