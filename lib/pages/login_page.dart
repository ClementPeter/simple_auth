import 'package:flutter/material.dart';
import 'package:simple_auth/components/my_textfield.dart';
import 'package:simple_auth/components/squareTile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //email controller
  final TextEditingController emailController = TextEditingController();

  //password controller
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              //logo
              const Icon(
                Icons.lock,
                size: 150,
              ),
              const SizedBox(height: 30),
              //text- welcome you've been missed
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),

              //username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email',
              ),
              const SizedBox(height: 30),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your email',
              ),
              // Row(children: [Text(for)],)
              const SizedBox(height: 10),

              const Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password ?'),
              ),
              const SizedBox(height: 25),

              //Button
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width * 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile('lib/images/apple.png'),
                  SizedBox(width: 50),
                  SquareTile('lib/images/google.png'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class SquareTile extends StatelessWidget {
//   const SquareTile(this.assetPath, {super.key});
//   final String assetPath;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey[200],
//       ),
//       child: Image.asset(
//         assetPath,
//         width: 50,
//       ),
//     );
//   }
// }

// class MyTextField extends StatelessWidget {
//   const MyTextField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//   });

//   final TextEditingController controller;
//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             width: 2,
//             color: Colors.white,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey.shade400),
//         ),
//         fillColor: Colors.grey.shade200,
//         filled: true,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: Colors.grey[500],
//         ),
//       ),
//     );
//   }
// }
