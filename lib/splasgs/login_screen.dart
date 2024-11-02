import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/splasgs/forget_password.dart';
import 'package:flutter_application_4/navigation_buttom/navigation_bottom.dart';
import 'package:flutter_application_4/splasgs/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Image.asset('assets/freed.png'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        prefixIconColor: Color(0xEEFE6969),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            new TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Color(0xEEFE6969),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        ),
                        suffixIconColor: Color(0xEEFE6969),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ForgetPasswordScreen(), // الانتقال إلى شاشة نسيت كلمة المرور
                            ),
                          );
                        },
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xEEFE6969),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavigationBottom(),
                          ),
                        );
                      },
                      child: Text(
                        'Login in',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(40),
                        backgroundColor: Color(0xEEFE6969),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an acount',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xEEFE6969),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
