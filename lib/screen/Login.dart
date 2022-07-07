import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/widgets/custom_passwordField.dart';
import '../widgets/custom_textField.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Function testLogin = () {
      if (emailController.text == 'zul' && passwordController.value == '123') {
        Navigator.pushNamed(context, '/');
      }
    };
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome back you've ", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 5,
                ),
                Text("been missed!", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 50,
                ),
                customTextField(
                  placeholder: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputController: emailController,
                ),
                SizedBox(
                  height: 15,
                ),
                passwordTextField(
                    placeholder: 'Password',
                    inputController: passwordController),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/register'),
                  child: Text(
                    'Forgot password?',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text == 'zul' &&
                          passwordController.text == '123') {
                        Navigator.pushNamed(context, '/');
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        padding: EdgeInsets.all(12)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Or continue with'),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Image.asset(
                                'assets/googleIcon.webp',
                                fit: BoxFit.cover,
                                width: 20,
                                height: 40,
                              ), // <-- Use 'Image.asset(...)' here
                              SizedBox(width: 12),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Wrap(
                  children: [
                    Text('Not a member?'),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: Text(
                        ' Register now',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
