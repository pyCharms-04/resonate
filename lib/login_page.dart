import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/resonate_login.png'),
                  fit: BoxFit.contain
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 255.0, left: 20.0),
                    child: Text(
                      'Student',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, right: 100.0),
                    child: IconButton(
                      icon: const Icon(Icons.double_arrow),
                      color: Colors.black,
                      iconSize: 75.0,
                      onPressed: (){
                        Navigator.pushNamed(context, '/LoginStudent');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 250),
                    child: IconButton(
                      icon: const Icon(Icons.keyboard_arrow_left_outlined),
                      color: Colors.black,
                      iconSize: 100.0,
                      onPressed: ()
                    {
                      Navigator.pushNamed(context, '/LoginTeacher');
                    },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 68.0, left: 75.0),
                    child: Text(
                      'Teacher',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
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