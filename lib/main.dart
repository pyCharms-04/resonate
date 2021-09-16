import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_student.dart';
import 'login_teacher.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/LoginStudent': (context) => const LoginStudent(),
          '/LoginTeacher': (context) => const LoginTeacher(),
          //'/settings': (context) => SettingsPane(),
          //'/changeFont': (context) => FontChange(),
          //'/modeSwitch': (context) => ModeSwitch(),
          //'/changeFontSize': (context) => FontSizeModify(),
          //'/notesPage': (context) => Notes(),
        },
      ),
  );
}
// void main() => runApp(MyApp());

// // ignore: use_key_in_widget_constructors
// class MyApp extends StatelessWidget {
//   final routes = <String, WidgetBuilder>{
//     '/': (context) => const LoginPage(),
//     // HomePage.tag: (context) => HomePage(),
//     // RegisterPage.tag: (context) => RegisterPage(),
//     '/LoginTeacher': (context) => const LoginTeacher(),
//     '/LoginStudent': (context) => const LoginStudent(title: 'title',),
//   };

//  @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).requestFocus(FocusNode());
//       },
//       child: MaterialApp(
//           title: 'Attendance Portal',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: MaterialApp(
//             title: 'Login',
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(
//               primarySwatch: Colors.lightBlue,
//               fontFamily: 'Nunito',
//             ),
//             home: const LoginPage(),
//             routes: routes,
//           )),
//     );
//   }
// }