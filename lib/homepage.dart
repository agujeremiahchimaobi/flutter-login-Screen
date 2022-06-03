import 'package:flutter/material.dart';
import 'package:loginscreen/loginpage.dart';
import 'package:loginscreen/signuppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset('images/mylogo.jpg')),
          intro(),
          const SizedBox(
            height: 100.0,
          ),
          getStarted(),
        ],
      ),
    );
  }

  Widget intro() {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
        'Welcome to a world of possibilities',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 35.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget getStarted() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(32.0),
        color: Colors.white,
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          minWidth: MediaQuery.of(context).size.width / 1.2,
          child: const Text(
            'Get Started',
            style: TextStyle(color: Colors.red, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
