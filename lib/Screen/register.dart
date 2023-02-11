// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store/Screen/Login.dart';
import 'package:store/Screen/home.dart';
import 'package:store/utility/String.dart';
import 'package:store/utility/colors.dart';

class Register extends StatelessWidget {
  Register({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Register() async {
      try {
        FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email.text, password: pass.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 5, 1),
                        child: Container(
                          height: 50,
                          width: 150,
                          child: Image.asset("assets/Images/logo2.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 5, 1),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              color: Color(colorconst.primary_color),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 5, 1),
                        child: Text(
                          "Masukan NISN dan password untuk",
                          style: TextStyle(
                              color: Color(colorconst.primary_color),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 2, 5, 15),
                        child: Text(
                          "memulai belajar sekarang",
                          style: TextStyle(
                              color: Color(colorconst.primary_color),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 2, 5, 15),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            controller: email,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              label: Text("Email"),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 5, 15),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            controller: pass,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              label: Text("Password"),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 5, 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Register();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: Color(colorconst.primary_color)),
                          child: Text("Register"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 5, 15),
                    child: Text("Alraeday have An Account?"),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(1, 10, 1, 15),
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Color(colorconst.primary_color)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
