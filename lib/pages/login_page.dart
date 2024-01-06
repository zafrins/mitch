import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mitch/components/button.dart';
import 'package:mitch/components/text_fieldd.dart';

class LoginPage extends StatefulWidget {
  final Function ()? onTap;
  const LoginPage({super.key, required this.onTap});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  //sign user in

  //try sign in
  void signIn () async {
    //show loading circle
    showDialog(context: context,
        builder: (context)=>const Center(
          child: CircularProgressIndicator(),
        ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);

      //pop loading circle
      if (context.mounted) Navigator.pop(context);

    } on FirebaseAuthException catch (e) {
      //pop loading circle
      Navigator.pop (context);
      displayMessage (e.code);
    }
  }

  //display a dialogue msg

  void displayMessage (String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea (
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column (
              children: [
                SizedBox (height: 50),
              //logo
              Icon(
                Icons.lock,
                size:100,
              ),

              const SizedBox(height:50),

              //welcome back msg
                 Text(
                  "Welcome to the app!",
                      style: TextStyle(
                       
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                 ),
                ),

             const SizedBox(height: 25),

              //email textfield
                MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(height: 20),

              //pw text
                MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(height: 20),

              //signin button

                MyButton(
                  onTap: signIn,
                    text: 'Sign in',
                ),

              const SizedBox(height: 30),
              //go to reg page
                 Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text ('Not a user? ',
                      style: TextStyle(

                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox (width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,

                    child: const Text  (
                      'Register here',
                      style: TextStyle(
                        fontSize: 20,

                        color: Colors.blue,
                      ),
                    ),
                    ),
                  ],
                )
            ],
            ),
          ),
        ),
      ),
      
    );
  }
}



