import 'package:flutter/material.dart';
import 'package:loginscreen/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height/1.5,
          child: Padding(padding: const EdgeInsets.all(36.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  logoField(),
                  const SizedBox(
                    height: 30.0,
                  ),

                  userNameField(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  passwordField(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  loginButton(),

                  const SizedBox(
                    height: 30.0,
                  ),
                  or(),

                  const SizedBox(
                    height: 30.0,
                  ),
                  signUpText(),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget logoField() {
    return const Text('WELCOME',
      style: TextStyle(fontSize: 30.0,
        color: Colors.red,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget userNameField() {
    return TextField(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Username',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      style: const TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      ),
    );
  }

  Widget loginButton() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.red,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: const Text(
          'LOGIN',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget or(){
    return const Text("Don't have an Account?",
      style: TextStyle(
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget signUpText(){
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()),);
      },
      child: const Text('Sign up ',
          style: TextStyle(
          fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 20.0
      ),
      ),
    );
  }
}
