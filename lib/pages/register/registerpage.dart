import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_app/pages/register/loginpage.dart';
import 'package:planets_app/pages/widgets/extensions.dart';
import 'package:planets_app/pages/widgets/widgets.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';

  chechregister() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Map user = {'name': name, 'email': email, 'password': password};
      Navigator.of(context).pop(user);
    }
  }

  String? namevalidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Isminigzni kirting !';
    }
    return null;
  }

  String? emailvalidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Emailingizni kirting !';
    } else if (!value.contains('@') ||
        !value.substring(value.indexOf('@')).contains('.')) {
      return 'Emailingizni tog`ri kirg`izing';
    }
    return null;
  }

  String? passvalidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'parolingizni kirting !';
    }
    if (value.length < 8) {
      return 'Parolingiz 8 taga teng yokiyda kop bolish kerak !';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Loginpage();
                        },
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                ),
                13.height(),
                Text(
                  "Let's",
                  style: GoogleFonts.poppins(
                      height: 0.9,
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Start",
                  style: GoogleFonts.poppins(
                      height: 0.9,
                      fontSize: 63,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                350.height(),
                TextFormField(
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      name = newValue;
                    }
                  },
                  validator: namevalidator,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffix: SvgPicture.asset(
                      'assets/icons/nameicons.svg',
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Your name',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextFormField(
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      email = newValue;
                    }
                  },
                  onChanged: (value) {
                    emailvalidator(value);
                  },
                  validator: emailvalidator,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextFormField(
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      password = newValue;
                    }
                  },
                  obscureText: true,
                  obscuringCharacter: '*',
                  onChanged: (value) {
                    passvalidator(value);
                  },
                  validator: passvalidator,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.lock_outline_rounded,
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
                    chechregister();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
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
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Column(
                          children: [
                            Terms(),
                            ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                },
                                child: Text('OK'))
                          ],
                        ),
                      ));
                    },
                    child: const Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
