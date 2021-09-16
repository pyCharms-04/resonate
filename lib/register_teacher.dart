import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resonate/login_student.dart';
import 'package:resonate/login_teacher.dart';
import 'constants.dart';
import 'global_variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:resonate/register_student.dart';

class Main extends StatelessWidget {
  // const Main({Key? key}) : super(key: key);
  Future<Widget> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var first_name = prefs.getString('first_name');
    // ignore: avoid_print
    print(first_name);
    runApp(
        MaterialApp(home: first_name == null ? const LoginTeacher() : const LoginStudent()));
    return Container();

  }

  @override
  Widget build(BuildContext context) {
    return const LoginTeacher();
  }
}
class RegisterTeacher extends StatefulWidget {
  const RegisterTeacher({Key? key}) : super(key: key);

  @override
  State<RegisterTeacher> createState() => _RegisterTeacherState();
}

class _RegisterTeacherState extends State<RegisterTeacher> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final user = FirebaseAuth.instance.currentUser();

  void getCurrentUser() async {
    final FirebaseUser User = await user;
    Variables.currentEmail = User.email;
    // Similarly we can get email as well
    //final uemail = user.email;
    print(Variables.currentEmail);
    //print(uemail);
  }

  String _email = "";
  String _firstname = "";
  String _lastname = "";
  String _password = "";
  String _confirmpassword = "";
  final _auth = FirebaseAuth.instance;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/register_teacher.png'),
                  fit: BoxFit.contain),
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50, top:170),
                    child: TextField(
                        onChanged: (value) {
                          _firstname = value;
                        },
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        decoration:
                        kInputDecoration.copyWith(hintText: "First name", fillColor: Colors.white, filled: true)),
                  ),
                  const SizedBox
                    (
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextField(
                        onChanged: (value) {
                          _lastname = value;
                        },
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        decoration:
                        kInputDecoration.copyWith(hintText: "Last name", fillColor: Colors.white, filled: true)),
                  ),
                  const SizedBox
                    (
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextField(
                        onChanged: (value) {
                          _email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start,
                        decoration:
                        kInputDecoration.copyWith(hintText: "Email", fillColor: Colors.white, filled: true)),
                  ),
                  const SizedBox
                    (
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      //controller: _userPasswordController,
                      onChanged: (value) {
                        _password = value;
                      },
                      style: const TextStyle(),
                      obscureText: !_passwordVisible,
                      decoration: kInputDecoration.copyWith(
                        hintText:
                        "Password", //This will obscure text dynamically
                        // Here is key idea
                        suffixIcon: IconButton(
                            icon: IconTheme(
                              data: const IconThemeData(
                                  color: Colors.white),
                              child: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }
                          // Update the state i.e. toogle the state of passwordVisible variable

                        ),
                          fillColor: Colors.white, filled: true
                      ),
                    ),
                  ),
                  const SizedBox
                    (
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextField(
                        style: const TextStyle(),
                        onChanged: (value) {
                          _confirmpassword = value;
                        },
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        decoration:
                        kInputDecoration.copyWith(
                            hintText: "Confirm Password", fillColor: Colors.white, filled: true)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 0.0),
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff415D5F),
                            Color(0xff4E7575),
                            Color(0xff2E5B5B)
                          ],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}