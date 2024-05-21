import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/mainpages/homepage.dart';
import 'package:planets_app/pages/register/registerpage.dart';

import 'package:planets_app/pages/widgets/extensions.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final formkey = GlobalKey<FormState>();
  Map? user;
  String usererror = '';
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  login() {
    if (user == null) {
      usererror = 'Bunday foydlanuchi topilmadi iltimos royhatan o`ting';
      setState(() {});
    } else {
      if (user!['email'] == emailcontroller.text &&
          user!['password'] == passwordcontroller.text) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) {
              return Homepage(user!['name']);
            },
          ),
        );
        if (formkey.currentState!.validate()) {}
      }
    }
  }

  String? emailvalidator(String? value) {
    if (user!['email'] != emailcontroller.text) {
      return 'Emailingiz tog`ri kelmayapti';
    }
    return null;
  }

  String? passwordvalidator(String? value) {
    if (user!['password'] != passwordcontroller.text) {
      return 'parolingiz tog`ri kelmayapti';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.all(51),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login/sixandseven.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.2)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
              ),
              13.height(),
              Text(
                'Welcome Back',
                style: GoogleFonts.poppins(
                    height: 0.9,
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                usererror,
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              TextFormField(
                validator: emailvalidator,
                controller: emailcontroller,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Email address',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextFormField(
                validator: passwordvalidator,
                controller: passwordcontroller,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              35.height(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 23),
                ),
                onPressed: () {
                  login();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log In',
                      style: GoogleFonts.poppins(
                        height: 0.9,
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    10.width(),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              17.height(),
              Center(
                child: TextButton(
                  onPressed: () async {
                    user = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Registerpage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Create account',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
