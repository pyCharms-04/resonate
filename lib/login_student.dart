import 'package:flutter/material.dart';

class LoginStudent extends StatelessWidget {
  const LoginStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_student.png'),
                  fit: BoxFit.contain
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
              Padding(
              padding: const EdgeInsets.only(top: 280.0, left:218.0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 125, height: 30),
                    child: OutlinedButton(
                      child: const Text(
                          'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign:TextAlign.center),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280.0, left:77.0),
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff415D5F), Color(0xff4E7575), Color(0xff2E5B5B)],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Login',
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
        )
    );
  }
}
