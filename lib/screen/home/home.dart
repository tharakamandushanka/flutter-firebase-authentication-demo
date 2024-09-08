import 'package:firebase_authentication_demo/constants/colors.dart';
import 'package:firebase_authentication_demo/constants/description.dart';
import 'package:firebase_authentication_demo/services/auth.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({ super.key });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // create a obj from AuthService
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          
          backgroundColor: bgBlack,
         actions: [
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(bgBlack),
            ),
            onPressed: ()async { 
              await _auth.signOut();

          },
           child: const Icon(Icons.logout),
          )
         ],
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const Text("HOME",style: TextStyle(
                  color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800
                ),
                ),
                const SizedBox(height: 20,
                ),
                const Text(description,textAlign: TextAlign.center ,style: TextStyle(color: textLight),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Image.asset(
                    'assets/man1.png',
                    height: 200,)
                    ),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}