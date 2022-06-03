import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  personField(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  registerText(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  firstNameField(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  lastNameField(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  emailField(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  signUpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget personField() {
    return const Icon(
      Icons.person,
      size: 80.0,
      color: Colors.red,
    );
  }

  Widget registerText() {
    return const Text(
      'Register here',
      style: TextStyle(fontSize: 20.0),
    );
  }

  Widget firstNameField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'firstname',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }

  Widget lastNameField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'lastname',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'example@gmail.com',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }

  Widget signUpButton() {
    return Material(
      elevation: 5.0,
      color: Colors.red,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: () {},
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
