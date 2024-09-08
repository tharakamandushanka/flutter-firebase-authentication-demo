import 'package:firebase_authentication_demo/constants/colors.dart';
import 'package:firebase_authentication_demo/constants/description.dart';
import 'package:firebase_authentication_demo/constants/styles.dart';
import 'package:firebase_authentication_demo/services/auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Sign_In extends StatefulWidget {
  //function
  final Function toggle;
  const Sign_In({ super.key, required this.toggle });

  @override
  State<Sign_In> createState() => _Sign_InState();
}

// ignore: camel_case_types
class _Sign_InState extends State<Sign_In> {
  //ref for the  AuthServices class
  final AuthServices _auth = AuthServices();
  //form key
  final _formkey = GlobalKey<FormState>();
  // email password states
  String email ="";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text("SIGN IN",style: TextStyle(color: textLight),),
        elevation: 0,
        backgroundColor: bgBlack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:15,right:10),
          child: Column(
            children: [
              const Text(description, 
              style: descriptionStyle,
              ),Center(child: Image.asset('assets/man1.png',
              height: 150,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                  children: [
                    //email
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: textInputDecoration,
                      validator: (val)=> val?.isEmpty == true ? "Enter a valide email":null,
                      onChanged: (val){
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                    //password
                    const SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: textInputDecoration.copyWith(hintText: "Password"),
                      validator: (val)=> val!.length <6 ? "Enter a valide password " :null,
                      onChanged: (val){
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    //googel
                    const SizedBox(
                      height: 20,
                    ),

                    //error 
                    Text(error,style: const TextStyle(color: Colors.red),),

                    const Text("Login with social accounts",style: descriptionStyle
                  ),
                    GestureDetector(
                      //sing in  with googel 
                      onTap: () {
                        
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/google2.png',height: 50,),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    //register
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text(
                        "Do not have an account? ",
                       style: descriptionStyle,
                       ),
                       const SizedBox(
                        width: 10,
                       ),
                       GestureDetector(
                        // go to the register page
                        onTap: () {
                          widget.toggle();
                          
                        },
                         child: const Text("REGISTER",
                         style: TextStyle(
                           color:mainBlue,fontWeight: FontWeight.w600
                         ),),
                       )
                
                      ],
                    ),
                    
                    //button
                    const SizedBox(
                      height: 20,),
                    GestureDetector(
                      //methode for login user
                      onTap: () async {
                        dynamic result =await _auth.signInUsingEmailAndPassword(email, password);

                        if(result == null){

                          setState(() {
                            error ="Cloud not signin with those credentials";
                          });

                        }
                        
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(color: bgBlack,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2,color: mainYellow)
                        ),
                        child: const Center(child:  Text("LOG IN",
                        style: TextStyle(
                          color: Colors.white,fontWeight:FontWeight.w500),
                          ),
                          ),
                      ),
                    ),
                    //anony
                    SizedBox(height: 10,),
                      GestureDetector(
                      //methode for login user as anony
                      onTap: ()async {
                        await _auth.signInAnonymous();
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(color: bgBlack,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2,color: mainYellow)
                        ),
                        child: const Center(child:  Text("LOG AS GUEST",
                        style: TextStyle(
                          color: Colors.white,fontWeight:FontWeight.w500),
                          ),
                          ),
                      ),
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      )
    );
  }
}

// ElevatedButton(onPressed: () async {
//         dynamic result = await _auth.signInAnonymous();
//         if (result == Null){
//           print("error in sign in anonymous");
//         }else{
//           print("signed in anon");
//           print(result.uid);
//         }
//       }, child: const Text("Sign in Anonymously")),