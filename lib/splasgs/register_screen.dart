import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/home_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120.0,
              ),
              Image.asset('assets/freed.png'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle:
                            new TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xEEFE6969),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        prefixIconColor: Color(0xEEFE6969),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle:
                            new TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderSide: BorderSide(width: 1,color: Color(0xEEFE6969),),
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
                        labelText: 'Phone',
                        labelStyle:
                            new TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Color(0xEEFE6969),
                      ),
                      obscureText: true,
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
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: ' Confirm Password',
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
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Creat Acount',
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
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an acount'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Login in',
                          style: TextStyle(
                            color: Color(0xEEFE6969),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
